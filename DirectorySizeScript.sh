#!/bin/bash
# Calculate the total size of a directory

echo -n "Enter the path of the directory: "
read dir_path

if [ -d "$dir_path" ]; then
    total_size=$(du -sh "$dir_path" | cut -f1)
    echo "Total size of $dir_path: $total_size"
else
    echo "Error: Directory not found."
fi
