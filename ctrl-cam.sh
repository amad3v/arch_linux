#!/usr/bin/env zsh

#------------------------#
# Enable/Disable webcam  #
#    reboot required     #
#------------------------#

function help() {
    echo "ctrl-cam - Optimus Manager GPU setter."
    echo "Usage:"
    echo "\t-h: display this help and exit."
    echo "\t-d: disable camera"
    echo "\t-e: enable camera"
}

# remove colon (:) after options without arguments
while getopts hde flag; do
    case "${flag}" in
    h) help ;;
    e)
        sed -i 's/# blacklist ucvideo/blacklist ucvideo/' "/etc/modprobe.d/blacklist.conf"
        echo "Camera enabled"
        ;;
    d)
        sed -i 's/blacklist ucvideo/# blacklist ucvideo/' "/etc/modprobe.d/blacklist.conf"
        echo "Camera disabled"
        ;;
    *) help ;;
    esac
done

echo "Restart to take effect."

exit 0
