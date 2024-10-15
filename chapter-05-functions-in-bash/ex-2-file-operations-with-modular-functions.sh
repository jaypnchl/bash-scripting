#!/bin/bash

create_directory() {
   mkdir -p "$1"
   echo "Directory $1 created."
}

copy_files() {
   cp -r "$1"/* "$2"
   echo "Files copied to $2."
}

delete_old_files() {
   find "$1" -type f -mtime +7 -exec rm {} \;
   echo "Old files deleted."
}

main() {
   create_directory "backup"
   copy_files "source_directory" "backup"
   delete_old_files "backup"
}

main
