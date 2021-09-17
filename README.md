# calibreserver-docker
calibre-server in a docker

Container for calibre-server in a debian:buster setup

docker build -t tobias/calibre . docker run --name=calibreserver -e PUID=1000 -e PGID=1000 -p 8080:8080 -v /disks/work/downloads/library:/library,ro tobias/calibre
docker run --name=calibre -e PUID=1000 -e PGID=1000 -p 8080:8080 -v /zdrive/nextcloud/data/tobias/big/Calibre\ Library:/library tobias/calibre:0.1
