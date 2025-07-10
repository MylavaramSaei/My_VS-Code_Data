#!/bin/bash

# Loop through all folders in current directory
for folder in */; do
    # Extract folder name without slash
    name="${folder%/}"

    # Define the new file name and path
    file_path="$folder/calculator.txt"

    # Skip if file already exists
    if [ ! -f "$file_path" ]; then
        echo "// Simple calculator program" > "$file_path"
        echo "print('This is a calculator in $name')" >> "$file_path"
        echo "a = int(input('Enter first number: '))" >> "$file_path"
        echo "b = int(input('Enter second number: '))" >> "$file_path"
        echo "print('Sum:', a + b)" >> "$file_path"
        echo "print('Product:', a * b)" >> "$file_path"
        echo "print('Difference:', a - b)" >> "$file_path"
    fi
done
