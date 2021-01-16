#!/bin/bash

#----------------------------------------------------------------
# This script installs necessary files.
#
# Copyright Raphipod (C) 2021 - Project GLinux
#----------------------------------------------------------------

# enable 32-bit libraries (needed for Steam and 32-bit drivers.)

sudo dpkg -add-architecture i386

# make sure all pre-installed programs are up-to-date

sudo apt update

# install small programs

sudo apt-get install gnome-session gnome-terminal tasksel -y

# install programs

sudo apt-get install chromium-browser -y

echo "Installed: Chromium"












exit 0

