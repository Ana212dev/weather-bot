#!/bin/bash

API_KEY="YOUR_API_KEY"
CITY="Tampa"
URL="https://api.openweathermap.org/data/2.5/weather?q=$CITY&appid=$API_KEY&units=imperial"

WEATHER=$(curl -s "$URL")
DATE=$(date +"%Y-%m-%d %H:%M:%S")

echo "Weather on $DATE: $WEATHER" > weather.txt

git add weather.txt
git commit -m "Weather update for $DATE"
