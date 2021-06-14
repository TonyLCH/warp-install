# 一鍵安裝WARP腳本
(為IPV6不能使用NAT64訪問IPV4網站而設)

此腳本只支援Debian

NAT64
```bash
echo -e "nameserver 2001:67c:2b0::4•\nnameserver 2001:67c:2b0::6" > /etc/resolv.conf
```
純IPV6專用
```bash
wget -N --no-check-certificate "https://www.hkcls-network.gq/warp.sh" && chmod +x warp.sh && ./warp.sh
```
純IPV4專用
```bash
wget -N --no-check-certificate "https://www.hkcls-network.gq/ipv4.sh" && chmod +x warp.sh && ./warp.sh
```
fscarmen腳本
```bash
echo -e nameserver 2a00:1098:2b::1 > /etc/resolv.conf && wget -N -6 "https://raw.githubusercontent.com/fscarmen/warp/main/dualstack.sh" && chmod +x dualstack.sh && ./dualstack.sh
```
