FROM ubuntu:latest

RUN apt-get update && apt-get -y install transmission-daemon nginx git

WORKDIR /root/

RUN git clone https://github.com/shiwzhi/transmission_docker.git && cp /root/transmission_docker/swz.conf /etc/nginx/sites-enabled/swz.conf && rm /etc/nginx/sites-enabled/default && cp /root/transmission_docker/settings.json /etc/transmission-daemon/settings.json

RUN apt-get -y purge git