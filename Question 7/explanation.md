I used the nano text editor to create the shell script patterns.sh, which processes words from an input file to classify them based on vowel and consonant patterns.

I used text-processing commands to convert all input text to lowercase, remove punctuation, and place each word on a separate line so that pattern matching could be performed consistently.

I used the grep command with regular expressions to identify and extract words that contain only vowels and stored them in the file vowels.txt.

I used the grep command with a different regular expression to extract words that contain only consonants and saved them in the file consonants.txt.

I used a combination of grep patterns to identify words that contain both vowels and consonants but start with a consonant, and I stored those words in the file mixed.txt.

 I displayed the contents of input.txt using the cat command. I used the wc command to count lines, words, and characters in input.txt and saw the initial statistics before detailed analysis.

I verified the output files to ensure that each word was correctly classified according to the given conditions and that the script executed successfully.
