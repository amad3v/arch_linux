#!/usr/bin/env zsh

#-------------------
# Find app link path
#-------------------

APPNAME="$1"

ls --color=tty -l "$(which "$APPNAME")"

exit 0
