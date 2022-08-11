#!/usr/bin/env zsh

#--------------------------------------#
# Check if CPU supports virtualisation #
#--------------------------------------#

egrep -c '(vmx|svm)' /proc/cpuinfo

exit 0
