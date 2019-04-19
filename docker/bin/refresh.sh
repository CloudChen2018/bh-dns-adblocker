#! /bin/sh
# 停止服務
/etc/init.d/dnsmasq stop
# 將log檔案搬移出來
mv /var/log/dnsmasq.log /bh-dns-adblocker/logs/dnsmasq_$(date "+%s").log
# 建立新的log檔案
touch /var/log/dnsmasq.log
# 刪除7天前的log檔案
find /bh-dns-adblocker/logs/*.log -type f -mtime +7 -exec rm -rf {} \; 
# 更新黑名單
/bh-dns-adblocker/bin/create-block-list.sh
# 重新啟動
/etc/init.d/dnsmasq start