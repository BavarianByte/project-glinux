#!/bin/bash

#----------------------------------------------------------------
# This script installs necessary drivers.
#
# Copyright Raphipod (C) 2021 - Project GLinux
#----------------------------------------------------------------

# Install AMD-Graphics

sudo add-apt-repository ppa:kisak/kisak-mesa -y
sudo apt update
sudo apt install libgl1-mesa-dri:i386 mesa-vulkan-drivers mesa-vulkan-drivers:i386 -y

echo -e "\nInstalled: AMD-Graphics"

sudo apt autoremove

# I can't pack proprietary NVIDIA-Drivers due to obvious reasons.

exit 0