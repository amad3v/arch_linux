#!/usr/bin/env zsh

#-------------#
# Control fan #
#-------------#

# Entered parameter
# 0: Quiet
# 1: Balanced
# 2: Performance
CHOICE="$1"

fan_help() {
    printf "Supported modes:\n"
    printf "\t0: Quiet\n"
    printf "\t1: Cool Bottom\n"
    printf "\t2: Balanced\n"
    printf "\t3: Performance\n"
}

if [ "$CHOICE" == "h" ]; then
    fan_help
    exit 0
fi

if [ "$CHOICE" == 0 ]; then
    MODE="quiet"
elif [ "$CHOICE" == 1 ]; then
    MODE="cool-bottom"
elif [ "$CHOICE" == 2 ]; then
    MODE="balanced"
elif [ "$CHOICE" == 3 ]; then
    MODE="performance"
else
    printf "Incorrect selection\n\n"
    fan_help
    exit 1
fi

sudo smbios-thermal-ctl --set-thermal-mode="$MODE"

printf "Done! New mode: %s \U1F44F\n" "$MODE"

exit 0
