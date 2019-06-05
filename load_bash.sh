#!/usr/bin/env bash

# Use zsh instead of vimrc
#cp sources/vimrc ~/.vimrc
#source ~/.vimrc

sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)" -y 
# Clone the zsh-syntax-highlighting plugin’s repo and copy it to the “Oh My ZSH” plugins directory.
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

sudo cp sources/bash_profile ~/.bash_profile
sudo cp sources/motd.sh /etc/profile.d/
sudo cp sources/zshrc ~/.zshrc
source ~/.bash_profile ~/etc/profile.d

sudo yum update -y
sudo yum install -y tmux figlet
sudo cp sources/alligator2.flf /usr/share/figlet/alligator2.flf
