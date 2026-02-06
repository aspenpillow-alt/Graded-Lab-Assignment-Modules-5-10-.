I created a C program to demonstrate signal handling using SIGTERM and SIGINT.

The parent process installs custom signal handlers and runs indefinitely.

I created one child process that sends a SIGTERM signal to the parent process after a delay of five seconds.

I created another child process that sends a SIGINT signal to the parent process after a delay of ten seconds.

I implemented custom signal handlers in the parent process to handle each signal differently.

The parent handles SIGTERM by printing a graceful shutdown message.

The parent handles SIGINT by cleaning up and exiting the program safely.

I verified that the parent process responded appropriately to each signal and exited gracefully after handling them.





