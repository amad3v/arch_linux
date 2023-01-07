#!/usr/bin/env bash

#---------------------------#
# Update grub configuration #
#---------------------------#

set -e

exec grub-mkconfig -o /boot/grub/grub.cfg "$@"

exit 0

