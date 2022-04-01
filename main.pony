use "buffered"
use "collections"
use "encode/base64"
use "files"
use "format"
use "net"
use "net_ssl"

use @printf[I64](f: Pointer[U8] tag)

primitive EnvVariables
  fun get(env: Env, var_name: String): String ? =>
    for vv in env.vars.values() do
      let v_v = vv.split("=", 0)

      try
        if v_v(0)? == var_name then
          return v_v(1)?
        end
      end
    end

    error

actor Main
  new create(env: Env) =>
    (let app_id, let app_secret) = try
      (EnvVariables.get(env, "APP_ID")?, EnvVariables.get(env, "APP_SECRET")?)
    else
      env.exitcode(1)
      env.err.print("Error: must provide APP_ID and APP_SECRET environment variables")
      return
    end

    let tcp_connect_auth = TCPConnectAuth(env.root)

    let file_auth = FileAuth(env.root)

    let cert_file_path = FilePath(file_auth, "/etc/ssl/cert.pem")
    
    // let sslctx = recover SSLContext .> set_client_verify(false) end
    let sslctx = try
      recover SSLContext .> set_authority(cert_file_path)? .> set_client_verify(true) end
    else
      env.err.print("problem setting up SSLContext")
      env.exitcode(1)
      return
    end

    let basic_auth: String = "Basic " + Base64.encode(app_id + ":" + app_secret)
    let host = "recurse.rctogether.com"
    let service = "443"
    let origin = "https://recurse.rctogether.com"

    let req: String = (recover iso """
GET /cable HTTP/1.1
Host: {{HOST}}
Authorization: {{AUTHORIZATION}}
User-Agent: curl/7.64.1
Accept: */*
Connection: Upgrade
Upgrade: websocket
Origin: {{ORIGIN}}
Sec-WebSocket-Key: SGVsbG8sIHdvcmxkIQ==
Sec-WebSocket-Version: 13

""".clone() end) .> replace("{{AUTHORIZATION}}", basic_auth) .> replace ("{{HOST}}", host) .> replace ("{{ORIGIN}}", origin) .> replace("\n", "\r\n")

    env.out.print(req)

    try
      TCPConnection(tcp_connect_auth, SSLConnection(ClientConnection(env.out, req), sslctx.client(host)?), host, service)
    else
      env.err.print("could not connect")
    end

class val Message
  let fin: Bool
  let opcode: U8
  let mask: Bool
  let masking_key: Array[U8] val
  let payload: Array[U8] val

  new val create(fin': Bool, opcode': U8, mask': Bool, masking_key': Array[U8] val, payload': Array[U8] val) =>
    fin = fin'
    opcode = opcode'
    mask = mask'
    masking_key = masking_key'
    payload = payload'

  fun render(writer: Writer) =>
    writer.u8((if fin then U8(0x80) else U8(0) end) or opcode)

    let sz = payload.size()
    
    if sz < 126 then
      writer.u8(if mask then U8(0x80) else U8(0) end or sz.u8())
    elseif sz <= 0xFFFF then
      writer.u8(if mask then U8(0x80) else U8(0) end or 126)
      writer.u16_be(sz.u16())
    else
      writer.u8(if mask then U8(0x80) else U8(0) end or 127)
      writer.u64_be(sz.u64())
    end

    if mask then
      try
        writer.u8(masking_key(0)?)
        writer.u8(masking_key(1)?)
        writer.u8(masking_key(2)?)
        writer.u8(masking_key(3)?)
      end
    end

    if mask then
      // Octet i of the transformed data ("transformed-octet-i") is the XOR of
      // octet i of the original data ("original-octet-i") with octet at index
      // i modulo 4 of the masking key ("masking-key-octet-j"):
      // 
      // j                   = i MOD 4
      // transformed-octet-i = original-octet-i XOR masking-key-octet-j

      let pl: Array[U8] trn = recover Array[U8](payload.size()) end

      for (i, v) in payload.pairs() do
        try
          pl.push(v xor masking_key(i % 4)?)
        end
      end

      writer.write(consume pl)
    else
      writer.write(payload)
    end
    
primitive MessageDecoder
  fun parse(rb: Reader): (Message | None) =>
    try
      // first see if we have a full message

      // | fin | rsv1 | rsv2 | rsv3 | opcode(4) |

      var pos: USize = 0
      
      let f_and_opcode = rb.peek_u8(pos)?
      let fin = (f_and_opcode and 0x80) > 0
      let opcode = f_and_opcode and 0x0F
      pos = pos + 1

      // | mask | payload len (7) |
      let mask_and_payload_len = rb.peek_u8(pos)?
      let mask = (mask_and_payload_len and 0x80) > 0
      let payload_len_1 = (mask_and_payload_len and 0x7F).u64()

      pos = pos + 1

      let payload_len_ext: U64 = match payload_len_1
      | 126 =>
        pos = pos + 2
        rb.peek_u16_be()?.u64()
      | 127 =>
        pos = pos + 8
        rb.peek_u64_be()?
      else
        0
      end

      let masking_key: U32 = if mask then
        pos = pos + 4
        rb.peek_u32_be()?
      else
        0
      end

      let expected_size = pos + payload_len_1.usize() + payload_len_ext.usize()

      @printf(("need size: " + expected_size.string() + ", actual size: " + rb.size().string() + "\n").cstring())

      if expected_size < rb.size() then
        return
      end
    end

    try
      // now get the message
      
      // | fin | rsv1 | rsv2 | rsv3 | opcode(4) |

      let f_and_opcode = rb.u8()?
      let fin = (f_and_opcode and 0x80) > 0
      let opcode = f_and_opcode and 0x0F

      // | mask | payload len (7) |
      let mask_and_payload_len = rb.u8()?
      let mask = (mask_and_payload_len and 0x80) > 0
      let payload_len_1 = (mask_and_payload_len and 0x7F).u64()

      let payload_len_ext: U64 = match payload_len_1
      | 126 => rb.u16_be()?.u64()
      | 127 => rb.u64_be()?
      else
        0
      end

      let masking_key: Array[U8] val = if mask then
        let o0 = rb.u8()?
        let o1 = rb.u8()?
        let o2 = rb.u8()?
        let o3 = rb.u8()?
        [o0; o1; o2; o3]
      else
        [0; 0; 0; 0]
      end

      let payload_size = payload_len_1.usize() + payload_len_ext.usize()

      @printf(("payload size: " + payload_size.string() + ", remaining size: " + rb.size().string() + "\n").cstring())


      let payload: Array[U8] val = rb.block(payload_len_1.usize() + payload_len_ext.usize())?

      return Message(fin, opcode, mask, masking_key, payload)
    end

    None
    
class MessageStateMachine
  var in_messages: Bool = false
  var messages_start: USize = 0
  var _reader: Reader = Reader

  new create() =>
    None

  fun ref apply(data: Array[U8] val): Array[Message] val =>
    _reader.append(data)
    if not in_messages then
      // looking for the sequence "\n\r\n\r" (0x0d, 0x0a, 0x0d, 0x0a)which should indicate the end of the HTTP response header
      try
        while true do
          if (_reader.u8()? == 0x0d) and (_reader.peek_u8()? == 0x0a) and (_reader.peek_u8(1)? == 0x0d) and (_reader.peek_u8(2)? == 0x0a) then
            in_messages = true
            _reader.block(3)?
            break
          end
        end
      end
    end
    
    if not in_messages then
      return recover Array[Message] end
    end

    let messages: Array[Message] trn = recover Array[Message] end
    
    while true do
      match MessageDecoder.parse(_reader)
      | let m: Message => messages.push(m)
      else
        break
      end
    end

    consume messages
    
class ClientConnection is TCPConnectionNotify
  let _out: OutStream
  let _req: String
  let _msm: MessageStateMachine
  let _ws_notify: WebSocketNotify

  new iso create(out: OutStream, req: String) =>
    _out = out
    _req = req
    _msm = MessageStateMachine
    _ws_notify = WebSocketNotify(_out)

  fun ref connecting(conn: TCPConnection ref, count: U32) =>
    _out.print("connecting: " + count.string())

  fun ref connected(conn: TCPConnection ref) =>
    _out.print("connected")
    conn.write(_req)

  fun ref connect_failed(conn: TCPConnection ref) =>
    _out.print("connect failed")

  fun ref received(
    conn: TCPConnection ref,
    data: Array[U8] iso,
    times: USize)
    : Bool
  =>
    let vdata: Array[U8] val = consume data
    let ms = _msm(vdata)

    for d in vdata.values() do
      _out.write(Format.int[U8](d where width = 5, align = AlignRight, fmt = FormatHex))
    end

    _out.print("")

    _out.print("in message: " + _msm.in_messages.string())

    for m in ms.values() do
      _out.print("got message with payload size " + m.payload.size().string())
      if m.opcode == 1 then
        _out.print("message text: " + String.from_array(m.payload))
        _ws_notify.received(conn, m)
      end
    end
    
    true

  fun ref closed(conn: TCPConnection ref) =>
    _out.print("client closed")

class WebSocketNotify
  let _out: OutStream
  let _ac_notify: ActionCableNotify
  
  new create(out: OutStream) =>
    _out = out
    _ac_notify = ActionCableNotify(_out)

  fun ref received(conn: TCPConnection, msg: Message) =>
    if (msg.opcode == 0x01) then
      _out.print("payload: " + String.from_array(msg.payload))
      _ac_notify.received(conn, String.from_array(msg.payload))
    end

class ActionCableNotify
  let _out: OutStream

  new create(out: OutStream) =>
    _out = out

  fun ref received(conn: TCPConnection, data: String) =>
    if data.contains("\"type\":\"welcome\"") then
      _out.print("GOT WELCOME MESSAGE!!!")
      // send subscribe message

      let message = Message(true, 1, true, [1; 1; 1; 1], """
{
  "command": "subscribe",
  "identifier": "{\"channel\":\"ApiChannel\"}"
}
""".array())
      let wb: Writer = Writer

      message.render(wb)

      // BEGING DEBUG
      let subscribe_bytes: Array[(String val | Array[U8 val] val)] val = wb.done()

      let rb: Reader = Reader

      for x in subscribe_bytes.values() do
        rb.append(x)
      end

      let nm = MessageDecoder.parse(rb)

      match nm
      | let m: Message =>
        _out.print("outgoing message looks ok")
        _out.print("payload: " + String.from_array(m.payload))
      | None => _out.print("outgoing message has issues")
      end

      // END DEBUG
      
      // conn.writev(subscribe_bytes)

      for x in subscribe_bytes.values() do
        conn.write(x)
      end
    end