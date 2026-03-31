#!/bin/bash
# Script 2: FOSS Package Inspector

PACKAGE="libreoffice-core"

# Check if package is installed
if rpm -q "$PACKAGE" &>/dev/null; then
    echo "$PACKAGE is installed."
    echo ""
    rpm -qi "$PACKAGE" | grep -E 'Name|Version|License|Summary'
else
    echo "$PACKAGE is NOT installed."
fi

echo ""
echo "Philosophy Note:"

case $PACKAGE in
    libreoffice)
        echo "LibreOffice: a community-built office suite created to keep office software open and free."
        ;;
    firefox)
        echo "Firefox: built to defend an open and independent web."
        ;;
    vlc)
        echo "VLC: a media player that proves software can be both free and powerful."
        ;;
    git)
        echo "Git: version control created when proprietary tools failed open-source developers."
        ;;
    *)
        echo "Unknown package."
        ;;
esac