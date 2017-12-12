FROM ubuntu:latest
MAINTAINER Guillaume MOULARD <gmoulard@gmail.com>

RUN apt-get update \
 && apt-get install -y apt-utils mencoder

WORKDIR /images
