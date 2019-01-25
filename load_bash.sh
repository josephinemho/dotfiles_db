#!/usr/bin/env bash

cp sources/.bash_profile ~/.bash_profile
sudo cp sources/motd.sh /etc/profile.d/
source ~/.bash_profile ~/etc/profile.d
sudo yum update -y
sudo yum install -y tmux
sudo yum install -y figlet
sudo cp sources/alligator2.flf /usr/share/figlet/alligator2.flf
