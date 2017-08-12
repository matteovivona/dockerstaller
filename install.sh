#!/bin/bash
sudo apt-get update # To get the latest package lists

sudo apt-get install -y \
    linux-image-extra-$(uname -r) \
    linux-image-extra-virtual

sudo apt-get update # To update package lists

sudo apt-get install -y \
    apt-transport-https \
    ca-certificates \
    curl \
    software-properties-common

curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -

sudo add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
   $(lsb_release -cs) \
   stable edge"

sudo apt-get update # To update package lists

sudo apt-get install -y docker-ce # Install Docker CE Stable

sudo docker version # Check Docker version

sudo mkdir /etc/systemd/system/docker.service.d/ # Fix docker-engine start fail

sudo wget -O /etc/systemd/system/docker.service.d/hosts.conf "https://raw.githubusercontent.com/tehKapa/docker-infrastructure/master/hosts.conf" 

sudo chmod +x /etc/systemd/system/docker.service.d/hosts.conf

sudo systemctl daemon-reload 

sudo service docker restart # Restart Docker Deamon

sudo service docker status # Check Docker Deamon
