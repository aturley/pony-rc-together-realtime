# RC Together Real-Time

## Overview

This program uses websockets to maintain a real-time connection to RC
Together, the virtual Recurse Center space.

## Features

Currently it does the following:
* connects to RC Together using a websocket connection
* subscribes to the `ApiChannel` channel
* dumps a lot of debugging information about incoming messages

## Build

### Prerequisites

You must have [`corral`](https://github.com/ponylang/corral) (the Pony
package manager) and [`ponyc`](https://github.com/ponylang/ponyc) (the
Pony compiler) installed in order to build this project. The easiest way to get these tools is to [install `ponyup`](https://github.com/ponylang/ponyup) and then run the following commands

```bash
ponyup update ponyc release
ponyup update corral release
```

### Building

To build the project, run the following commands:

```bash
corral fetch
corral run -- ponyc -Dopenssl_0.9.0 --output build
```

You may need to change `-Dopenssl_0.9.0` to `-Dopenssl_1.1.x`
[depending on which version of OpenSSL you are
using](https://github.com/ponylang/net_ssl#supported-ssl-versions).

## Run

The program depends on the environment variables `APP_ID` and
`APP_SECRET`. You can get these by [creating an app in RC
Together](https://recurse.rctogether.com/apps).