FROM ubuntu:latest

RUN apt-get update && apt-get -y install transmission-daemon nginx git

WORKDIR /root/

RUN git clone https://github.com/shiwzhi/transmission_docker.git
ADD /root/transmission_docker/swz.conf /etc/nginx/sites-enabled/swz.conf
RUN rm /etc/nginx/sites-enabled/default
ADD /root/transmission_docker/settings.json /etc/transmission-daemon/settings.json

RUN apt-get -y purge git