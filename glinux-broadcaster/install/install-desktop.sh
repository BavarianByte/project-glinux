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

sudo tasksel install ubuntu-desktop-minimal

echo -e "\nDesktop is installed. Proceeding with reboot"

reboot

exit 0