#!/usr/bin/osascript

# Required parameters:
# @raycast.schemaVersion 1
# @raycast.title Clear All Notifications
# @raycast.mode silent

# Optional parameters:
# @raycast.icon images/clear-all-notifications-icon.png
# @raycast.packageName System

# Documentation:
# @raycast.description Clear all alert OS notifications currently active on the screen
# @raycast.author Lazar Jovanovic
# @raycast.authorURL @lazarjov

tell application "System Events"
	try
		set _groups to groups of UI element 1 of scroll area 1 of group 1 of window "Notification Center" of application process "NotificationCenter"
		
		repeat with _group in _groups
			
			set _actions to actions of _group
			
			repeat with _action in _actions
				if description of _action is in {"Close", "Clear All"} then
					perform _action
					
				end if
			end repeat
			
		end repeat
		
	end try
end tell

log "Cleared All Notifications"

