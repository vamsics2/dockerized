#!/bin/bash
cd dockerized
sudo docker build -t simple-nginx .
sudo docker run -d -p 80:80 simple-nginx