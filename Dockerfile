FROM ubuntu:latest

RUN apt-get update && apt-get -y install transmission-daemon nginx git

WORKDIR /root/

