#!/bin/bash

URL="https://www.example.com"

# Send GET request and extract the HTTP status code
status_code=$(curl -o /dev/null -s -w "%{http_code}\n" $URL)

# Check if the website is online
if [ "$status_code" -eq 200 ]; then
    echo "Website is online."
else
    echo "Website is offline. Status code: $status_code"
fi
