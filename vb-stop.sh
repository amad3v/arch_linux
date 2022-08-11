#!/usr/bin/env zsh

#-----------------------------#
# Stop virtual machine (VBox) #
#-----------------------------#

MACHINE="$1"

VBoxManage controlvm "$MACHINE" poweroff

exit 0
