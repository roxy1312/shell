#!/bin/bash
# Check if the correct number of arguments is provided
if [ $# -ne 2 ]; then
    echo "Usage: $0 <start_month> <end_month>"
    exit 1
fi
start_month=$1
end_month=$2
# Check if the input months are valid
if ! [[ "$start_month" =~ ^[1-9]|10|11|12$ ]]; then
    echo "Invalid start month. Please provide a number between 1 and 12."
    exit 1
fi
if ! [[ "$end_month" =~ ^[1-9]|10|11|12$ ]]; then
    echo "Invalid end month. Please provide a number between 1 and 12."
    exit 1
fi
# Ensure start month is before end month
if [ "$start_month" -gt "$end_month" ]; then
    echo "Start month cannot be after end month."
    exit 1
fi
# Loop through the range of months and display calendars
for ((month=start_month; month<=end_month; month++)); do
    echo "Calendar for Month $month:"
    cal $month $(date -d "$month/1 +1 month -1 day" +%Y-%m-%d)
    echo "---------------------------------"
done
