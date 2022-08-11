#!/usr/bin/env zsh

#------------------------------------#
# Linter/formatter for octave/matlab #
#------------------------------------#

FILENAME="$1"

mh_style --fix "$FILENAME"

exit 0
