#!/usr/bin/env bash

#-------------------#
# Splits a pdf file #
#-------------------#

SPACES="  "
COUNT="$#"
EXPECTED=4
# Input file
I_FILE="$1"
# Output file
O_FILE="$2"
# First page
F_PAGE="$3"
# Last page
L_PAGE="$4"

function help() {
    echo "$(basename "$0") [-h] IF OF SP EP -- Split a PDF document."
    echo "where:"
    echo "${SPACES}-h${SPACES}show this help text"
    echo "${SPACES}IF${SPACES}input file."
    echo "${SPACES}OF${SPACES}output file."
    echo "${SPACES}SP${SPACES}start page."
    # echo "${SPACES}EP${SPACES}end page.\n"
    printf "%sEP%send page.\n" "${SPACES}" "${SPACES}"
}

function splitfile() {
    if [ "$COUNT" -ne "$EXPECTED" ]; then
        help
        exit 1
    fi

    # Split file
    printf ">> Splitting...\n"

    gs -sDEVICE=pdfwrite -dNOPAUSE -dBATCH -dSAFER -dFirstPage="$F_PAGE" -dLastPage="$L_PAGE" -sOutputFile="$O_FILE" "$I_FILE" > /dev/null

    printf ">> Done! \U1F44F\n"
}

while getopts ':h' option; do
    case "$option" in
    h)
        help
        exit 0
        ;;
        #\?) # incorrect option
    *) ;;

    esac
done

splitfile

exit 0
