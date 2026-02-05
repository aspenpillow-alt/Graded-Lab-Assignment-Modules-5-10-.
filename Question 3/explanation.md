I created a shell script named `validate_results.sh` to process student marks from a file named `marks.txt`.

The script reads each student record using a loop and checks marks for three subjects against the passing criteria of 33.I pasted the complete script and saved it - I observed that the script uses while loops to process each student record and applies conditional logic for categorization.

I used conditional statements and arithmetic operations to count how many subjects each student failed.

I added execute permissions to the script; I observed that ls -l now shows -rwxr-xr-x permissions, confirming it's executable.

I created a test data file with 10 student records; I observed that the data follows the required format with varying marks to test different scenarios.

I displayed the file contents and counted lines; I observed there are 10 student records with marks that will test all edge cases.

I executed the script to analyze student marks; I observed that it successfully categorized students into two groups and displayed counts for each category.

Students who failed in exactly one subject were displayed separately, and students who passed all subjects were identified.

The script also maintained counters to display the total number of students in each category.

