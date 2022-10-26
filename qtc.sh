#!/usr/bin/env zsh

#------------------#
# Launch QtConsole #
#------------------#

# source "$HOME/.zshrc"

source /usr/bin/virtualenvwrapper.sh

workon study

jupyter qtconsole 

deactivate

exit 0
