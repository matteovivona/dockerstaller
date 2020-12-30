# Dockerstaller ![terminal](https://badgen.net/badge/icon/terminal?icon=terminal&label) [![License: GPL v3](https://img.shields.io/badge/License-GPL%20v3-blue.svg)](https://www.gnu.org/licenses/gpl-3.0) ![Tested](https://github.com/tehKapa/dockerstaller/workflows/Test/badge.svg?branch=master) ![16.04](https://img.shields.io/badge/works%20on-16.04%20LTS%20%20-yellow?style=flat&logo=ubuntu) ![18.04](https://img.shields.io/badge/works%20on-18.04%20LTS%20%20-orange?style=flat&logo=ubuntu)  ![20.04](https://img.shields.io/badge/works%20on-20.04%20LTS%20%20-red?style=flat&logo=ubuntu) 

An automagical script to install (in less than one minute) Docker and Docker Compose on Ubuntu.

## Usage
Open a terminal and SSH into the VM where you want to run Docker.

1. Add repos and install Docker with:
```shell
curl https://raw.githubusercontent.com/tehKapa/dockerstaller/master/install.sh | bash
```
2. Welcome aboard!

N.B. With this script you will be able to use Docker as a non-root user

### OS requirements
To install Docker CE, you need the 64-bit version of one of these Ubuntu versions:

* Focal Fossa 20.04 (LTS) 
* Bionic 18.04 (LTS)
* Xenial 16.04 (LTS)

Docker CE is supported on x86_64 (or amd64), armhf, arm64, s390x (IBM Z), and ppc64le (IBM Power) architectures.

## Reference
[Get Docker Engine - Community for Ubuntu](https://docs.docker.com/install/linux/docker-ce/ubuntu/)
