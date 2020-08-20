#!/bin/bash
# Sojharo's Development Machine Setup on Ubuntu
# Author : Sojharo
#
# set software sources to server for united states
#
# For other software:
## VLC from software center
## virtual box from software center
## PDF Mod from software center
## shutter from software center
## kazam from software center
## install unity tweak tool from software center
## install rebar: pull from github (for building erlang applications)
## Learn from https://github.com/rafaelstz/simplesh

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

# fish shell
sudo apt-get install -y fish
chsh -s /usr/bin/fish
mkdir -p ~/.config/fish
echo "set -g -x fish_greeting ''" > ~/.config/fish/config.fish

# # Gimp Image Editor
# sudo apt-get install -y gimp gimp-data gimp-plugin-registry gimp-data-extras

# # TLP - saves battery when Ubuntu is installed on Laptops
# sudo apt-get remove laptop-mode-tools
# sudo add-apt-repository ppa:linrunner/tlp
# sudo apt-get update
# sudo apt-get install -y tlp tlp-rdw smartmontools ethtool
# sudo tlp start
# sudo tlp stat
