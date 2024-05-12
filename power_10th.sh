#!/bin/bash

# Function to calculate power
power() {
    local base=$1
    local exponent=$2
    local result=1

    # Loop through exponent times and multiply base
    for (( i=1; i<=$exponent; i++ ))
    do
        result=$((result * base))
    done

    echo $result
}
# Prompt the user to enter the base and exponent
read -p "Enter the base: " base
read -p "Enter the exponent: " exponent
# Check if the input is a valid number
if ! [[ "$base" =~ ^[0-9]+$ ]] || ! [[ "$exponent" =~ ^[0-9]+$ ]]; then
    echo "Error: Please enter valid numbers for base and exponent."
    exit 1
fi
# Call the power function
result=$(power $base $exponent)
# Display the result
echo "$base raised to the power of $exponent is: $result"
