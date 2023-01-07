#!/usr/bin/env bash

echo "#-----------------------#" 
echo "# Enable/Disable webcam #"
echo "#    reboot required    #"
echo "#-----------------------#"

SPACES="  "
FILE="/etc/modprobe.d/blacklist.conf"
ENABLED="blacklist ucvideo"
DISABLED="# blacklist ucvideo"

function help() {
    echo "ctrl-cam --- Enable/DIsable webcam."
    echo "Usage:"
    echo "${SPACES}-h: display this help and exit."
    echo "${SPACES}-d: disable camera"
    echo "${SPACES}-e: enable camera"
}

# remove colon (:) after options without arguments
while getopts hde flag; do
    case "${flag}" in
    h) help ;;
    e)
        # sed -i 's/# blacklist ucvideo/blacklist ucvideo/' "$FILE"
        sd "$DISABLED" "$ENABLED" "$FILE"
        printf "Camera enabled."
        ;;
    d)
        # sed -i 's/blacklist ucvideo/# blacklist ucvideo/' "$FILE"
        sd "$ENABLED" "$DISABLED" "$FILE"
        echo "Camera disabled."
        ;;
    *) help ;;
    esac
done

echo "Restart to take effect."

exit 0
