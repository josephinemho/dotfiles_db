#!/usr/bin/env bash

sudo curl -sSL https://get.docker.com | sh
sudo usermod -aG docker jmho
sudo systemctl start docker
sudo docker pull josephinemho/custom_dockerfile
sudo git clone https://github.jpl.nasa.gov/jmho/xmatters.git
