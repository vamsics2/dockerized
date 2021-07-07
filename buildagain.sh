#!/bin/bash
sudo yum install -y yum-utils
sudo yum-config-manager --add-repo https://download.docker.com/linux/centos/docker-ce.repo
sudo yum install docker-ce docker-ce-cli containerd.io
cd /home/ec2-user/dockerized/
sudo docker build -t simple-nginx .
sudo docker run -d -p 80:80 simple-nginx
