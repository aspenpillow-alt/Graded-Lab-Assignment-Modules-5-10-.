#!/bin/bash

# Check if exactly one argument is provided
if [ "$#" -ne 1 ]; then
    echo "Error: Please provide exactly one directory path."
    exit 1
fi

DIR="$1"

# Check if directory exists
if [ ! -d "$DIR" ]; then
    echo "Error: Directory does not exist."
    exit 1
fi

# Create backup directory
mkdir -p "$DIR/backup"

echo "Parent Process ID: $$"

# Move files in background
for file in "$DIR"/*
do
    if [ -f "$file" ]; then
        mv "$file" "$DIR/backup/" &
        echo "Moved $(basename "$file") with PID $!"
    fi
done

# Wait for all background processes to finish
wait

echo "All background file moves completed."
