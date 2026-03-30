#!/bin/bash
# Script 4: Log File Analyzer
# This script counts occurrences of a keyword in a log file

# -----------------------------
# INPUT PARAMETERS
# -----------------------------

# First argument = log file path
LOGFILE=$1

# Second argument = keyword (default = "error" if not provided)
KEYWORD=${2:-"error"}

# Initialize counter
COUNT=0

# -----------------------------
# FILE VALIDATION
# -----------------------------

# Check if file exists
if [ ! -f "$LOGFILE" ]; then
    echo "Error: File not found!"
    exit 1
fi

# -----------------------------
# READ FILE LINE BY LINE
# -----------------------------

# Read file line-by-line using while loop
while IFS= read -r LINE; do

    # Check if line contains keyword (case-insensitive)
    if echo "$LINE" | grep -iq "$KEYWORD"; then

        # Increment counter
        COUNT=$((COUNT + 1))
    fi

# Redirect file input into loop
done < "$LOGFILE"

# -----------------------------
# OUTPUT RESULT
# -----------------------------

echo "Keyword '$KEYWORD' found $COUNT times in $LOGFILE"

# -----------------------------
# SHOW LAST 5 MATCHES
# -----------------------------

echo ""
echo "Last 5 matches:"

# Filter matching lines and display last 5
grep -i "$KEYWORD" "$LOGFILE" | tail -5
