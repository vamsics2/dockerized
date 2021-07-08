#!/bin/bash
cd /home/ec2-user/dockerized/
docker rm -f $(docker ps -q) || docker build -t simple-nginx . && docker run -d -p 80:80 simple-nginx
