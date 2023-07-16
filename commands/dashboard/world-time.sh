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
# @raycast.author Jesse Claven
# @raycast.authorURL https://github.com/jesse-c

# 2023-07-16:
# Script updated by @lazarjov to use with different cities

# Timezones can be found in /usr/share/zoneinfo

# Choose format:

# format="%H:%M" # 24-hour format
format="%-I:%M %p" # 12-hour format

van=$(TZ=America/Vancouver date +"$format")
tor=$(TZ=America/Toronto date +"$format")
beg=$(TZ=Europe/Belgrade date +"$format")

echo "Vancouver: $van | Toronto: $tor | Belgrade: $beg"
