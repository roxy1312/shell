#!/bin/bash
# Function to compare two files
compare_files() {
    local file1=$1
    local file2=$2
    if cmp -s "$file1" "$file2"; then
        echo "Files $file1 and $file2 are identical."
        read -p "Do you want to delete $file2? (y/n): " choice
        case $choice in
            y|Y) rm -i "$file2"
                 echo "$file2 deleted." ;;
            n|N) echo "No action taken."
                 exit ;;
            *) echo "Invalid choice. No action taken."
               exit ;;
        esac
    else
        echo "Files $file1 and $file2 are not identical."
    fi
}
read -p "Enter the path of the first file: " file1
read -p "Enter the path of the second file: " file2
if [ ! -f "$file1" ] || [ ! -f "$file2" ]; then
    echo "Error: One or both input files do not exist."
    exit 1
fi
compare_files "$file1" "$file2"
