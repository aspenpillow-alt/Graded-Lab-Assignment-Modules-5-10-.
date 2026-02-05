Command: chmod +x analyze.sh
I used the chmod command to change the file permissions, making the script executable by the current user.

Command: ./analyze.sh my_data.txt
I executed the script with a file argument. The wc utility calculated and displayed the number of lines, words, and characters in the file.

Command: ./analyze.sh /home/user/documents
I ran the script with a directory argument. The find command was used to count the total number of files and the number of .txt files present in the directory
