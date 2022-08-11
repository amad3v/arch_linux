#!/usr/bin/env zsh

#-------------------------#
# Reload bluetooth driver #
#-------------------------#

sudo modprobe -r btusb
sudo modprobe btusb

exit 0
