#!/usr/bin/env bash

cp .bash_profile ~/.bash_profile
mkdir -p ~/etc/profile.d/ && cp motd.sh ~/etc/profile.d/
source ~/.bash_profile ~/etc/profile.d
cd ~
