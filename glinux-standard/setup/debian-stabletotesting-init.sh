#!/bin/bash

#----------------------------------------------------------------
# This script prepares the Debian-stable image for the other
# scripts.
#
# Copyright Raphipod (C) 2021 - Project GLinux
#----------------------------------------------------------------

# Now, we switch the package repositories from "stable" to "testing"

sudo sed -i 's/buster/testing/g' /etc/apt/sources.list

# Security updates are only maintained on "stable"-branch, so we're commenting out these lines.

sudo sed -e '/debian-security/ s/^#*/#/g' -i /etc/apt/sources.list

sudo apt update

sudo apt upgrade -y

echo -e "\nSuccessfully updated Debian Stable to Debian Testing. Now rebooting.\n"

sleep 5

sudo systemctl reboot

exit 0