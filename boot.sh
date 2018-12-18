#!/usr/bin/env bash

# Set up bash environment
sudo chmod +x bash_load.sh
./bash_load.sh
sudo yum update -y
sudo yum install -y figlet 
sudo cp dotfiles/alligator2.flf /usr/share/figlet/alligator2.flf

# Set up Docker environment
sudo curl -sSL https://get.docker.com | sh
sudo usermod -aG docker jmho
sudo systemctl start docker
sudo docker pull josephinemho/custom_dockerfile
sudo git clone https://github.jpl.nasa.gov/jmho/xmatters.git

# Set up aws cli
curl -O https://bootstrap.pypa.io/get-pip.py
python get-pip.py --user
export PATH=~/.local/bin:$PATH
source ~/.bash_profile
pip install awscli --upgrade --user


