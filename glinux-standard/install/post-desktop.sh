#!/bin/bash

#----------------------------------------------------------------
# This script removes software that was installed by the DE.
#
# Copyright Raphipod (C) 2021 - Project GLinux
#----------------------------------------------------------------

sudo apt remove firefox -y

sudo apt remove byobu -y

sudo apt autoremove -y
sudo apt clean