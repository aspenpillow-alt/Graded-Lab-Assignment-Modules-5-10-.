I opened nano editor to create the shell script that will process email addresses according to the specified pattern.

I pasted the complete email validation script and saved it and saw that the script uses grep with regular expressions and stores them in valid.txt and removes duplicates with sort/uniq.

I added execute permissions to the script and saw that the file now has -rwxr-xr-x permissions allowing me to run it directly.

I created a test file with 8 email entries.

Email addresses that do not match the valid format are written to `invalid.txt`.

I displayed the file contents and counted lines; I observed there are 8 email entries with various valid and invalid formats.

I executed the email validation script, saw that it processed all emails, extracted valid ones matching the pattern and removed duplicates.

I displayed the contents of valid.txt and saw that it contains only unique email addresses matching the <letters_and_digits>@<letters>.com pattern.

 


