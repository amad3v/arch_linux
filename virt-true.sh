#!/usr/bin/env zsh

#--------------------------------------#
# Check if CPU supports virtualisation #
#--------------------------------------#

grep -Ec '(vmx|svm)' /proc/cpuinfo

exit 0
