#/bin/bash
set -e

wget https://github.com/fatedier/frp/releases/download/v${APPVEYOR_REPO_TAG_NAME}/frp_${APPVEYOR_REPO_TAG_NAME}_linux_${FRP_ARCH}.tar.gz
tar -xf ./frp_${APPVEYOR_REPO_TAG_NAME}_linux_${FRP_ARCH}.tar.gz
mv ./frp_${APPVEYOR_REPO_TAG_NAME}_linux_${FRP_ARCH}/frpc ./frpc
mv ./frp_${APPVEYOR_REPO_TAG_NAME}_linux_${FRP_ARCH}/frps ./frps

os="linux"
docker build --pull -t local_image:frpc-$os-$ARCH --build-arg "arch=$ARCH" ./frpc/
docker build --pull -t local_image:frps-$os-$ARCH --build-arg "arch=$ARCH" ./frps/