#!/bin/bash
# Script 3: Disk and Permission Auditor
# This script checks directory size, permissions, and ownership

# -----------------------------
# DIRECTORY LIST
# -----------------------------

# Array of important Linux directories
DIRS=("/etc" "/var/log" "/home" "/usr/bin" "/tmp")

# Print report header
echo "Directory Audit Report"
echo "----------------------"

# -----------------------------
# LOOP THROUGH DIRECTORIES
# -----------------------------

# Loop through each directory in array
for DIR in "${DIRS[@]}"; do

    # Check if directory exists
    if [ -d "$DIR" ]; then

        # Get permissions, owner, and group using ls and awk
        PERMS=$(ls -ld $DIR | awk '{print $1, $3, $4}')

        # Get size of directory (human-readable)
        SIZE=$(du -sh $DIR 2>/dev/null | cut -f1)

        # Display results
        echo "$DIR => Permissions: $PERMS | Size: $SIZE"

    else
        # If directory doesn't exist
        echo "$DIR does not exist"
    fi
done

# -----------------------------
# GIT CONFIG FILE CHECK
# -----------------------------

# Define Git config file location
GIT_CONFIG="$HOME/.gitconfig"

# Check if file exists
if [ -f "$GIT_CONFIG" ]; then
    echo ""
    echo "Git Config Found:"

    # Show permissions and ownership of config file
    ls -l $GIT_CONFIG
else
    echo ""
    echo "Git config file not found"
fi
