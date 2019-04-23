[![Build status](https://ci.appveyor.com/api/projects/status/fgdds5v4fmlb3wa3?svg=true)](https://ci.appveyor.com/project/sanjusss/docker-frp)
![GitHub tag (latest by date)](https://img.shields.io/github/tag-date/sanjusss/docker-frp.svg)
![Docker Pulls](https://img.shields.io/docker/pulls/sanjusss/frp.svg)

# About

Docker containers for [fatedier/frp](https://github.com/fatedier/frp).
Support arm32v7, arm64v8 and amd64.

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