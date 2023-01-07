#!/usr/bin/env bash

echo "#----------------------------#" 
echo "#  manual PyCharm CE update  #"
echo "#----------------------------#"

MASTER_PATH="$HOME/apps/pycharm-ce"

PROP_FILE="idea.properties"

cd "$MASTER_PATH/system/tmp/patch-update" || exit 0

cp "$MASTER_PATH/bin/$PROP_FILE" "$MASTER_PATH/bin/$PROP_FILE.bkp"

java -jar ./* "$MASTER_PATH"

cp "$MASTER_PATH/bin/$PROP_FILE.bkp" "$MASTER_PATH/bin/$PROP_FILE"

rm -rf "$MASTER_PATH/system/tmp/patch-update/*"

exit 0
