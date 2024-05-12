#!/bin/bash

# Check if the correct number of arguments is provided
if [ $# -eq 0 ]; then
    echo "Usage: $0 <month1> [<month2> ...]"
    exit 1
fi

# Loop through the provided months and display calendars
for month in "$@"; do
    # Check if the input month is valid
    if ! [[ "$month" =~ ^[1-9]|10|11|12$ ]]; then
        echo "Invalid month: $month. Please provide a number between 1 and 12."
        continue
    fi
    
    # Display calendar for the month
    echo "Calendar for Month $month:"
    cal $month
    echo "---------------------------------"
done
