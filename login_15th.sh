#!/bin/bash

is_valid_login() {
    local login_name=$1

    # Check if the login name exists in /etc/passwd
    if grep -q "^$login_name:" /etc/passwd; then
        echo "$login_name is a valid login name."
    else
        echo "Entered login name '$login_name' is invalid."
    fi
}

# Prompt the user to enter a login name
read -p "Enter a login name: " login_name

is_valid_login $login_name
