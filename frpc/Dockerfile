ARG arch=amd64
ARG version=0.25.3
ARG frparch=amd64

FROM ${arch}/alpine:latest

RUN wget https://github.com/fatedier/frp/releases/download/v${version}/frp_${version}_linux_${frparch}.tar.gz \
    && tar -xf frp_${version}_linux_${frparch}.tar.gz \
    && mkdir /frpc \
    && cp frp_${version}_linux_${frparch}/frpc* /frpc/ \
    && rm -rf frp_${version}_linux_${frparch}*

WORKDIR /frpc
ENTRYPOINT ["./frpc"]
CMD ["-c", "./frpc.ini"]