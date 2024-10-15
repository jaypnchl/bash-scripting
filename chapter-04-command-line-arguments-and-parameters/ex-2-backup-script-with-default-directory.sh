#!/bin/bash

directory=${1:-"."}  # Default to current directory if none is provided

if [ ! -d "$directory" ]; then
   echo "Error: Directory $directory does not exist."
   exit 1
fi

mkdir -p backup
cp "$directory"/*.txt backup/
echo "Backup complete!"
