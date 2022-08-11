#!/usr/bin/env zsh

#-------------#
# Shred files #
#-------------#

FILE="$1"

# check if file is provided
if [ -z "$FILE" ]; then
    echo "Shredder requires a file path"

    exit 1
else
    echo "\$FILE is $FILE"
fi

# check if provided file exist
if [ ! -f "$FILE" ]; then
    echo "$FILE does not exist."
    exit 1
fi

# check if the current user is the owner of the file
OWNER="$(stat --format '%U' "$1")"
if [ "x${OWNER}" != "x${USER}" ]; then
    echo "File owned by $OWNER"
    exit 1
fi

# get confirmation
read -p "Are you sure you want to shred the file? " -n 1 -r
echo # (optional) move to a new line

if [[ $REPLY =~ ^[Yy]$ ]]; then
    echo "Reading file size"
    echo "#############################"
    read -r blocks blocksize < <(stat -c "%b %B" "${FILE}")
    echo "Overwriting file's content"
    echo "#############################"
    dd if=/dev/zero bs="${blocksize}" count="${blocks}" of="${FILE}" conv=notrunc
    echo "Deleting file"
    echo "#############################"
    rm "${FILE}"
    echo "All done"
else
    echo "File unchanged"
fi

exit 0
