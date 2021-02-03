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

sudo apt-get install gnome-session gnome-terminal tasksel -y

sudo apt-get install snapd -y

sudo apt-get install libfaudio0 -y

# install programs necessary for glinux-maker

sudo apt install squashfs-tools && genisoimage -y

# install programs used in GLinux-Broadcaster

sudo apt-get install chromium-browser -y

echo "\nInstalled: Chromium"

sudo apt-get install obs-studio

echo "\nInstalled: OBS-Studio"

sudo snap install shotcut --classic

echo "\nInstalled: Shotcut"

sudo apt install steam

echo "\nInstalled: Steam"

sudo add-apt-repository ppa:lutris-team/lutris
sudo apt update
sudo apt install lutris

echo "\nInstalled: Lutris"

wget -nc https://dl.winehq.org/wine-builds/winehq.key
sudo apt-key add winehq.key

echo "deb https://dl.winehq.org/wine-builds/debian/ sid main" | sudo tee /etc/apt/sources.list.d/winehq.list
sudo apt update

sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 818A435C5FCBF54A

sudo apt install --install-recommends winehq-stable

echo -e "\nInstalled: Wine" 

exit 0