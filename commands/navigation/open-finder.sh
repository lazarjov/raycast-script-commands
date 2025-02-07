#!/bin/bash

# Required parameters:
# @raycast.schemaVersion 1
# @raycast.title Open Finder
# @raycast.mode silent

# Optional parameters:
# @raycast.icon 🔍
# @raycast.argument1 { "type": "text", "placeholder": "Desktop", "optional": true }
# @raycast.packageName Navigation

# Documentation:
# @raycast.description Open Finder at Home folder or argument location
# @raycast.author Afraz
# @raycast.authorURL https://github.com/afrazkhan

LOCATION=$1

if ! [[ "$LOCATION" =~ ^/ ]]; then
  LOCATION="$HOME/Desktop"
fi

open "$LOCATION"
