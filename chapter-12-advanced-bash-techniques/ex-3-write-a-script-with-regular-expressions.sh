#!/bin/bash

# Define the pattern to search for (in this case, an email pattern)
pattern="[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}"

# Search for the pattern in the given file
grep -E "$pattern" input.txt > emails.txt

echo "Extracted email addresses have been saved to emails.txt"
