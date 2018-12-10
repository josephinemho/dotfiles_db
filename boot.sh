#!/usr/bin/env bash
git clone git@github.com:josephinemho/dotfiles.git
cd dotfiles
./bash_load.sh
cd
curl -sSL https://get.docker.com | sh
sudo docker pull jupyter/datascience-notebook
