#!/usr/bin/env bash

# source:
# https://wiki.archlinux.org/title/TeX_Live#tlmgr

# sed -i 's/$Master\/..\/../${Master}\/..\/..\/../g' "$TEXMFDIST/scripts/texlive/tlmgr.pl"
sd -s '$Master/../..' '${Master}/../../..' "$TEXMFDIST/scripts/texlive/tlmgr.pl"

exit 0

