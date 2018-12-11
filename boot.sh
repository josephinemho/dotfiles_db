#!/usr/bin/env bash

# Install and load environment
sudo chmod +x bash_load.sh
./bash_load.sh
sudo yum update -y
sudo yum install -y figlet 

# Install LinuxBrew
sudo yum groupinstall -y 'Development Tools' && sudo yum install -y curl file git
echo | sh -c "$(curl -fsSL https://raw.githubusercontent.com/Linuxbrew/install/master/install.sh)"
test -r ~/.bash_profile && echo "eval \$($(brew --prefix)/bin/brew shellenv)" >>~/.bash_profile

# Install Git Large File Storage
sudo brew install git-lfs -y 

# Install Docker
curl -sSL https://get.docker.com | sh
sudo systemctl start docker
sudo docker pull josephinemho/custom_dockerfile
sudo usermod -aG docker jmho

# Set up datascience environment
# Clone datascience repo
cd
sudo git clone https://github.jpl.nasa.gov/jmho/xmatters.git

# Use Git Large File Storage for .csv and .tar files
cd xmatters
git lfs track "data/ps_files/*"
git lfs track "data/picked_data/*"
