#!/usr/bin/env bash

# Set up awscli
curl -O https://bootstrap.pypa.io/get-pip.py
sudo python get-pip.py
sudo pip install awscli --upgrade 

# Set up awscli SAML configuration
sudo pip install boto beautifulsoup4 requests-ntlm
cd dotfiles/sources/
git clone https://github.jpl.nasa.gov/cloud/Access-Key-Generation.git
cd Access-Key-Generation
sed -i 's/#!python/#!\/usr\/bin\/python/' aws-login*.py
sudo chmod +x sources/
