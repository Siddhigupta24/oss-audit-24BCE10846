#!/bin/bash
# Script 3: Disk and Permission Auditor

DIRS=("/etc" "/usr/share/libreoffice" "$HOME/Documents" "/tmp" "/var/cache")

echo "Directory Audit Report"
echo "----------------------"

for DIR in "${DIRS[@]}"; do
    if [ -d "$DIR" ]; then
        PERMS=$(ls -ld "$DIR" | awk '{print $1, $3, $4}')
        SIZE=$(du -sh "$DIR" 2>/dev/null | cut -f1)

        echo "$DIR"
        echo "  Permissions : $PERMS"
        echo "  Size        : $SIZE"
        echo ""
    else
        echo "$DIR does not exist on this system"
    fi
done

# LibreOffice configuration directory
CONFIG_DIR="$HOME/.config/libreoffice/4/user"

echo "LibreOffice Configuration Directory Check"
echo "-----------------------------------------"

if [ -d "$CONFIG_DIR" ]; then
    ls -ld "$CONFIG_DIR"
else
    echo "LibreOffice configuration directory not found."
    echo "Open LibreOffice once before running this script."
fi