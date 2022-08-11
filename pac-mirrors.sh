#!/usr/bin/env zsh

#----------------------------#
# Update pacman repositories #
#----------------------------#

REF_AWK="$HOME/scripts/reflector.awk"

reflector --country $(awk -f "$REF_AWK" countries) --age 6 --protocol https --sort rate -n 10 --save /etc/pacman.d/mirrorlist

exit 0
