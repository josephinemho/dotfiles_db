#!/usr/bin/env bash

# Install and load environment
sudo chmod +x bash_load.sh
./bash_load.sh
sudo yum update -y
sudo yum install -y figlet 

# Install LinuxBrew
sudo yum groupinstall -y 'Development Tools' && sudo yum install -y curl file git
echo | sh -c "$(curl -fsSL https://raw.githubusercontent.com/Linuxbrew/install/master/install.sh)"
echo 'export PATH="/home/linuxbrew/.linuxbrew/bin:$PATH"' >>~/bash_profile
echo 'export MANPATH="/home/linuxbrew/.linuxbrew/share/man:$MANPATH"' >>~/bash_profile
echo 'export INFOPATH="/home/linuxbrew/.linuxbrew/share/info:$INFOPATH"' >>~/bash_profile.
PATH="/home/linuxbrew/.linuxbrew/bin:$PATH"

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
