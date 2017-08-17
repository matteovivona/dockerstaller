#!/bin/bash
sudo mkdir /etc/systemd/system/docker.service.d/ # Fix docker-engine start fail

sudo wget -O /etc/systemd/system/docker.service.d/hosts.conf "https://raw.githubusercontent.com/tehKapa/docker-infrastructure/master/hosts.conf" 

sudo chmod +x /etc/systemd/system/docker.service.d/hosts.conf

sudo systemctl daemon-reload 

sudo service docker restart # Restart Docker Deamon

sudo service docker status # Check Docker Deamon
