#!/bin/bash
apt-get update # To get the latest package lists

apt-get install -y \
    linux-image-extra-$(uname -r) \
    linux-image-extra-virtual

apt-get update # To update package lists

apt-get install -y \
    apt-transport-https \
    ca-certificates \
    curl \
    software-properties-common

curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -

add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
   $(lsb_release -cs) \
   stable edge"

apt-get update # To update package lists

apt-get install -y docker-ce # Install Docker CE Stable

docker version # Check Docker version

cat > /etc/systemd/system/docker.service.d/hosts.conf <<EOL
[Service]
ExecStart=
ExecStart=/usr/bin/dockerd -H fd:// -H tcp://0.0.0.0:2376 --storage-driver aufs --tlsverify --tlscacert /etc/docker/ca.pem --tlscert /etc/docker/server.pem --tlskey /etc/docker/server-key.pem --label provider=generic 
Environment=
EOL

systemctl daemon-reload

service docker restart

service docker status
