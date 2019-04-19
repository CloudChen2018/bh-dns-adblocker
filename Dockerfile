FROM debian:stretch-slim
MAINTAINER CloudChen <cloudchen2015@gmail.com>

WORKDIR /bh-dns-adblocker

COPY ./docker/bin /bh-dns-adblocker/bin
COPY ./docker/conf /bh-dns-adblocker/conf

RUN \
  apt-get update && apt-get install -y \
  nano \
  curl \
  dnsmasq \
  cron

RUN \
  chmod +x /bh-dns-adblocker/bin/*.sh && \
  mv /bh-dns-adblocker/conf/dnsmasq.conf /etc/dnsmasq.conf && \
  mkdir /bh-dns-adblocker/logs && \
  crontab /bh-dns-adblocker/conf/crontabfile && \
  cp /bh-dns-adblocker/conf/crontabfile /etc/crontab && \
  touch /var/log/cron.log

EXPOSE 53/tcp
EXPOSE 53/udp

ENTRYPOINT /bh-dns-adblocker/bin/start.sh