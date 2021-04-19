# 一鍵安裝WARP腳本
(為IPV6不能使用NAT64訪問IPV4網站而設)

此腳本只支援Debian

如果不能用wget指令請先安裝
```bash
apt install wget
```
NAT64
```bash
echo -e nameserver 2a02:180:6:5::1c > /etc/resolv.conf
```
純IPV6專用
```bash
wget -N --no-check-certificate "https://www.hkcls-network.gq/warp.sh" && chmod +x warp.sh && ./warp.sh
```
純IPV4專用
```bash
wget -N --no-check-certificate "https://www.hkcls-network.gq/ipv4.sh" && chmod +x warp.sh && ./warp.sh
```
