#!/bin/bash

#----------------------------------------------------------------
# This script installs necessary files.
#
# Copyright Raphipod (C) 2021 - Project GLinux
#----------------------------------------------------------------

# enable 32-bit libraries (needed for Steam and 32-bit drivers.)

sudo dpkg --add-architecture i386

# make sure all pre-installed programs are up-to-date

sudo apt update

# install small/internal/system-relevant programs

sudo apt-get install snapd -y

sudo apt-get install libfaudio0 -y

sudo apt-get install wget -y

# install programs necessary for glinux-maker

sudo apt install squashfs-tools && genisoimage -y

# install programs used in GLinux-Broadcaster

sudo snap install chromium

echo -e "\nInstalled: Chromium"

sudo apt-get install obs-studio

echo -e "\nInstalled: OBS-Studio"

sudo snap install shotcut --classic

echo -e "\nInstalled: Shotcut"

sudo apt install steam

echo -e "\nInstalled: Steam"

wget https://github.com/flavioislima/HeroicGamesLauncher/releases/download/v1.4.0/heroic_1.4.0_amd64.deb
sudo dpkg -i heroic_1.4.0_amd64.deb

echo -e "\Installed: Heroic Games Launcher"

sudo add-apt-repository ppa:lutris-team/lutris
sudo apt update
sudo apt install lutris

echo -e "\nInstalled: Lutris"

wget -nc https://dl.winehq.org/wine-builds/winehq.key
sudo apt-key add winehq.key

echo "deb https://dl.winehq.org/wine-builds/debian/ sid main" | sudo tee /etc/apt/sources.list.d/winehq.list
sudo apt update

sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 818A435C5FCBF54A

sudo apt install --install-recommends winehq-stable

echo -e "\nInstalled: Wine" 

exit 0