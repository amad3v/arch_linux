#!/usr/bin/env zsh

#---------------------------#
# Update grub configuration #
#---------------------------#

set -e

exec grub-mkconfig -o /boot/grub/grub.cfg "$@"

exit 0

