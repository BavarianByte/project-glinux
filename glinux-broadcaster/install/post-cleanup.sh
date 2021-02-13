#!/bin/bash

#----------------------------------------------------------------
# This script cleans up unnecessary files after installation.
#
# Copyright Raphipod (C) 2021 - Project GLinux
#----------------------------------------------------------------

# Remove unwanted packages

sudo apt autoremove

# Remove old kernel packages

sudo apt --purge autoremove

# Clean APT cache 

sudo apt-get clean

# Remove "orphaned" packages

sudo deborphan | xargs sudo apt-get -y remove --purge

exit 0