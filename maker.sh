#!/bin/bash

#----------------------------------------------------------------
# This script installs GLinux-Maker.
#
# Copyright Raphipod (C) 2021 - Project GLinux
#----------------------------------------------------------------

sudo wget https://github.com/BavarianByte/glinux-maker/releases/download/0.21.x/glinux-maker_0.21.deb

sleep 1

sudo dpkg -i glinux-maker_0.21.deb

echo -e "\nInstalled GLinux-Maker\n"

exit 0