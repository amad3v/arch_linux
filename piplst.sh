#!/usr/bin/env bash

#---------------------------------#
# List installed python libraries #
#---------------------------------#

# sed source
# https://stackoverflow.com/a/1252191

# 1. Create a label via :a.
# 2. Append the current and next line to the pattern space via N.
# 3. If we are before the last line, branch to the created label $!ba ($! means not to do it on the last line as there should be one final newline).
# 4. Finally the substitution replaces every newline with a space on the pattern space (which is the whole file).

pip list | awk -f "./pip_list.awk" | sed ':a;N;$!ba;s/\n/ /g'

exit 0
