FROM debian:buster

# set version label
ARG BUILD_DATE
ARG VERSION
ARG CALIBRE_RELEASE
LABEL build_version="calibre:- ${VERSION} Build-date:- ${BUILD_DATE}"
LABEL maintainer="tobias"

ENV \
  CUSTOM_PORT="8080" \
  GUIAUTOSTART="false" 
 
RUN \
  echo "**** install runtime packages ****" && \
  apt-get update && \
  apt-get install -y --no-install-recommends \
    calibre imagemagick  && \
  echo "**** cleanup ****" && \
  apt-get clean && \ 
  mkdir /library && \ 
  rm -rf \
    /tmp/* \
    /var/lib/apt/lists/* \
    /var/tmp/*

EXPOSE 8080/tcp
EXPOSE 8080/udp


ENTRYPOINT ["/usr/bin/calibre-server","/library"]

# add local files