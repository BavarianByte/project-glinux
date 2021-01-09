#!/bin/bash

#----------------------------------------------------------------
# This script installs necessary drivers.
#
# Copyright Raphipod (C) 2021 - Project GLinux
#----------------------------------------------------------------

# Install Intel WIFI-Drivers



echo "Installed: Intel WiFi-Drivers"

# Install AMD-Graphics

sudo add-apt-repository ppa:kisak/kisak-mesa -y
sudo apt update
sudo apt install libgl1-mesa-dri:i386 mesa-vulkan-drivers mesa-vulkan-drivers:i386 -y

echo "Installed: AMD-Graphics"

# Install NVIDIA-Graphics

sudo add-apt-repository ppa:graphics-drivers/ppa -y
sudo apt update
sudo apt install nvidia-driver-450 libnvidia-gl-450 libnvidia-gl-450:i386 libvulkan1 libvulkan1:i386 -y

echo "Installed: NVIDIA-Graphics"

exit 0
