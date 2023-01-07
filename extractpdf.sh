#!/usr/bin/env bash

echo "#------------------------------------------#" 
echo "# Extract a range of pages from a pdf file #"
echo "#------------------------------------------#"

SPACES="  "
COUNT="$#"
EXPECTED=3
IF="$1"  # Input file
OF="$2"  # Output file
RNG="$3" # pages range

function help() {
    echo "$(basename "$0") [-h] IF OF RNG --- Extract a range of pages from a pdf file."
    echo "where:"
    echo "${SPACES}-h${SPACES}show this help text"
    echo "${SPACES}IF${SPACES}input file."
    echo "${SPACES}OF${SPACES}output file."
    printf "%sRNG%spages range.\n" "${SPACES}" "${SPACES}"
}

function extractpages() {
    if [ "$COUNT" -ne "$EXPECTED" ]; then
        help
        exit 1
    fi

    # Split file
    printf ">> Extracting...\n"

    pdftk A="$IF" cat "$RNG" output "$OF"

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

extractpages

exit 0
