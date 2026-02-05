#!/bin/bash

# Check if exactly one argument is provided
if [ "$#" -ne 1 ]; then
    echo "Error: Please provide exactly one log file as argument."
    exit 1
fi

LOGFILE="$1"

# Check if file exists and is readable
if [ ! -f "$LOGFILE" ] || [ ! -r "$LOGFILE" ]; then
    echo "Error: Log file does not exist or is not readable."
    exit 1
fi

# Total number of log entries
TOTAL_ENTRIES=$(wc -l < "$LOGFILE")

# Count log levels
INFO_COUNT=$(grep -c " INFO " "$LOGFILE")
WARNING_COUNT=$(grep -c " WARNING " "$LOGFILE")
ERROR_COUNT=$(grep -c " ERROR " "$LOGFILE")

# Get most recent ERROR message
LAST_ERROR=$(grep " ERROR " "$LOGFILE" | tail -n 1)

# Generate report file with current date
DATE=$(date +"%Y-%m-%d")
REPORT_FILE="logsummary_$DATE.txt"

{
    echo "Log File Summary Report"
    echo "Date: $DATE"
    echo "-----------------------"
    echo "Total log entries: $TOTAL_ENTRIES"
    echo "INFO messages: $INFO_COUNT"
    echo "WARNING messages: $WARNING_COUNT"
    echo "ERROR messages: $ERROR_COUNT"
    echo
    echo "Most recent ERROR message:"
    if [ -z "$LAST_ERROR" ]; then
        echo "No ERROR messages found."
    else
        echo "$LAST_ERROR"
    fi
} > "$REPORT_FILE"

# Display summary on terminal
echo "Log analysis completed successfully."
echo "Summary report generated: $REPORT_FILE"


