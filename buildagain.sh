#!/bin/bash
curl -fsSL https://get.docker.com -o get-docker.sh
sh get-docker.sh
cd /home/ec2-user/dockerized/
sudo docker build -t simple-nginx .
sudo docker run -d -p 80:80 simple-nginx
