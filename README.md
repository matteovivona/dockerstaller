# Dockerstaller
An automagical script to install Docker on Ubuntu 16.04 LTS (with custom fix for docker-machine tool).

### Usage
Open a terminal and SSH into the VM where you want to run Docker.

1. Add repos:
```shell
curl https://raw.githubusercontent.com/tehKapa/dockerstaller/master/repo.sh | bash
```

2. Install Docker:
```shell
curl https://raw.githubusercontent.com/tehKapa/dockerstaller/master/install.sh | bash
```

3. Create a [machine](https://docs.docker.com/machine/reference/create/). 

4. Fix hosts.conf:
```shell
curl https://raw.githubusercontent.com/tehKapa/dockerstaller/master/fix.sh | bash
```

5. Have fun and remember `systemctl enable docker`
