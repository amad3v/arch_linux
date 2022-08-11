#!/usr/bin/env zsh

#------------------#
# Launch QtConsole #
#------------------#

source "$HOME/.zshrc"

workon study

jupyter qtconsole &

deactivate

exit 0
