#!/usr/bin/env bash
./bash_load.sh
cd
curl -sSL https://get.docker.com | sh
sudo docker pull jupyter/datascience-notebook
