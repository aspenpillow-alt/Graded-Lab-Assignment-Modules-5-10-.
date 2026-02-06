I created a shell script named bg_move.sh to move files from a given directory into a backup subdirectory using background processes.

I used a command-line argument to accept the directory path and verified that the directory exists before performing any operations.

I created a subdirectory named backup inside the given directory to store the moved files.

I used a loop to iterate over each file in the directory and moved each file into the backup directory using background execution with the & operator.

I used the $! variable to display the process ID of each background move operation.

I used the wait command to ensure that all background processes completed before the script finished execution.
