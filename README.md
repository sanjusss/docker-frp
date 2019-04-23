# About

Docker containers for [fatedier/frp](https://github.com/fatedier/frp).

## Usage of frps

- Get help

```console
$ docker run --rm sanjusss/frp:frps --help
```

- Start server

```console
$ docker run -d --name some-fprs \
    -v /some/conf:/conf \
    sanjusss/frp:frps -c /conf/frps.ini
```

## Usage of frpc

- Get help

```console
$ docker run --rm sanjusss/frp:frpc --help
```

- Start client

```console
$ docker run -d --name some-fprc \
    -v /some/conf:/conf \
    sanjusss/frp:frpc -c /conf/frpc.ini
```