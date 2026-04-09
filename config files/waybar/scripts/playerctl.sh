#!/bin/bash

# How many characters to show total (tweak this)
MAX=30

STATUS=$(playerctl status 2>/dev/null)

if [ "$STATUS" = "" ]; then
    echo '{"text": "nothing playing", "class": "stopped"}'
    exit 0
fi

ARTIST=$(playerctl metadata artist 2>/dev/null)
TITLE=$(playerctl metadata title 2>/dev/null)
STATUS_LOWER=$(echo "$STATUS" | tr '[:upper:]' '[:lower:]')

# Build display text
if [ -n "$ARTIST" ]; then
    TEXT="$ARTIST — $TITLE"
else
    TEXT="$TITLE"
fi

# Middle-truncate if too long
LEN=${#TEXT}
if [ $LEN -gt $MAX ]; then
    KEEP=$(( (MAX - 3) / 2 ))
    TAIL=$(( LEN - KEEP ))
    TEXT="${TEXT:0:$KEEP}...${TEXT:$TAIL}"
fi

echo "{\"text\": \"$ICON $TEXT\", \"class\": \"$STATUS_LOWER\", \"tooltip\": \"$TITLE\"}"
