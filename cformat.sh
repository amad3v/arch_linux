#!/usr/bin/env zsh

#---------------------#
# Custom clang format #
#---------------------#

find "$(pwd)" -iname "*.h" -o -iname "*.cpp" -type f -exec clang-format -style=file -i {} \;

exit 0
