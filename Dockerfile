FROM ubuntu:latest

RUN apt-get update && apt-get -y install transmission-daemon nginx git

WORKDIR /tmp/

RUN git clone https://github.com/shiwzhi/transmission_docker.git
ADD /tmp/transmission_docker/swz.conf /etc/nginx/sites-enabled/swz.conf
RUN rm /etc/nginx/sites-enabled/default
ADD /tmp/transmission_docker/settings.json /etc/transmission-daemon/settings.json
