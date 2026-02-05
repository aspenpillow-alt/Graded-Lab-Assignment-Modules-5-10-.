 I opened nano editor to create the shell script named metrics.sh that will analyze text files and calculate various metrics from a file called inout.txt.

I pasted the complete text analysis script and saved it and saw that the script uses a pipeline of tr, sort, uniq, and wc commands to extract and analyze words. It processes the text using pipes to convert all words to lowercase, remove punctuation, and place each word on a separate line.

I added execute permissions to the script and saw that the file now has -rwxr-xr-x permissions allowing execution.

I created a test text file with various features - including words of different lengths, punctuation, repeated words, and numbers to test the script's handling.

I displayed the file contents and counted lines, words, and characters. I used sorting and length-based comparisons to identify the longest and shortest words in the file.

The average word length was calculated by summing the lengths of all words and dividing by the total word count.

I executed the script to analyze the text file and saw that it processed the text, extracted words, and calculated all required metrics. The script also calculated the total number of unique words using sorting and the `uniq` command.

