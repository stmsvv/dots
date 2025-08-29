#!/bin/bash

API_KEY="ca705168458c5b81cf7338ab95064f94"
CITY="Kazan"
UNITS="metric"  # или imperial
LANG="ru"

URL="https://api.openweathermap.org/data/2.5/weather?q=${CITY}&appid=${API_KEY}&units=${UNITS}&lang=${LANG}"

weather=$(curl -sf "$URL")

if [ ! -z "$weather" ]; then
  temp=$(echo $weather | jq ".main.temp" | cut -d "." -f1)
  desc=$(echo $weather | jq -r ".weather[0].description")
  # echo "$temp°:"
  echo "$temp°C,"
  # echo "$temp°C, $desc"
else
  echo " Погода недоступна"
fi
