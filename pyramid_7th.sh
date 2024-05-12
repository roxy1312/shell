#!/bin/bash
# Function to print spaces
print_spaces() {
    local spaces=$1

    for (( s=0; s<$spaces; s++ ))
    do
        echo -n " "
    done
}
# Function to print asterisks
print_asterisks() {
    local asterisks=$1

    for (( a=0; a<$asterisks; a++ ))
    do
        echo -n "* "
    done
}
# Function to print pyramid
print_pyramid() {
    local rows=$1

    for (( i=1; i<=$rows; i++ ))
    do
        print_spaces $((rows - i))
        print_asterisks $((2 * i - 1))
        echo ""
    done
}

# Prompt the user to enter the number of rows
read -p "Enter the number of rows: " num_rows

# Check if the input is a valid number
if ! [[ "$num_rows" =~ ^[0-9]+$ ]]; then
    echo "Error: Please enter a valid number."
    exit 1
fi

# Call the print pyramid function
print_pyramid $num_rows
