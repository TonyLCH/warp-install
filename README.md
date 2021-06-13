# 一鍵安裝WARP腳本
(為IPV6不能使用NAT64訪問IPV4網站而設)

此腳本只支援Debian

NAT64
```bash
echo -e "nameserver 2001:67c:2b0::4•\nnameserver 2001:67c:2b0::6" > /etc/resolv.conf
```
```bash
echo -e "nameserver 2606:4700:4700::64\nnameserver 2606:4700:4700::6400\nnameserver 2001:4860:4860::6464\nnameserver 2001:4860:4860::64" > /etc/resolv.conf
```
純IPV6專用
```bash
wget -N --no-check-certificate "https://www.hkcls-network.gq/warp.sh" && chmod +x warp.sh && ./warp.sh
```
純IPV4專用
```bash
wget -N --no-check-certificate "https://www.hkcls-network.gq/ipv4.sh" && chmod +x warp.sh && ./warp.sh
```
