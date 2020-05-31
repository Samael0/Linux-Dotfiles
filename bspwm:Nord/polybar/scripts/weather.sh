#!/bin/sh

# Original source - https://github.com/polybar/polybar-scripts/tree/master/polybar-scripts/openweathermap-detailed

# Global settings
KEY="84af0a0f23eb542c1000ef51a7c5e119"
CITY="Burbank"
UNITS="imperial"
SYMBOL="°F"
API="https://api.openweathermap.org/data/2.5"

# Get weather
WEATHER=$(curl -sf "$API/weather?APPID=$KEY&q=$CITY&units=$UNITS")

# Get condition, icon and temp
WEATHER_MAIN=$(echo $WEATHER | jq -r ".weather[0].main")
WEATHER_TEMP=$(echo $WEATHER | jq -r ".main.temp")

# Print weather
echo "$WEATHER_MAIN $WEATHER_TEMP$SYMBOL"
