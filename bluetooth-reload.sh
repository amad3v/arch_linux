#!/usr/bin/env bash

echo "#-------------------------#"
echo "# Reload bluetooth driver #"
echo "#-------------------------#"

sudo modprobe -r btusb
sudo modprobe btusb

exit 0
