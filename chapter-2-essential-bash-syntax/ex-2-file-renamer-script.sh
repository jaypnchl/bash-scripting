#!/bin/bash
for file in *.txt; do
   mv "$file" "${file%.txt}_$(date +%s).txt"
done
