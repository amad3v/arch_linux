#!/usr/bin/env zsh

#-----------------------------------#
# Convert SVG to PDF using inkscape #
#-----------------------------------#

FILE_NAME="$1"

inkscape -D -z --file="$FILE_NAME".svg --export-pdf="$FILE_NAME".pdf --export-latex 2>/dev/null

exit 0
