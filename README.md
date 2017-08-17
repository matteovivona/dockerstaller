# Dockerstaller
An automagical script to install Docker on Ubuntu 16.04 LTS (with custom fix for docker-machine tool).

### Usage
Open a terminal and SSH into the VM where you want to run Docker.

1. Install Docker:
```shell
$ curl https://raw.githubusercontent.com/tehKapa/dockerstaller/master/install.sh | bash
```

2. Create a [machine](https://docs.docker.com/machine/reference/create/). 

3. Fix hosts.conf:
```shell
$ curl https://raw.githubusercontent.com/tehKapa/dockerstaller/master/fix.sh | bash
```

4. Have fun!
