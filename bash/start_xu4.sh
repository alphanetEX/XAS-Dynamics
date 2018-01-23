#!/bin/bash
sudo apt-get update
sudo apt-get -y install trickle
sudo apt-get -y upgrade
sudo apt-get -y install docker
sudo apt-get update
sudo apt-get -y install ntp
sudo timedatectl set-timezone America/El_Salvador
sudo date
git clone https://github.com/hardkernel/wiringPi
cd wiringPi/
./build
sudo apt-get -y install \
    apt-transport-https \
    ca-certificates \
    curl \
    software-properties-common

curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo apt-key fingerprint 0EBFCD88
sudo add-apt-repository \
   "deb [arch=armhf] https://download.docker.com/linux/ubuntu \
   $(lsb_release -cs) \
   stable"
sudo apt-get update
sudo apt-get -y install docker-ce

sudo groupadd docker
sudo usermod -aG docker $USER
sudo systemctl enable docker
sudo reboot

