# Dockerstaller [![contributions welcome](https://img.shields.io/badge/contributions-welcome-brightgreen.svg?style=flat)](https://github.com/tehKapa/k8staller/issues) [![License: GPL v3](https://img.shields.io/badge/License-GPL%20v3-blue.svg)](https://www.gnu.org/licenses/gpl-3.0)
An automagical script to install Docker on Ubuntu 16.04 LTS/Ubuntu 17.10 (with custom fix for docker-machine tool).

### Usage
Open a terminal and SSH into the VM where you want to run Docker.

1. Add repos and install Docker with:
```shell
curl https://raw.githubusercontent.com/tehKapa/dockerstaller/master/install.sh | bash
```

## Bonus 

Custom fix for Docker Machine 0.12.2 (2017-7-12) <--- deprecated!

1. Create a [machine](https://docs.docker.com/machine/reference/create/). 

2. Fix hosts.conf:
```shell
curl https://raw.githubusercontent.com/tehKapa/dockerstaller/master/fix.sh | bash
```

3. Have fun!
