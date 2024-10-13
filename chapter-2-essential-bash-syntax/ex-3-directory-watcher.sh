#!/bin/bash
dir="watched_dir"
files=$(ls $dir | wc -l)

while true; do
   new_count=$(ls $dir | wc -l)
   if [ $new_count -gt $files ]; then
      echo "New file added!"
      files=$new_count
   fi
   sleep 2
done
