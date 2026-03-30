#!/bin/bash
# Script 1: System Identity Report
# This script displays basic system information in a formatted way

# -----------------------------
# VARIABLES SECTION
# -----------------------------

# Store your name (used for display)
STUDENT_NAME="Prateeksha Singh"

# Store chosen open-source software
SOFTWARE_CHOICE="Git"

# -----------------------------
# SYSTEM INFORMATION COLLECTION
# -----------------------------

# Get kernel version (Linux core version)
KERNEL=$(uname -r)

# Get current logged-in user
USER_NAME=$(whoami)

# Get system uptime (how long system has been running)
UPTIME=$(uptime -p)

# Get current date and time
DATE=$(date)

# Extract Linux distribution name from system file
DISTRO=$(cat /etc/os-release | grep PRETTY_NAME | cut -d= -f2 | tr -d '"')

# Get user's home directory path
HOME_DIR=$HOME

# -----------------------------
# OUTPUT DISPLAY SECTION
# -----------------------------

# Print formatted header
echo "========================================"
echo "  Open Source Audit — $STUDENT_NAME"
echo "========================================"

# Display selected software
echo "Software : $SOFTWARE_CHOICE"

# Display system details
echo "Distro   : $DISTRO"
echo "Kernel   : $KERNEL"
echo "User     : $USER_NAME"
echo "Home Dir : $HOME_DIR"
echo "Uptime   : $UPTIME"
echo "Date     : $DATE"

# Display license message (Linux is GPL licensed)
echo "License  : Linux is licensed under GPL (Free Software License)"

# Print footer line
echo "========================================"
