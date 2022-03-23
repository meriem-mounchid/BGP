#### BGP ####
sudo add-apt-repository ppa:gns3/ppa
sudo apt update                                
sudo apt install gns3-gui gns3-server
#### Install IOU Support ####
sudo dpkg --add-architecture i386
sudo apt update
sudo apt install gns3-iou
#### Install Docker ####
sudo apt remove docker docker-engine docker.io
sudo apt-get install apt-transport-https ca-certificates curl \ software-properties-common
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo add-apt-repository \
"deb [arch=amd64] https://download.docker.com/linux/ubuntu \
   $(lsb_release -cs) stable"
sudo apt update
sudo apt install docker-ce
sudo usermod -aG docker misaki
sudo usermod -aG ubridge misaki
sudo usermod -aG libvirt misaki
sudo usermod -aG wireshark misaki
sudo usermod -aG kvm misaki
#newgrp docker
#sudo chmod 666 /var/run/docker.sock
#### Uninstall GNS3 ####
gns3
docker pull alpine
docker run -d alpine 
docker ps -a
docker stop NAME
docker commit NAME nNAME
#ipk add iproute2
#tc
docker pull frrouting/frr
docker run -d frrouting/frr
docker stop NAME
docker commit NAME nNAME

vi /etc/frr/daemons
BGPD: Border Gateway Protocol daemon 
OSPFD: Open Shortest Path First daemo
IS-IS: Intermediate System to Intermediate System daemon
Busybox: