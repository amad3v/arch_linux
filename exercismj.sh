#!/usr/bin/env bash

echo "#---------------------------#" 
echo "# set rust track for jouini #"
echo "#   and download exercise   #"
echo "#---------------------------#"

CMD="$1"

cp /common/workspace/exercism/config/jouinim.json "$HOME/.config/exercism/user.json"

exercism download --exercise="$CMD" --track=rust

exit 0

