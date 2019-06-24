#!/usr/bin/env bash

#sudo curl -sSL https://get.docker.com | sh
sudo yum -y install docker
sudo groupadd docker
sudo usermod -aG docker $USER
sudo systemctl start docker
#sudo docker pull josephinemho/custom_dockerfile
sudo docker pull jupyter/minimal-notebook
#cd /home/jmho/work/
#sudo git clone https://github.jpl.nasa.gov/jmho/xmatters-v2.git
#cd xmatters-v2
#sudo docker run -it -d -p 8889:8888 -v `pwd`:/home/jovyan/work --name xmatters josephinemho/custom_dockerfile
cd ~ 

