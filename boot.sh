#!/usr/bin/env bash
sudo chmod +x bash_load.sh
./bash_load.sh
curl -sSL https://get.docker.com | sh
sudo systemctl start docker
sudo docker pull josephinemho/custom_dockerfile
sudo usermod -aG docker jmho
sudo rpm -Uvh https://dl.fedoraproject.org/pub/epel/epel-release-latest-6.noarch.rpm
sudo yum install figlet
