#!/bin/bash

# Function to calculate factorial
factorial() {
    local n=$1
    local result=1

    # Calculate factorial
    for (( i=1; i<=n; i++ ))
    do
        result=$((result * i))
    done

    echo $result
}

# Prompt the user to enter a number
read -p "Enter a number: " number

# Check if the input is a valid number
if ! [[ "$number" =~ ^[0-9]+$ ]]; then
    echo "Error: Please enter a valid number."
    exit 1
fi

# Call the factorial function
fact=$(factorial $number)

# Display the factorial
echo "Factorial of $number is: $fact"
