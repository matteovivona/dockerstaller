#!/bin/bash
sudo apt-get update # To get the latest package lists

sudo apt-get install -y docker-ce # Install Docker CE Stable

systemctl enable docker

sudo docker version # Check Docker version
