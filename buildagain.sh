#!/bin/bash
cd /home/ec2-user/dockerized/
sudo docker rm -f $(docker ps -q) || sudo docker build -t simple-nginx . && sudo docker run -d -p 80:80 simple-nginx
