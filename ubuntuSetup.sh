#!/bin/bash
# Development Machine Setup on Ubuntu
# Adapted from : Sojharo

sudo apt-get update

# Installing build essentials
sudo apt-get install -y build-essential libssl-dev

# C/C++
sudo apt-get install gcc g++

# Nodejs
sudo apt-get install -y nodejs
sudo apt-get install -y npm

#nodemon
sudo npm install -g nodemon
sudo npm install -g loopback-cli

# Git - a version control system
sudo apt-get update
sudo apt-get install -y git xclip

# Vim, Curl, Python - Some random useful stuff
sudo apt-get install -y vim curl python3
sudo apt-get install -y python3-pip

# Go
sudo apt-get install -y golang

# postgresql
sudo apt-get install -y postgresql
# start server
# postgres -D /usr/local/pgsql/data >logfile 2>&1 &

# vscode
curl https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > packages.microsoft.gpg
sudo install -o root -g root -m 644 packages.microsoft.gpg /etc/apt/trusted.gpg.d/
sudo sh -c 'echo "deb [arch=amd64 signed-by=/etc/apt/trusted.gpg.d/packages.microsoft.gpg] https://packages.microsoft.com/repos/vscode stable main" > /etc/apt/sources.list.d/vscode.list'
sudo apt-get install apt-transport-https
sudo apt-get update
sudo apt-get install code

# # Java
# sudo apt-get install -y default-jre
# sudo apt-get install -y default-jdk

# # Gimp Image Editor
# sudo apt-get install -y gimp gimp-data gimp-plugin-registry gimp-data-extras

# # TLP - saves battery when Ubuntu is installed on Laptops
# sudo apt-get remove laptop-mode-tools
# sudo add-apt-repository ppa:linrunner/tlp
# sudo apt-get update
# sudo apt-get install -y tlp tlp-rdw smartmontools ethtool
# sudo tlp start
# sudo tlp stat


# fish shell
sudo apt-get install -y fish
chsh -s /usr/bin/fish
mkdir -p ~/.config/fish
echo "set -g -x fish_greeting ''" > ~/.config/fish/config.fish

