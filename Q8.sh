#!/bin/bash
echo -n "Enter path: "
read path


cd "$path" || { echo "Directory not found"; exit 1; }

i=$(ls -1 | wc -l)

echo "Number of files: $i"

while [ $i -gt 0 ]; do
    files=$(ls -1 | head -$i | tail -1)

    echo "Processing: $files"

    no=$(wc -l < "$files")  

    echo "Number of lines: $no"

    if [ $no -gt 0 ]; then
        echo "$files" >> not_empty
    else
        echo "$files" >> empty
    fi
    ((i--))
done

clear
cat empty