FROM debian:stretch-slim
MAINTAINER CloudChen <cloudchen2015@gmail.com>

WORKDIR /data
COPY ./data /data

RUN apt-get update \
  && apt-get install -y \
  curl \
  dnsmasq \
  && cp /data/dnsmasq.conf /etc/dnsmasq.conf

EXPOSE 53/tcp
EXPOSE 53/udp

CMD sh gen-block-list.sh && sh start.sh