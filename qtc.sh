#!/usr/bin/env bash

#------------------#
# Launch QtConsole #
#------------------#

# source "$HOME/.zshrc"

source /usr/bin/virtualenvwrapper.sh

workon study

jupyter qtconsole 

#deactivate

#exit 0
sleep 20

