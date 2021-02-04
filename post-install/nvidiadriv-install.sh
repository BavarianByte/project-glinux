#!/bin/bash

#-------------------------------------------------------------------
# NVIDIA-Graphics driver installer for existing installs of GLinux.
#
# Copyright Raphipod (C) 2021 - Project GLinux
#-------------------------------------------------------------------

sudo apt-get update

sudo apt-get install nvidia-drivers-460 -y

sleep 2

echo -e "\nInstalled NVIDIA-Drivers."

exit 0