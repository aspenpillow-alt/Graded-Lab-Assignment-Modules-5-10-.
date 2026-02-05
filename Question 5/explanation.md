I opened nano editor to create the shell script that will compare two directories and identify differences.

I created a shell script named `sync.sh` to compare the contents of two directories, dirA and dirB. 

I pasted the complete directory comparison script and saved it and saw that the script uses find, grep, and cmp to identify unique files and compare content.

I added execute permissions to the script and saw that the file permissions changed to -rwxr-xr-x, confirming it's executable. The script first checks whether both directories exist before performing any comparisons.

I created two test directories with various files and saw that this setup includes unique files in each directory, common files with same content, and common files with different content. I used file name comparison to identify files that are present only in dirA and only in dirB.

For files with the same name in both directories, I used the `cmp` command to check whether their contents are identical or different.
I displayed the file structures of both directories and saw that dirA has 5 files and dirB has 6 files, with some overlap.

I executed the script to compare the two directories and saw that it correctly identified unique files, common files, and content differences. The script only compares files and does not copy or modify any data.



