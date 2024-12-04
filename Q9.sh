#!/bin/bash
echo -n "Enter path: "
read path

cd "$path" || { echo "Directory not found"; exit 1; }

i=$(ls -1 | wc -l)

echo "Number of files: $i"

while [ $i -gt 0 ]; do
    files=$(ls -1 | head -$i | tail -1)

    echo "Processing: $files"
    new_name=$(echo "$files" | tr '[:upper:]' '[:lower:]')  # Corrected here

    if [ "$files" != "$new_name" ]; then  # Check if the name has changed
        mv "$files" "$new_name" 
    fi
    
    ((i--))
done