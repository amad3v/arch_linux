#!/usr/bin/env bash

echo "#---------------------#"
echo "# Custom clang format #"
echo "#---------------------#"

find "$(pwd)" -iname "*.h" -o -iname "*.cpp" -type f -exec clang-format -style=file -i {} \;

exit 0
