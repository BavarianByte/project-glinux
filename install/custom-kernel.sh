#!/bin/bash

#----------------------------------------------------------------
# This script installs the custom kernel (Xanmod).
#
# Copyright Raphipod (C) 2021 - Project GLinux
#----------------------------------------------------------------

# adding source & install custom-kernel

echo 'deb http://deb.xanmod.org releases main' | sudo tee /etc/apt/sources.list.d/xanmod-kernel.list && wget -qO - https://dl.xanmod.org/gpg.key | sudo apt-key add -
sudo apt update && sudo apt install linux-xanmod -y

echo "Installing custom kernel..."

exit 0
