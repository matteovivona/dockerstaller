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

touch /etc/systemd/system/docker.service.d/hosts.conf

cat << 'EOF' >> /etc/systemd/system/docker.service.d/hosts.conf
[Service]
ExecStart=
ExecStart=/usr/bin/dockerd -H fd:// -H tcp://0.0.0.0:2376 --storage-driver aufs --tlsverify --tlscacert /etc/docker/ca.pem --tlscert /etc/docker/server.pem --tlskey /etc/docker/server-key.pem --label provider=generic 
Environment=
EOF

sudo systemctl daemon-reload

sudo service docker restart

sudo service docker status
