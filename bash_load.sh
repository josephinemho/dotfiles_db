#!/usr/bin/env bash

cp .bash_profile ~/.bash_profile
cp alligator2.flf /usr/share/figlet/alligator2.flf
sudo cp motd.sh /etc/profile.d/
source ~/.bash_profile ~/etc/profile.d
cd ~
