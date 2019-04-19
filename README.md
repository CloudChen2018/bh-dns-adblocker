# BlackHand DNS ADBlocker ver-1.0.1

使用Docker架設阻擋廣告的DNS伺服器

Feature
=========================
- 使用Docker架設可以阻擋廣告的DNS
- 每天自動更新黑名單

Use
=========================

````
sudo docker run
  --name "bh-dns-adblocker" \
  --publish "53:53/tcp" \
  --publish "53:53/udp" \
  --volume "./logs/:/bh-dns-adblocker/logs/" \
  cloudchen2015/bh-dns-adblocker:latest
````

Change Log
=========================
- 1.0.0
    - DNS Server Dockerfile和設定完成
    - 加入了自動更新黑名單功能

- 1.0.1
    - 修正執行檔無法執行的問題