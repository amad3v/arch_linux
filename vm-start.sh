#!/usr/bin/env bash

#--------------------------------------#
# Start virtual machine (virt-manager) #
#--------------------------------------#

OS_NAME="$1"

sudo virsh start "$OS_NAME"

virt-viewer -c qemu:///system "$OS_NAME" #>/dev/null 2>&1
#virt-viewer -c qemu:///system "$OS_NAME" >/dev/null 2>&1

exit 0
