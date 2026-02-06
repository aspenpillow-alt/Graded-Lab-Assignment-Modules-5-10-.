I installed the GCC compiler to compile C programs on the Linux system.

I wrote a C program that creates multiple child processes using the fork() system call.

I allowed each child process to terminate normally after printing its process ID. 


The parent process uses the wait() system call to collect each terminated child. By waiting for all child processes, the program prevents zombie processes.


I printed the process ID of each child process as it was cleaned up by the parent. The parent prints the PID of each child it cleans up, confirming successful cleanup.


I verified that no zombie processes were created by ensuring that all terminated child processes were properly reaped by the parent process.

