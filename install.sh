#!/usr/bin/env bash  
# Install Ansible inside the Vagrant Ubuntu VM

yum -y update
yum -y install docker-io
service docker start
docker build -t nginx https://github.com/azenakhi/docker.git

