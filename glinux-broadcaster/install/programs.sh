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

sudo apt-get install curl && libcurl4 -y

sudo apt-get install gawk && libsigsegv2 -y

# install programs necessary for glinux-maker

sudo apt install squashfs-tools && genisoimage -y

# install programs used in GLinux-Broadcaster

sudo snap install chromium

echo -e "\nInstalled: Chromium"

sudo apt-get install obs-studio

echo -e "\nInstalled: OBS-Studio"

sudo snap install shotcut --classic

echo -e "\nInstalled: Shotcut"

echo "deb http://deb.debian.org/debian/ buster main contrib non-free" | sudo tee /etc/apt/sources.list

sudo apt install mesa-vulkan-drivers libglx-mesa0:i386 mesa-vulkan-drivers:i386 libgl1-mesa-dri:i386

sudo apt install steam

echo -e "\nInstalled: Steam"

sudo wget https://github.com/flavioislima/HeroicGamesLauncher/releases/download/v1.4.0/heroic_1.4.0_amd64.deb
sudo dpkg -i heroic_1.4.0_amd64.deb

sleep 2

sudo rm heroic_1.4.0_amd64.deb

echo -e "\Installed: Heroic Games Launcher"

sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 37B90EDD4E3EFAE4
sudo add-apt-repository ppa:lutris-team/lutris

sleep 2

sudo apt update
sudo apt install lutris

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