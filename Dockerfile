FROM ubuntu:latest

RUN \
apt-get update && apt-get -y install \
openconnect \
network-manager-openconnect \
tinyproxy

COPY tinyproxy.conf /etc/tinyproxy/tinyproxy.conf

VOLUME ["/.restream-proxy"]

EXPOSE 8888

WORKDIR /.restream-proxy

CMD tinyproxy && openconnect --certificate cert.pem --cafile ca.crt nest.restream.pro && tail -f /dev/null
