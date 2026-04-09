#!/bin/bash

CHARS="▁▂▃▄▅▆▇█"

cava -p ~/.config/cava/config | while read -r line; do
    STATUS=$(playerctl status 2>/dev/null)
    OUTPUT=""
    line="${line//;/ }"
    for num in $line; do
        [[ -z "$num" ]] && continue
        OUTPUT+="${CHARS:$num:1}"
    done
    if [ "$STATUS" = "Playing" ]; then
        echo "{\"text\": \"$OUTPUT\", \"class\": \"cava\"}"
    else
        echo "{\"text\": \"\", \"class\": \"cava\"}"
    fi
done
