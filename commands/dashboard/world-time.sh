#!/usr/bin/env bash

# Required parameters:
# @raycast.schemaVersion 1
# @raycast.title World Time
# @raycast.mode inline
# @raycast.refreshTime 5s
# @raycast.packageName Dashboard

# Optional parameters:
# @raycast.icon 🕐
#
# Documentation:
# @raycast.description Show the time from elsewhere in the world
# @raycast.author Lazar Jovanovic
# @raycast.authorURL https://github.com/lazarjov

# comment: Script modified from the one written by Jesse Claven (https://github.com/jesse-c)

# Timezones can be found in /usr/share/zoneinfo

# Set the time format to 12- or 24-hour
FORMAT="12" # 12 or 24

if [ "$FORMAT" = "12" ]; then
    export TIMEFORMAT="%-I:%M %p"
else
    export TIMEFORMAT="%-H:%M"
fi

YVR=$(TZ=America/Vancouver date +"$TIMEFORMAT")
YYZ=$(TZ=America/Toronto date +"$TIMEFORMAT")
BEG=$(TZ=Europe/Belgrade date +"$TIMEFORMAT")

echo "Vancouver: $YVR | Toronto: $YYZ | Belgrade: $BEG"
