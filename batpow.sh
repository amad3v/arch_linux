#!/usr/bin/env bash

echo "#----------------#"
echo "# Battery health #"
echo "#----------------#"

upower -i /org/freedesktop/UPower/devices/battery_BAT0 | grep 'energy-'

exit 0
