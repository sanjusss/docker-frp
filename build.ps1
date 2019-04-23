
$ErrorActionPreference = 'Stop';

$os = If ($isWindows) {"windows"} Else {"linux"}
docker build --pull -t local_image:frpc-$os-${env:ARCH} --build-arg "arch=$env:ARCH" --build-arg "frparch=$env:FRP_ARCH" --build-arg "version=$env:APPVEYOR_REPO_TAG_NAME" ./frpc/
docker build --pull -t local_image:frps-$os-${env:ARCH} --build-arg "arch=$env:ARCH"  --build-arg "frparch=$env:FRP_ARCH" --build-arg "version=$env:APPVEYOR_REPO_TAG_NAME" ./frps/