#!/usr/bin/env bash

echo "#---------------#" 
echo "# set MTU value #"
echo "#---------------#"

VALUE=$1

if [ -z "$VALUE" ]; then
    VALUE=1492
fi

sudo ip link set dev wlan0 mtu "$VALUE"

exit 0
