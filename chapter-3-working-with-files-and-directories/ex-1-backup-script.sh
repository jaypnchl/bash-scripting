#!/bin/bash
mkdir -p backup

for file in *.txt; do
   cp "$file" backup/"$file"
done

echo "Backup complete!"
