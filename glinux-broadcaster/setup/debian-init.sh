#!/bin/bash

#----------------------------------------------------------------
# This script prepares the Debian-stable image for the other
# scripts.
#
# Copyright Raphipod (C) 2021 - Project GLinux
#----------------------------------------------------------------

# As Debian doesn't have sudo by default, we have to install it.

su 

apt-get install sudo -y

# now, add $USER to sudoers group

usermod -aG sudo $USER

exit

systemctl reboot