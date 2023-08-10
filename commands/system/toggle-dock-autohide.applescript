#!/usr/bin/osascript

# Required parameters:
# @raycast.schemaVersion 1
# @raycast.title Toggle Dock Autohide
# @raycast.mode silent

# Optional parameters:
# @raycast.icon images/toggle-dock-autohide-icon.png
# @raycast.packageName system

# Documentation:
# @raycast.description Toggle dock autohide on or off
# @raycast.author Lazar Jovanovic
# @raycast.authorURL @lazarjov

tell application "System Events"
    tell dock preferences
        set currentSetting to autohide
        set autohide to not currentSetting
    end tell
end tell


