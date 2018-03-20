#!/bin/bash
sudo apt-get update # To get the latest package lists

sudo apt-get upgrade -y

sudo apt-get install -y \
    linux-image-extra-$(uname -r) \
    linux-image-extra-virtual
    
sudo apt-get autoclean -y

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
