#!/bin/bash
cd /home/ec2-user/dockerized/
sudo docker rm -f $(docker ps -aq) && sudo docker rmi $(docker images | grep 'simple') || sudo docker build -t simple-nginx . && sudo docker run -d -p 80:80 simple-nginx
