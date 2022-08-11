#!/usr/bin/env zsh

#-----------------------------#
# Set GPU via optimus-manager #
#-----------------------------#

function help() {
    echo "omgpu - Optimus Manager GPU setter."
    echo "Usage:"
    echo "\t-h: display this help and exit."
    echo "\t-o n: select mode [0: hybrid, 1: intel (integrated), 2: nvidia]"
}

ARG=""

# remove colon (:) after options without arguments
while getopts ho: flag; do
    case "${flag}" in
    h) help ;;
    o)
        mode=${OPTARG}
        case "${mode}" in
        0) ARG="hybrid" ;;
        1) ARG="integrated" ;;
        2) ARG="nvidia" ;;
        *)
            echo "Invalid mode ${mode}!"
            help
            ;;
        esac
        ;;
    *)
        help
        ;;
    esac
done

optimus-manager --switch ${ARG}

exit 0
