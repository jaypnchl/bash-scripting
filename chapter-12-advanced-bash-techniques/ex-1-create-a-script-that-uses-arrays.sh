#!/bin/bash

# Define an array of file names
files=("file1.txt" "file2.txt" "file3.txt")

# Loop through the array and print each file name with its size
for file in "${files[@]}"; do
    if [ -f "$file" ]; then
        size=$(du -sh "$file" | cut -f1)
        echo "File: $file, Size: $size"
    else
        echo "$file does not exist"
    fi
done
