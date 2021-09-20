# calibreserver-docker
calibre-server in a docker

Container for calibre-server in a debian:buster setup

docker build -t tobias/calibre . 


docker run -d --rm --name=calibreserver -e PUID=1000 -e PGID=1000 -p 8080:8080 -v /mnt/zdrive/calibre:/library,ro tobias/calibre:0.1


readonly volume, doesn't work on my rpi but it works on my desktop.
Create the library on your desktop and then rsync it over into the volume location
