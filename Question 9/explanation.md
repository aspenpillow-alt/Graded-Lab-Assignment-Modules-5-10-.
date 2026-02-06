I wrote a C program that creates multiple child processes using the fork() system call.

I allowed each child process to terminate normally after printing its process ID.

I used the wait() system call in the parent process to collect the termination status of each child process.

I printed the process ID of each child process as it was cleaned up by the parent.

I verified that no zombie processes were created by ensuring that all terminated child processes were properly reaped by the parent process.

