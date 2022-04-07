use "collections"
use "json"

class PJQ
  let result: Array[JsonType]

  new create(json: Array[JsonType]) =>
    result = json

  new from_string(str: String) ? =>
    let doc = JsonDoc

    // parsing
    doc.parse(str)?

    result = [doc.data]

  fun ref apply(index: (String | USize)): PJQ =>
    let res = Array[JsonType]

    for r in result.values() do
      try
        match (r, index)
        | (let a: JsonArray, let u: USize) =>
          res.push(a.data(u)?)
        | (let o: JsonObject, let s: String) =>
          res.push(o.data(s)?)
        else
          error
        end
      end
    end

    PJQ(res)

  fun ref iter(): PJQ => 
    let res = Array[JsonType]

    for r in result.values() do
      try
        match (r)
        | let a: JsonArray =>
          for x in a.data.values() do
            res.push(x)
          end
        | let o: JsonObject =>
          for x in o.data.values() do
            res.push(x)
          end
        else
          error
        end
      end
    end

    PJQ(res)

  fun ref array(): PJQ =>
    PJQ([JsonArray.from_array(result)])

  fun ref _construct_rec(ir: Map[String, Array[PJQ]], keys: Array[String], cur_key_idx:USize, cur_result: Map[String, JsonType], working_result: Array[JsonType]) =>

    if cur_key_idx == keys.size() then
      working_result.push(JsonObject.from_map(cur_result.clone()))
      return
    end

    try
      let key = keys(cur_key_idx)?
      for pjq in ir(key)?.values() do
        for r in pjq.result.values() do
          cur_result(key) = r
          _construct_rec(ir, keys, cur_key_idx + 1, cur_result, working_result)
        end
      end
    end
    
  fun ref _construct_all(ir: Map[String, Array[PJQ]]): Array[JsonType] =>
    let wr = Array[JsonType]
    _construct_rec(ir, Array[String] .> concat(ir.keys()), 0, Map[String, JsonType], wr)

    wr

  fun ref construct(constructors: Array[(String, {(PJQ): PJQ})]): PJQ =>
    let intermediate_results = Map[String, Array[PJQ]]

    for (key, f) in constructors.values() do
      intermediate_results.upsert(key, [f(this)], {(current: Array[PJQ], provided: Array[PJQ]) => current .> concat(provided.values())})
    end

    let res = _construct_all(intermediate_results)

    PJQ(res)

  fun ref concat(f1: {(PJQ): PJQ}, f2: {(PJQ): PJQ}): PJQ =>
    PJQ(Array[JsonType] .> concat(f1(this).result.values()) .> concat(f2(this).result.values()))

  fun ref eq(x: (I64 | F64 | String)): Bool =>
    var res = (result.size() > 0)
    for r in result.values() do
      match (r, x)
      | (let s1: String, let s2: String) => res = (res and (s1 == s2))
      | (let i1: I64, let i2: I64) => res = (res and (i1 == i2))
      | (let f1: F64, let f2: F64) => res = (res and (f1 == f2))
      else
        return false
      end
    end

    res

  fun ref string(): String ? =>
    if result.size() == 1 then
      result(0)? as String
    else
      error
    end

  fun ref i64(): I64 ? =>
    if result.size() == 1 then
      result(0)? as I64
    else
      error
    end

  fun ref f64(): F64 ? =>
    if result.size() == 1 then
      result(0)? as F64
    else
      error
    end
    
