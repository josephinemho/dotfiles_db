#!/usr/bin/env bash

# Set up bash environment
sudo chmod +x load_bash.sh
./load_bash.sh

# Set up Docker environment
sudo curl -sSL https://get.docker.com | sh
sudo usermod -aG docker jmho
sudo systemctl start docker
sudo docker pull josephinemho/custom_dockerfile
sudo git clone https://github.jpl.nasa.gov/jmho/xmatters.git

# Set up aws cli
sudo chmod +x load_awscli.sh
./load_awscli.sh
