#!/bin/bash

#----------------------------------------------------------------
# This script installs necessary files.
#
# Copyright Raphipod (C) 2021 - Project GLinux
#----------------------------------------------------------------

# enable 32-bit libraries

sudo dpkg -add-architecture i386

# make sure all pre-installed programs are up-to-date

sudo apt update

# install small programs

sudo apt-get install tee

# install programs

sudo apt-get install chromium-browser -y

echo "Installed: Chromium"

sudo apt-get install 









exit 0

