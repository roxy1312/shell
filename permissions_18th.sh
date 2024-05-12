#!/bin/bash

# Function to check permissions of a file
check_permissions() {
    local file=$1

    # Check if the file exists
    if [ ! -e "$file" ]; then
        echo "Error: File '$file' does not exist."
        exit 1
    fi

    # Check if the file has all permissions
    if [ -r "$file" ] && [ -w "$file" ] && [ -x "$file" ]; then
        echo "File '$file' has read, write, and execute permissions."
    else
        echo "File '$file' does not have all permissions."
    fi
}

# Prompt the user to enter the path of the file
read -p "Enter the path of the file: " file

# Call the function to check permissions of the file
check_permissions "$file"
