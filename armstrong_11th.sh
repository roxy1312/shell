#!/bin/bash
# Function to check if a number is Armstrong
is_armstrong() {
    local number=$1
    local original_number=$number
    local sum=0
    local num_digits=${#number}
    while [ $number -gt 0 ]
    do
        digit=$((number % 10))
        sum=$((sum + digit ** num_digits))
        number=$((number / 10))
    done
    if [ $sum -eq $original_number ]; then
        echo "The number $original_number is an Armstrong number."
    else
        echo "The number $original_number is not an Armstrong number."
    fi
}
read -p "Enter a number: " num

if ! [[ "$num" =~ ^[0-9]+$ ]]; then
    echo "Error: Please enter a valid number."
    exit 1
fi
is_armstrong $num
