#!/usr/bin/env bash

sudo curl -sSL https://get.docker.com | sh
sudo usermod -aG docker jmho
sudo systemctl start docker
sudo docker pull josephinemho/custom_dockerfile
cd work/
sudo git clone https://github.jpl.nasa.gov/jmho/xmatters.git
cd xmatters
sudo docker run -it -d -p 8889:8888 -v `pwd`:/home/jovyan/work --name xmatters josephinemho/custom_dockerfile
cd ~ 

