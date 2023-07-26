#!/bin/bash

# Required parameters:
# @raycast.schemaVersion 1
# @raycast.title Save Image From Clipboard
# @raycast.mode silent

# Optional parameters:
# @raycast.icon 🖼️
# @raycast.packageName system

# Documentation:
# @raycast.description Saves image from clipboard into a file
# @raycast.author Lazar Jovanovic
# @raycast.authorURL @lazarjov

path="$HOME/Downloads"
file_name="ScreenShot-$(date +%Y%m%d-%H%M%S).png"
file_path="$path/$file_name"

pngpaste "$file_path"

echo "Image saved to $file_path"
