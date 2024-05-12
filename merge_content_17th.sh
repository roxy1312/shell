#!/bin/bash
# Function to merge, sort, and display files
merge_sort_display() {
    local file1=$1
    local file2=$2
    local file3=$3
    # Merge the contents of three files
    merged_content=$(cat "$file1" "$file2" "$file3")
    # Sort the merged content
    sorted_content=$(echo "$merged_content" | sort)
    # Display the sorted content page by page
    echo "$sorted_content" | less
}
# Prompt the user to enter the paths of three files
read -p "Enter the path of the first file: " file1
read -p "Enter the path of the second file: " file2
read -p "Enter the path of the third file: " file3
# Check if the input files exist
if [ ! -f "$file1" ] || [ ! -f "$file2" ] || [ ! -f "$file3" ]; then
    echo "Error: One or more input files do not exist."
    exit 1
fi
# Call the function to merge, sort, and display files
merge_sort_display "$file1" "$file2" "$file3"
