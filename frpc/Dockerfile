ARG arch=amd64

FROM ${arch}/alpine:latest

WORKDIR /frpc
COPY ./frpc .
ENTRYPOINT ["./frpc"]
CMD ["-c", "./frpc.ini"]