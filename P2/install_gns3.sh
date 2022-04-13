#### BGP ####
sudo add-apt-repository ppa:gns3/ppa -y
sudo apt update                                
sudo apt install -y gns3-gui gns3-server
#### Install IOU Support ####
sudo dpkg --add-architecture i386
sudo apt update
sudo apt install -y gns3-iou
#### Install Docker ####
sudo apt remove docker docker-engine docker.io
sudo apt install -y curl
sudo apt-get install apt-transport-https ca-certificates curl \ software-properties-common
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo add-apt-repository \
"deb [arch=amd64] https://download.docker.com/linux/ubuntu \
   $(lsb_release -cs) stable"
sudo apt update
sudo apt install -y docker-ce
sudo usermod -aG sudo bgp
sudo usermod -aG docker bgp
sudo usermod -aG ubridge bgp
sudo usermod -aG libvirt bgp
sudo usermod -aG wireshark bgp
sudo usermod -aG kvm bgp
sudo chmod +x /usr/bin/ubridge
newgrp docker 
sudo chmod +x /usr/bin/dumpcap
# chmod 777 scripts.sh
# sudo apt install -y openssh-server
# scp scripts.sh misaki@10.12.100.28:~
