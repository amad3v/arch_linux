#!/usr/bin/env bash

echo "#-------------#" 
echo "# KDE log out #"
echo "#-------------#"

qdbus org.kde.ksmserver /KSMServer logout 0 0 0

exit 0
