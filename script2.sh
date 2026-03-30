#!/bin/bash
# Script 2: FOSS Package Inspector
# This script checks if a package is installed and displays info

# -----------------------------
# PACKAGE NAME
# -----------------------------

# Define the package to check (Git in this case)
PACKAGE="git"

# -----------------------------
# CHECK INSTALLATION
# -----------------------------

# command -v checks if command exists in system
if command -v $PACKAGE &>/dev/null; then
    echo "$PACKAGE is installed."

    # Display version of installed package
    $PACKAGE --version
else
    echo "$PACKAGE is NOT installed."
fi

# -----------------------------
# CASE STATEMENT (DESCRIPTION)
# -----------------------------

# Provide a short description based on package name
case $PACKAGE in
    git)
        echo "Git: distributed version control built for open collaboration"
        ;;
    apache2)
        echo "Apache: the web server that built the open internet"
        ;;
    mysql)
        echo "MySQL: open source database powering millions of apps"
        ;;
    firefox)
        echo "Firefox: browser protecting open web freedom"
        ;;
    *)
        echo "Unknown package"
        ;;
esac
