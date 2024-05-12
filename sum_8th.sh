#!/bin/bash

# Function to find the sum of digits
sum_of_digits() {
    local number=$1
    local sum=0

    # Loop through each digit and add it to the sum
    while [ $number -gt 0 ]
    do
        remainder=$((number % 10))
        sum=$((sum + remainder))
        number=$((number / 10))
    done

    echo $sum
}

# Prompt the user to enter a number
read -p "Enter a number: " num

# Check if the input is a valid number
if ! [[ "$num" =~ ^[0-9]+$ ]]; then
    echo "Error: Please enter a valid number."
    exit 1
fi

# Call the function to find the sum of digits
result=$(sum_of_digits $num)

# Display the result
echo "Sum of digits of $num is: $result"
