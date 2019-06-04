#!/usr/bin/env bash

# Use zsh instead of vimrc
#cp sources/vimrc ~/.vimrc
#source ~/.vimrc

sudo cp sources/bash_profile ~/.bash_profile
sudo cp sources/motd.sh /etc/profile.d/
sudo cp sources/zshrc ~/.zshrc
source ~/.bash_profile ~/etc/profile.d

sudo yum update -y
sudo yum install -y tmux figlet
sudo cp sources/alligator2.flf /usr/share/figlet/alligator2.flf

sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
echo "/usr/bin/zsh" | sudo tee -a /etc/shells
chsh -s $(which zsh)
