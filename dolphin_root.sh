#!/usr/bin/env zsh

#-----------------------#
# Start dolphin as root #
#-----------------------#

if [ "$XDG_SESSION_TYPE" = "wayland" ]; then
    xhost +si:localuser:root
    pkexec env DISPLAY="$DISPLAY" XAUTHORITY="$XAUTHORITY" KDE_SESSION_VERSION=5 KDE_FULL_SESSION=true dbus-launch dolphin %U
    xhost -si:localuser:root
else
    pkexec env DISPLAY="$DISPLAY" XAUTHORITY"=$XAUTHORITY" KDE_SESSION_VERSION=5 KDE_FULL_SESSION=true dolphin %U
fi

exit 0
