
#!/usr/bin/env zsh

IN="$1"
OUT="$2"
RNG="$3"

pdftk A="$IN" cat "$RNG" output "$OUT"

exit 0

