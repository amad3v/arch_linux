#!/usr/bin/env zsh

#-----------#
# Find file #
#-----------#

PATTERN="$1"

find "$(pwd)" -iname "$PATTERN" -type f

exit 0
