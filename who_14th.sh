#!/bin/bash

who_output=$(who | sort)
total_users=$(echo "$who_output" | wc -l)

# Display the sorted output of "who" command
echo "Sorted Output of 'who' Command:"
echo "$who_output"

# Display the total number of users
echo "Total number of users: $total_users"
