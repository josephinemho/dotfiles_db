#!/usr/bin/env bash

cp .bash_profile ~/.bash_profile
cp motd ~/etc/profile.d
source ~/.bash_profile ~/etc/profile.d
cd ~
