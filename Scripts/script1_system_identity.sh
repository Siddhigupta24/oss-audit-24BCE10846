#!/bin/bash
# Script 1: System Identity Report
# Author: Siddhi Gupta
# Course: Open Source Software

STUDENT_NAME="Siddhi Gupta"
SOFTWARE_CHOICE="LibreOffice"

# Gather system information
DISTRO=$(grep '^PRETTY_NAME=' /etc/os-release | cut -d= -f2 | tr -d '"')
KERNEL=$(uname -r)
USER_NAME=$(whoami)
HOME_DIR=$HOME
UPTIME=$(uptime -p)
DATE_NOW=$(date)

# Display information
echo "==============================================="
echo " Open Source Audit - $STUDENT_NAME"
echo " Fedora Linux System Identity Report"
echo "==============================================="
echo "Chosen Software : $SOFTWARE_CHOICE"
echo "Distribution    : $DISTRO"
echo "Kernel Version  : $KERNEL"
echo "Current User    : $USER_NAME"
echo "Home Directory  : $HOME_DIR"
echo "System Uptime   : $UPTIME"
echo "Current Date    : $DATE_NOW"
echo ""
echo "Fedora Linux is licensed mainly under the GNU GPL"
echo "which guarantees users the freedom to study, modify"
echo "and share the operating system."