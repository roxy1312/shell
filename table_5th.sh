#!/bin/bash

# Prompt the user to enter a number
read -p "Enter a number: " number

# Check if the input is a valid number
if ! [[ "$number" =~ ^[0-9]+$ ]]; then
    echo "Error: Please enter a valid number."
    exit 1
fi

# Display the multiplication table
echo "Multiplication table for $number:"
for (( i=1; i<=10; i++ ))
do
    echo "$number x $i = $((number * i))"
done
