#!/bin/bash

INPUT="input.txt"

# Check if input file exists
if [ ! -f "$INPUT" ]; then

    echo "Error: input.txt not found."
    exit 1
fi

# Extract words (lowercase, one per line)
WORDS=$(tr 'A-Z' 'a-z' < "$INPUT" | tr -cd 'a-z \n' | tr ' ' '\n' | grep -v '^$')

# Longest word
LONGEST=$(echo "$WORDS" | awk '{ print length, $0 }' | sort -nr | head -n 1 | cut -d' ' -f2-)

# Shortest word
SHORTEST=$(echo "$WORDS" | awk '{ print length, $0 }' | sort -n | head -n 1 | cut -d' ' -f2-)

# Average word length
AVG=$(echo "$WORDS" | awk '{ sum+=length; count++ } END { if (count>0) print sum/count }')

# Unique word count
UNIQUE=$(echo "$WORDS" | sort | uniq | wc -l)

echo "Longest word: $LONGEST"
echo "Shortest word: $SHORTEST"
echo "Average word length: $AVG"
echo "Total unique words: $UNIQUE"


