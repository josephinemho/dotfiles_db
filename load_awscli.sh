#!/usr/bin/env bash

# Set up awscli
sudo curl -O https://bootstrap.pypa.io/get-pip.py
sudo python get-pip.py
sudo pip install awscli --upgrade 

# Set up awscli SAML configuration
sudo pip install boto beautifulsoup4 requests-ntlm
cd dotfiles/sources/
sudo git clone https://github.jpl.nasa.gov/cloud/Access-Key-Generation.git
cd Access-Key-Generation/
sudo sed -i 's/#!python/#!\/usr\/bin\/python/' aws-login*.py
./aws-login-gov.py
sudo mkdir -p /home/jmho/work/xmatters/original_data
aws --profile saml-gov s3 sync s3://jmho/xmatters/original_data/ /home/jmho/work/xmatters/original_data/
#mkdir -p /root/data
#aws --profile saml-gov s3 sync s3://jmho/xmatters /root/data
cd ~
