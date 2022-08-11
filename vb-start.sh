#!/usr/bin/env zsh

#-----------------------------------------------#
# Start virtual machine in headless mode (VBox) #
#-----------------------------------------------#


MACHINE="$1"

VBoxManage startvm "$MACHINE"

exit 0
