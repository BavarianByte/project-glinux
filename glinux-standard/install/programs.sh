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

sudo apt-get install -y curl && libcurl4

sudo apt-get install -y gawk && libsigsegv2

# install programs necessary for glinux-maker

sudo apt install -y squashfs-tools

sudo apt install -y genisoimage

# install programs used in GLinux

sudo snap install chromium

echo -e "\nInstalled: Chromium\n"

sudo wget https://cdn.akamai.steamstatic.com/client/installer/steam.deb
sudo dpkg -i steam.deb

sleep 2

sudo rm steam.deb

echo -e "\nInstalled: Steam\n"

sudo wget https://github.com/flavioislima/HeroicGamesLauncher/releases/download/v1.5.3/heroic_1.5.3_amd64.deb
sudo dpkg -i heroic_1.5.3_amd64.deb

sleep 2

sudo rm heroic_1.5.3_amd64.deb

echo -e "\Installed: Heroic Games Launcher\n"

echo "deb http://download.opensuse.org/repositories/home:/strycore/Debian_10/ ./" | sudo tee /etc/apt/sources.list.d/lutris.list

wget -q https://download.opensuse.org/repositories/home:/strycore/Debian_10/Release.key -O- | sudo apt-key add -

sudo apt update

sudo apt install lutris -y

echo -e "\nInstalled: Lutris\n"

wget -nc https://dl.winehq.org/wine-builds/winehq.key
sudo apt-key add winehq.key

echo "deb https://dl.winehq.org/wine-builds/debian/ sid main" | sudo tee /etc/apt/sources.list.d/winehq.list
sudo apt update

sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 818A435C5FCBF54A

sleep 2

sudo apt-get update
sudo apt install --install-recommends winehq-stable

echo -e "\nInstalled: Wine\n" 

exit 0