#!/bin/bash
# Script 4: Log File Analyzer
# Usage: ./script4_log_analyzer.sh /var/log/dnf.log updated

LOGFILE=$1
KEYWORD=${2:-"updated"}
COUNT=0

if [ ! -f "$LOGFILE" ]; then
    echo "Error: File $LOGFILE not found."
    exit 1
fi

# Retry if file is empty
ATTEMPT=1
while [ ! -s "$LOGFILE" ] && [ $ATTEMPT -le 3 ]; do
    echo "The file is empty. Waiting 5 seconds before retry..."
    sleep 5
    ATTEMPT=$((ATTEMPT + 1))
done

if [ ! -s "$LOGFILE" ]; then
    echo "The file is still empty after retries."
    exit 1
fi

while IFS= read -r LINE; do
    if echo "$LINE" | grep -iq "$KEYWORD"; then
        COUNT=$((COUNT + 1))
    fi
done < "$LOGFILE"

echo "Keyword '$KEYWORD' found $COUNT times in $LOGFILE"
echo ""
echo "Last 5 matching lines:"
grep -i "$KEYWORD" "$LOGFILE" | tail -5