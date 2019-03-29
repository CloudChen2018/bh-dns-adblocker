#! /bin/sh
/bh-dns-adblocker/bin/create-block-list.sh
/etc/init.d/dnsmasq start
/etc/init.d/cron start
tail -f /var/log/cron.log