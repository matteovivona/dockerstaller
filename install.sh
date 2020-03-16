#!/bin/bash

cat <<"EOF"
    ____             __                  __        ____         
   / __ \____  _____/ /_____  __________/ /_____ _/ / /__  _____
  / / / / __ \/ ___/ //_/ _ \/ ___/ ___/ __/ __ `/ / / _ \/ ___/
 / /_/ / /_/ / /__/ ,< /  __/ /  (__  ) /_/ /_/ / / /  __/ /    
/_____/\____/\___/_/|_|\___/_/  /____/\__/\__,_/_/_/\___/_/     
                                                                
EOF

if [ -x "$(command -v docker)" ]; then
  echo -e "Docker is already installed! \e[32mGreen\e[0m"
  sudo docker version
else
  sudo apt-get update && sudo apt-get upgrade -y
  echo -e "I have updated your system \e[32mGreen\e[0m"
  sudo apt-get -y install \
    apt-transport-https \
    ca-certificates \
    curl \
    gnupg-agent \
    software-properties-common \
    thin-provisioning-tools \
    lvm2
  echo -e "Adding the new repository \e[32mGreen\e[0m"
  curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
  sudo add-apt-repository \
    "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
      $(lsb_release -cs) \
      stable"
  sudo apt-get update
  sudo apt-get remove docker docker-engine docker.io containerd runc -y
  echo -e "Now, I install Docker and docker-compose \e[32mGreen\e[0m"
  sudo apt-get install docker-ce docker-ce-cli containerd.io -y # Install Docker CE Stable
  sudo groupadd docker                                          # Manage Docker as a non-root user
  sudo usermod -aG docker $USER
  sudo systemctl enable docker
  sudo apt autoremove -y
  sudo sudo curl -L "https://github.com/docker/compose/releases/download/1.25.4/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
  sudo chmod +x /usr/local/bin/docker-compose
  sudo docker version # Check Docker version
  echo -e "Tada! All fine. Welcome aboard, captain. \e[32mGreen\e[0m"
fi
