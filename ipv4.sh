apt update
apt install curl sudo lsb-release -y
echo "deb http://deb.debian.org/debian $(lsb_release -sc)-backports main" | sudo tee /etc/apt/sources.list.d/backports.list
sudo apt update
sudo apt install net-tools iproute2 openresolv dnsutils -y
sudo apt install wireguard-tools --no-install-recommends
sudo apt -t $(lsb_release -sc)-backports install linux-image-$(dpkg --print-architecture) linux-headers-$(dpkg --print-architecture) --install-recommends -y
sudo apt install wireguard-dkms -y
curl -fsSL wireguard-go.hkcls-network.workers.dev | sudo bash
curl -fsSL wgcf-install.hkcls-network.workers.dev | sudo bash
echo | wgcf register
wgcf generate
sudo sed -i '/0\.\0\/0/d' wgcf-profile.conf | sudo sed -i 's/engage.cloudflareclient.com/162.159.192.1/g' wgcf-profile.conf | sudo sed -i 's/1.1.1.1/9.9.9.10,8.8.8.8,1.1.1.1/g' wgcf-profile.conf
cp wgcf-profile.conf /etc/wireguard/wgcf.conf
sudo systemctl start wg-quick@wgcf
sudo systemctl enable wg-quick@wgcf
grep -qE '^[ ]*precedence[ ]*::ffff:0:0/96[ ]*100' /etc/gai.conf || echo 'precedence ::ffff:0:0/96  100' | sudo tee -a /etc/gai.conf
sudo wg-quick down wgcf
sudo wg-quick up wgcf
