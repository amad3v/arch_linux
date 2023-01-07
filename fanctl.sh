#!/usr/bin/env bash

echo "#-------------#"
echo "# Control fan #"
echo "#-------------#"

# Entered parameter
# 0: Quiet
# 1: Balanced
# 2: Performance
CHOICE="$1"
SPACES="  "

fan_help() {
    printf "%s [-h] MODE --- set thermal mode\n\n" "$(basename "$0")"
    printf "where:\n"
    printf "%s-h: Show this help\n" "$SPACES"
    printf "%s 0: Quiet\n" "$SPACES"
    printf "%s 1: Cool Bottom\n" "$SPACES"
    printf "%s 2: Balanced\n" "$SPACES"
    printf "%s 3: Performance\n" "$SPACES"
}

while getopts ':h' option; do
    case "$option" in
    h)
        fan_help
        exit 0
        ;;
        #\?) # incorrect option
    *) ;;

    esac
done

case "$CHOICE" in
0) MODE="quiet" ;;
1) MODE="cool-bottom" ;;
2) MODE="balanced" ;;
3) MODE="performance" ;;
*)
    printf "Incorrect selection\n\n"
    fan_help
    exit 1
    ;;
esac

if [[ "$EUID" = 0 ]]; then
    smbios-thermal-ctl --set-thermal-mode="$MODE"
else
    echo "Execute with sudo."
    exit 1
fi

printf "Done! New mode: %s \U1F44F\n" "$MODE"

exit 0
