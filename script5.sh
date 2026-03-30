#!/bin/bash
# Script 5: Open Source Manifesto Generator
# This script collects user input and generates a text file

# -----------------------------
# USER INPUT SECTION
# -----------------------------

echo "Answer three questions to generate your manifesto."
echo ""

# Read user input (interactive)
read -p "1. Tool you use daily: " TOOL
read -p "2. Freedom means: " FREEDOM
read -p "3. What will you build: " BUILD

# -----------------------------
# FILE CREATION
# -----------------------------

# Get current date in readable format
DATE=$(date '+%d %B %Y')

# Create output file name using username
OUTPUT="manifesto_$(whoami).txt"

# -----------------------------
# WRITE CONTENT TO FILE
# -----------------------------

# '>' creates/overwrites file
echo "On $DATE, I reflect on open source." > $OUTPUT

# '>>' appends to file
echo "I use $TOOL daily, which represents $FREEDOM to me." >> $OUTPUT
echo "In the future, I want to build $BUILD and share it freely with the world." >> $OUTPUT
echo "I believe in collaboration, transparency, and community-driven innovation." >> $OUTPUT

# -----------------------------
# DISPLAY OUTPUT
# -----------------------------

echo ""
echo "Manifesto saved to $OUTPUT"

# Show file content
cat $OUTPUT

# -----------------------------
# NOTE:
# -----------------------------
# You can create an alias like:
# alias manifesto='./script5.sh'
# This allows quick execution of the script
