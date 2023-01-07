#!/usr/bin/env bash

echo "#--------------------#" 
echo "# find app link path #"
echo "#--------------------#"

APPNAME="$1"

ls --color=tty -l "$(which "$APPNAME")"

exit 0
