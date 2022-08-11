#!/usr/bin/env zsh

#-------------------#
# Splits a pdf file #
#-------------------#

# Input file
I_FILE="$1"
# Output file
O_FILE="$2"
# First page
F_PAGE="$3"
# Last page
L_PAGE="$4"

# Split file
printf ">> Splitting...\n"

gs -sDEVICE=pdfwrite -dNOPAUSE -dBATCH -dSAFER -dFirstPage="$F_PAGE" -dLastPage="$L_PAGE" -sOutputFile="$O_FILE" "$I_FILE" 2>/dev/null

printf "Done! \U1F44F\n"

exit 0
