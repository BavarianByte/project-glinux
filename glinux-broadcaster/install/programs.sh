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

# install small programs

sudo apt-get install gnome-session gnome-terminal tasksel -y

sudo apt-get install snapd -y

# install programs necessary for glinux-maker

sudo apt install squashfs-tools && genisoimage -y

# install programs used in GLinux-Broadcaster

sudo apt-get install chromium-browser -y

echo -e "\nInstalled: Chromium"

sudo apt-get install obs-studio

echo -e "\nInstalled: OBS-Studio"

sudo snap install shotcut --classic

echo -e "\nInstalled: Shotcut"

sudo apt install steam-installer

echo -e "\nInstalled: Steam-Installer; WARNING: This is just the installer, Steam isn't really installed yet."

sudo add-apt-repository ppa:lutris-team/lutris
sudo apt update
sudo apt install lutris

echo -e "\nInstalled: Lutris"

exit 0