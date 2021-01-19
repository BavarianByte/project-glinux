#!/bin/bash

#----------------------------------------------------------------
# This script updates all pre-installed packages.
#
# Copyright Raphipod (C) 2021 - Project GLinux
#----------------------------------------------------------------

# Update the installed packages

sudo apt-get update

echo -e "\nUpdated packages."

# Upgrade the installed packages

sudo apt-get upgrade

echo -e "\nUpgraded packages."

exit 0