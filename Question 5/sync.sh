#!/bin/bash

DIRA="dirA"
DIRB="dirB"

# Check if both directories exist
if [ ! -d "$DIRA" ] || [ ! -d "$DIRB" ]; then
    echo "Error: Both dirA and dirB must exist."
    exit 1
fi

echo "Files only in $DIRA:"
ls "$DIRA" | grep -Fxv -f <(ls "$DIRB")

echo
echo "Files only in $DIRB:"
ls "$DIRB" | grep -Fxv -f <(ls "$DIRA")

echo
echo "Comparing common files:"

for file in "$DIRA"/*
do
    filename=$(basename "$file")

    if [ -f "$DIRB/$filename" ]; then
        if cmp -s "$DIRA/$filename" "$DIRB/$filename"; then
            echo "$filename : Files are identical"
        else
            echo "$filename : Files differ"
        fi
    fi
done
