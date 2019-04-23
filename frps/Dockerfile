ARG arch=amd64
ARG version=0.25.3
ARG frparch=amd64

FROM ${arch}/alpine:latest

RUN wget https://github.com/fatedier/frp/releases/download/v${version}/frp_${version}_linux_${frparch}.tar.gz \
    && tar -xf frp_${version}_linux_${frparch}.tar.gz \
    && mkdir /frps \
    && cp frp_${version}_linux_${frparch}/frps* /frps/ \
    && rm -rf frp_${version}_linux_${frparch}*

WORKDIR /frps
ENTRYPOINT ["./frps"]
CMD ["-c", "./frps.ini"]