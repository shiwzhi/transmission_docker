FROM alpine

WORKDIR /root
RUN apk update;apk add transmission-daemon wget ca-certificates
RUN wget https://github.com/shiwzhi/transmission_docker/archive/master.zip;unzip master.zip;mv transmission_docker-master transmission
ENTRYPOINT ["transmission-daemon", "-f", "-g", "/root/transmission/"]