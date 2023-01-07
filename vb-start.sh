#!/usr/bin/env bash

#-----------------------------------------------#
# Start virtual machine in headless mode (VBox) #
#-----------------------------------------------#


MACHINE="$1"

VBoxManage startvm "$MACHINE"

exit 0
