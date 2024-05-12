#!/bin/bash
gcd() {
    local num1=$1
    local num2=$2

    while [ $num2 -ne 0 ]
    do
        remainder=$((num1 % num2))
        num1=$num2
        num2=$remainder
    done

    echo $num1
}
read -p "Enter first number: " num1
read -p "Enter second number: " num2
if ! [[ "$num1" =~ ^[0-9]+$ ]] || ! [[ "$num2" =~ ^[0-9]+$ ]]; then
    echo "Error: Please enter valid numbers."
    exit 1
fi
result=$(gcd $num1 $num2)
echo "The GCD of $num1 and $num2 is: $result"
