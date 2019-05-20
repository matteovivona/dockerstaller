#!/bin/bash
sudo apt-get update # To get the latest package lists

sudo apt-get upgrade -y

sudo apt-get autoclean -y

sudo apt-get install \
    apt-transport-https \
    ca-certificates \
    curl \
    gnupg-agent \
    software-properties-common

curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -

sudo add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
   $(lsb_release -cs) \
   stable"

sudo apt-get update # To get the latest package lists

sudo apt-get autoclean -y

sudo apt-get autoremove -y

sudo apt-get install docker-ce docker-ce-cli containerd.io -y # Install Docker CE Stable

sudo docker version # Check Docker version

sudo groupadd docker # Manage Docker as a non-root user

sudo usermod -aG docker $USER 

sudo systemctl enable docker
