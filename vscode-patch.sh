#!/usr/bin/env sh

if [ "${1}" = "-R" ]; then
  sed -i -e 's/^[[:blank:]]*"serviceUrl":.*/    "serviceUrl": "https:\/\/open-vsx.org\/vscode\/gallery",/' \
    -e '/^[[:blank:]]*"cacheUrl/d' \
    -e 's/^[[:blank:]]*"itemUrl":.*/    "itemUrl": "https:\/\/open-vsx.org\/vscode\/item"/' \
    -e 's/^[[:blank:]]*"nameLong":.*/    "nameLong": "VSCodium",/' \
    -e '/^[[:blank:]]*"linkProtectionTrustedDomains/d' \
    -e '/^[[:blank:]]*"documentationUrl/i\  "linkProtectionTrustedDomains": ["https://open-vsx.org"],' \
    /tmp/product.json

else
  sed -i -e 's/^[[:blank:]]*"serviceUrl":.*/    "serviceUrl": "https:\/\/marketplace.visualstudio.com\/_apis\/public\/gallery",/' \
    -e '/^[[:blank:]]*"cacheUrl/d' \
    -e '/^[[:blank:]]*"serviceUrl/a\    "cacheUrl": "https:\/\/vscode.blob.core.windows.net\/gallery\/index",' \
    -e 's/^[[:blank:]]*"itemUrl":.*/    "itemUrl": "https:\/\/marketplace.visualstudio.com\/items"/' \
    -e 's/^[[:blank:]]*"nameLong":.*/    "nameLong": "Visual Studio Code",/' \
    -e '/^[[:blank:]]*"linkProtectionTrustedDomains/d' \
    /tmp/product.json
fi

# -e 's/^[[:blank:]]*"nameLong":.*/    "nameLong": "Code - OSS",/' \
