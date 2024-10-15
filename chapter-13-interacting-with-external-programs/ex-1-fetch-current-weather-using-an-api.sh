#!/bin/bash

API_KEY="your_api_key"
CITY="London"

# Fetch weather data
weather=$(curl -s "https://api.openweathermap.org/data/2.5/weather?q=$CITY&appid=$API_KEY&units=metric")

# Extract temperature and condition using jq
temp=$(echo "$weather" | jq '.main.temp')
condition=$(echo "$weather" | jq '.weather[0].description')

echo "The current temperature in $CITY is $temp°C with $condition."
