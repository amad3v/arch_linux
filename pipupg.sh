#!/usr/bin/env bash

#------------------------------------#
# Upgrade installed python libraries #
#------------------------------------#

pip list --outdated --format=freeze | grep -v '^\-e' | cut -d = -f 1 | xargs -n1 pip install --upgrade

exit 0
