#!/bin/bash

#----------------------------------------------------------------
# This script installs necessary files for GLinux-Broadcaster.
#
# Copyright Raphipod (C) 2021 - Project GLinux
#----------------------------------------------------------------

# enable 32-bit libraries (needed for Steam and 32-bit drivers.)

sudo dpkg -add-architecture i386

# make sure all pre-installed programs are up-to-date

sudo apt update

# install small programs

sudo apt-get install gnome-session gnome-terminal tasksel -y

# install programs used in GLinux

sudo apt-get install chromium-browser -y

echo "Installed: Chromium"

sudo apt-get install kdenlive

echo "Installed: Kdenlive"

sudo apt install obs-studio

echo "Installed: OBS-Studio"

sudo apt install steam-installer

echo "Installed: Steam-Installer; WARNING: This is just the installer, Steam isn't really installed yet."

sudo add-apt-repository ppa:lutris-team/lutris
sudo apt update
sudo apt install lutris

echo "Installed: Lutris"





exit 0

