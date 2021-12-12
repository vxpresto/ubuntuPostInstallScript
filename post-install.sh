#!/bin/bash
# -*- ENCODING: UTF-8 -*-
# AUTHOR: github.com/vxpresto

bold=$(tput bold)
yellow='\033[1;33m'

echo -e "\n${bold}${yellow}Starting post install..."

# automatic post install for ubuntu derivated linux distros :)

set -e

# update the system
sudo apt update && sudo apt upgrade -y

# install packages
packages=(neovim gcc discord neofetch flatpak code chrome-gnome-shell gnome-tweak-tool chromium)
sudo apt-get install ${packages[@]} -y

# install flatpak packages
flatpak install flathub org.eclipse.Java

# clean 
sudo apt autoremove
sudo apt clean

echo -e "\n${bold}${yellow}Ready to use :)"
