#!/bin/bash

#----------------------------------------------------------------
# This script prepares the Debian-stable image for the other
# scripts.
#
# Copyright Raphipod (C) 2021 - Project GLinux
#----------------------------------------------------------------

# Execute this script with root!
# As Debian doesn't have sudo by default, we have to install it.

apt-get install sudo -y

# now, add $USER to sudoers group

/sbin/usermod -aG sudo $USER

systemctl reboot