I used the nano text editor to create a new file named log_analyzer.sh. This opens an interactive editor where I can write the shell script directly in the terminal.

After pasting the script content, I saved the file and exited the editor so the script could be executed from the terminal.

The chmod +x command adds execute permissions to the script, allowing it to run as a program. The ls -l command verifies that the permissions now include execute access (-rwxr-xr-x).

I created a sample log file that follows the exact format specified in the question. This file provides test data to verify the correctness of the script.

Running the script with the sample log file confirms that it correctly counts total log entries, categorizes log levels (INFO, WARNING, ERROR), identifies the most recent ERROR message, and generates a summary report file.

The ls command confirms that the summary report file was generated. The cat command displays the contents of the report, showing log statistics, error details, and sample entries as required.

I tested error handling by running the script without arguments and with a non-existent file to ensure that meaningful error messages were displayed for invalid input.
When the script is run without arguments, it detects an invalid argument count and displays a meaningful error message. This demonstrates proper input validation.

The script checks whether the specified file exists. Since missing.log does not exist, the script displays an appropriate error message and exits gracefully.

