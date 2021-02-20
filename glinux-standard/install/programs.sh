#!/bin/bash

#----------------------------------------------------------------
# This script installs necessary files.
#
# Copyright Raphipod (C) 2021 - Project GLinux
#----------------------------------------------------------------

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

echo -e "\nInstalled: Chromium"

echo "deb http://deb.debian.org/debian/ buster main contrib non-free" | sudo tee -a /etc/apt/sources.list

sudo apt install steam

echo -e "\nInstalled: Steam"

sudo wget https://github.com/flavioislima/HeroicGamesLauncher/releases/download/v1.5.3/heroic_1.5.3_amd64.deb
sudo dpkg -i heroic_1.5.3_amd64.deb

sleep 2

sudo rm heroic_1.5.3_amd64.deb

echo -e "\Installed: Heroic Games Launcher"

echo "deb http://download.opensuse.org/repositories/home:/strycore/Debian_10/ ./" | sudo tee /etc/apt/sources.list.d/lutris.list

wget -q https://download.opensuse.org/repositories/home:/strycore/Debian_10/Release.key -O- | sudo apt-key add -

sudo apt update

sudo apt install lutris -y

echo -e "\nInstalled: Lutris"

wget -nc https://dl.winehq.org/wine-builds/winehq.key
sudo apt-key add winehq.key

echo "deb https://dl.winehq.org/wine-builds/debian/ sid main" | sudo tee /etc/apt/sources.list.d/winehq.list
sudo apt update

sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 818A435C5FCBF54A

sleep 2

sudo apt-get update
sudo apt install --install-recommends winehq-stable

echo -e "\nInstalled: Wine" 

exit 0