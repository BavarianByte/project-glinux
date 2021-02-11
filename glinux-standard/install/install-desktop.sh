#!/bin/bash

#----------------------------------------------------------------
# This script installs the userspace (DE/WM) of GLinux.
#
# Copyright Raphipod (C) 2021 - Project GLinux
#----------------------------------------------------------------

# make sure everything is up-to-date

sudo apt update

echo -e "\nEverything is updated. Proceeding with installing the DE."

# install Desktop Environment

sudo apt-get install kde-plasma-desktop

echo -e "\nKDE Plasma is installed. Proceeding with reboot"

systemctl reboot

exit 0