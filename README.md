# Dockerstaller ![Awesome](https://badgen.net/badge/icon/awesome?icon=awesome&label) ![terminal](https://badgen.net/badge/icon/terminal?icon=terminal&label) [![License: GPL v3](https://img.shields.io/badge/License-GPL%20v3-blue.svg)](https://www.gnu.org/licenses/gpl-3.0) 

An automagical script to install (in less than one minute) Docker CE on Ubuntu Bionic 18.04 (LTS) and Xenial 16.04 (LTS).

## Usage
Open a terminal and SSH into the VM where you want to run Docker.

1. Add repos and install Docker with:
```shell
curl https://raw.githubusercontent.com/tehKapa/dockerstaller/master/install.sh | bash
```
2. Welcome aboard!

### OS requirements
To install Docker CE, you need the 64-bit version of one of these Ubuntu versions:

* Disco 19.04
* Cosmic 18.10
* Bionic 18.04 (LTS)
* Xenial 16.04 (LTS)

Docker CE is supported on x86_64 (or amd64), armhf, arm64, s390x (IBM Z), and ppc64le (IBM Power) architectures.

## Reference
[Get Docker Engine - Community for Ubuntu](https://docs.docker.com/install/linux/docker-ce/ubuntu/)
