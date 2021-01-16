#!/bin/bash

#----------------------------------------------------------------
# This script updates all pre-installed packages.
#
# Copyright Raphipod (C) 2021 - Project GLinux
#----------------------------------------------------------------

# Update the installed packages

sudo apt-get update

echo "Updated packages."

# Upgrade the installed packages

sudo apt-get upgrade

echo "Upgraded packages."

exit 0