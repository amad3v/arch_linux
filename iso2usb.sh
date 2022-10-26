#!/usr/bin/env zsh

##########################
# write iso to usb drive #
##########################

ISO=$1
DRIVE=$2

echo "First argument is the path to iso file"
echo "second argument is the letter of the drive"
echo "if the drive is /dev/sdX just type X"
echo "example: iso2usb /path/to/iso a"
echo ""

sudo dd bs=4M if=$ISO of="/dev/sd$DRIVE" conv=fsync oflag=direct status=progress

exit 0
