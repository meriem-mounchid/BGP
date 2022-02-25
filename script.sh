#### BGP ####
#sudo usermod -aG sudo vagrant
sudo add-apt-repository ppa:gns3/ppa
sudo apt update                                
sudo apt install -y gns3-server gns3-gui
#### Install IOU Support ####
sudo dpkg --add-architecture i386
sudo apt update
sudo apt install -y gns3-iou
#### Install Docker ####
sudo apt -y update
sudo apt -y install apt-transport-https ca-certificates curl gnupg-agent software-properties-common
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo apt-get install -y docker.io
sudo usermod -aG docker vagrant
#newgrp docker


#### Uninstall GNS3 ####
# sudo apt remove gns3-gui gns3-server