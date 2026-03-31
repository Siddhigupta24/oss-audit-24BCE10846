#!/bin/bash
# Script 5: Open Source Manifesto Generator

echo "Answer three questions to generate your manifesto."
echo ""

read -p "1. Which LibreOffice application do you use most (Writer/Calc/Impress)? " TOOL
read -p "2. What feature of LibreOffice do you value the most? " FREEDOM
read -p "3. What would you improve or build in open-source software? " BUILD

DATE=$(date '+%d %B %Y')
OUTPUT="manifesto_$(whoami).txt"

{
    echo "Open Source Manifesto"
    echo "Generated on: $DATE"
    echo ""
    echo "I use LibreOffice $TOOL most often because it helps me work"
    echo "without depending on expensive proprietary software. The feature"
    echo "I value most is $FREEDOM because it shows how open-source software"
    echo "can be practical and user-friendly. In the future, I would like"
    echo "to build or improve $BUILD so that more people can benefit from"
    echo "technology that is free and open."
} > "$OUTPUT"

echo ""
echo "Manifesto saved to $OUTPUT"
echo ""
cat "$OUTPUT"