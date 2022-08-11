#!/bin/zsh

#---------------------------------------------#
# Run virtual machine in headless mode (VBox) #
#---------------------------------------------#


VOLUME="$1"
PARAM="$2"

if [ "$PARAM" = "h" ]; then
	VBoxManage startvm "$VOLUME" --type headless
elif [ "$PARAM" = "s" ]; then
	VBoxManage controlvm "$VOLUME" acpipowerbutton
else
	VBoxManage startvm "$VOLUME" 
fi
