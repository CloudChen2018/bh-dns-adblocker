FROM andyshinn/dnsmasq:2.78
MAINTAINER CloudChen <cloudchen2015@gmail.com>

ADD dnsmasq.conf /etc/dnsmasq.conf
ADD update-blocklist.sh /root/update-blocklist.sh

EXPOSE 53

RUN apt-get update && 
RUN sh /root/update-blocklist.sh
RUN /etc/init.d/dnsmasq restart