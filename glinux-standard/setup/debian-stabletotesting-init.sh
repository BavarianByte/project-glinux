#!/bin/bash

#----------------------------------------------------------------
# This script prepares the Debian-stable image for the other
# scripts.
#
# Copyright Raphipod (C) 2021 - Project GLinux
#----------------------------------------------------------------

# Now, we switch the package repositories from "stable" to "testing"

sudo sed -i 's/buster/testing/g' /etc/apt/sources.list

sudo apt update

sudo apt upgrade -y

sudo systemctl reboot

echo "\nSuccessfully updated Debian Stable to Debian Testing"

exit 0