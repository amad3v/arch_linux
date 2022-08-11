#!/usr/bin/env zsh

#----------------#
# Battery health #
#----------------#

upower -i /org/freedesktop/UPower/devices/battery_BAT0 | grep 'energy-'

exit 0
