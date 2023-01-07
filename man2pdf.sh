#!/usr/bin/env bash

echo "#-------------#" 
echo "#  man to pdf #"
echo "#-------------#"

CMD="$1"

man -t "$CMD" | ps2pdf - "./$CMD.pdf"

exit 0

