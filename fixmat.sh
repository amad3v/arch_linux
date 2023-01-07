#!/usr/bin/env bash

echo "#------------------------------------#"
echo "# Linter/formatter for octave/matlab #"
echo "#------------------------------------#"

FILENAME="$1"

mh_style --fix "$FILENAME"

exit 0
