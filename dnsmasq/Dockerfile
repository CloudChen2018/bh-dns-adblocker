FROM debian:stretch
MAINTAINER CloudChen <cloudchen2015@gmail.com>

WORKDIR /data
COPY ./data /data

RUN apt-get update \
  && apt-get install -y \
  curl \
  dnsmasq \
  && cp /data/dnsmasq.conf /etc/dnsmasq.conf \
  && sh gen-block-list.sh

EXPOSE 53

CMD ["/etc/init.d/dnsmasq", "start"]