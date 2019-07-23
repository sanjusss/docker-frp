[![Build status](https://ci.appveyor.com/api/projects/status/fgdds5v4fmlb3wa3?svg=true)](https://ci.appveyor.com/project/sanjusss/docker-frp)
![GitHub tag (latest by date)](https://img.shields.io/github/tag-date/sanjusss/docker-frp.svg)
![Docker Pulls](https://img.shields.io/docker/pulls/sanjusss/frp.svg)  
![arm32v7](https://img.shields.io/badge/arm32v7-support-green.svg)
![arm64v8](https://img.shields.io/badge/arm64v8-support-green.svg)
![amd64](https://img.shields.io/badge/amd64-support-green.svg)

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
    --net=host \
    sanjusss/frp:frps -c /conf/frps.ini
```
docker-compose.yml
```docker
version: '2'
services:
    frps:
        image: sanjusss/frp:frps-0.27.1
        restart: always
        network_mode: "host"
        volumes:
            - "./frps.ini:/frps/frps.ini"
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
    --net=host \
    sanjusss/frp:frpc -c /conf/frpc.ini
```
docker-compose.yml
```docker
version: '2'
services:
    frpc:
        image: sanjusss/frp:frpc-0.27.1
        restart: always
        network_mode: "host"
        volumes:
            - "./frpc.ini:/frpc/frpc.ini"
```