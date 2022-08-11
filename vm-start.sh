#!/usr/bin/env zsh

#--------------------------------------#
# Start virtual machine (virt-manager) #
#--------------------------------------#

OS_NAME="$1"

sudo virsh start "$OS_NAME"

virt-viewer -c qemu:///system "$OS_NAME" 2>/dev/null

exit 0
