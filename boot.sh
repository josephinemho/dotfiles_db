#!/usr/bin/env bash
git clone https://github.com/josephinemho/dotfiles.git
cd dotfiles
sudo chmod +x bash_load.sh
./bash_load.sh
cd
curl -sSL https://get.docker.com | sh
sudo docker pull jupyter/datascience-notebook
