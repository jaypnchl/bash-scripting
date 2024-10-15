#!/bin/bash

# Define the API endpoint and data
API_URL="https://jsonplaceholder.typicode.com/posts"
DATA='{"title": "Bash Scripting", "body": "Learning Bash scripting is fun!", "userId": 1}'

# Send POST request
response=$(curl -s -X POST -H "Content-Type: application/json" -d "$DATA" $API_URL)

# Display the response
echo "Response from the API: $response"
