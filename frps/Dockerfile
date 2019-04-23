ARG arch=amd64

FROM ${arch}/alpine:latest

WORKDIR /frps
COPY ./frps .
ENTRYPOINT ["./frps"]
CMD ["-c", "./frps.ini"]