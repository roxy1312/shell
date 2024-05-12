#!/bin/bash

# Function to perform addition
add() {
    local result=$(($1 + $2))
    echo $result
}

# Function to perform subtraction
subtract() {
    local result=$(($1 - $2))
    echo $result
}

# Function to perform multiplication
multiply() {
    local result=$(($1 * $2))
    echo $result
}

# Function to perform division
divide() {
    local result=$(($1 / $2))
    echo $result
}

# Function to perform modulus
modulus() {
    local result=$(($1 % $2))
    echo $result
}
# Main program
echo "Basic Calculator"
echo "1. Addition"
echo "2. Subtraction"
echo "3. Multiplication"
echo "4. Division"
echo "5. Modulus"
read -p "Enter your choice (1-5): " choice

read -p "Enter first number: " num1
read -p "Enter second number: " num2

case $choice in
    1) result=$(add $num1 $num2)
       operator="+" ;;
    2) result=$(subtract $num1 $num2)
       operator="-" ;;
    3) result=$(multiply $num1 $num2)
       operator="*" ;;
    4) result=$(divide $num1 $num2)
       operator="/" ;;
    5) result=$(modulus $num1 $num2)
       operator="%" ;;
    *) echo "Invalid choice"
       exit 1 ;;
esac
echo "$num1 $operator $num2 = $result"
