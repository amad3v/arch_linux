#!/usr/bin/env bash

echo "#-----------#"
echo "# Find file #"
echo "#-----------#"

PATTERN="$1"

find "$(pwd)" -iname "$PATTERN" -type f

exit 0
