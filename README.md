# calibreserver-docker
calibre-server in a docker

Container for calibre-server in a debian:buster setup

docker build -t tobias/calibre . docker run --name=calibreserver -e PUID=1000 -e PGID=1000 -p 8080:8080 -v /disks/work/downloads/library:/library tobias/calibre
