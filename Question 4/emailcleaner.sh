#!/bin/bash

INPUT_FILE="emails.txt"

# Check if input file exists
if [ ! -f "$INPUT_FILE" ]; then
    echo "Error: emails.txt file not found."
    exit 1
fi

# Extract valid email addresses
grep -E '^[A-Za-z0-9]+@[A-Za-z]+\.com$' "$INPUT_FILE" > valid.txt

# Extract invalid email addresses
grep -Ev '^[A-Za-z0-9]+@[A-Za-z]+\.com$' "$INPUT_FILE" > invalid.txt

# Remove duplicates from valid.txt
sort valid.txt | uniq > temp.txt
mv temp.txt valid.txt

echo "Email cleaning completed."
echo "Valid emails saved in valid.txt"
echo "Invalid emails saved in invalid.txt"
