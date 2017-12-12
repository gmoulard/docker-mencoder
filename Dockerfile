FROM ubuntu:latest
MAINTAINER Guillaume MOULARD <gmoulard@gmail.com>

VOLUME /data/public/Photo/pi

RUN apt-get update \
 && apt-get install -y apt-utils mencoder

WORKDIR /data/public/Photo/pi
