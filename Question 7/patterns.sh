#!/bin/bash

INPUT="input.txt"

# Check if input file exists
if [ ! -f "$INPUT" ]; then
    echo "Error: input.txt file not found."
    exit 1
fi

# Prepare words: lowercase, one word per line
WORDS=$(tr 'A-Z' 'a-z' < "$INPUT" | tr -cd 'a-z \n' | tr ' ' '\n' | grep -v '^$')

# Words with only vowels
echo "$WORDS" | grep -E '^[aeiou]+$' > vowels.txt

# Words with only consonants
echo "$WORDS" | grep -E '^[bcdfghjklmnpqrstvwxyz]+$' > consonants.txt

# Words with both vowels and consonants but starting with a consonant
echo "$WORDS" | grep -E '^[bcdfghjklmnpqrstvwxyz]' | grep -E '[aeiou]' > mixed.txt

echo "Pattern classification completed."
