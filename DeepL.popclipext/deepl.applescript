set the clipboard to "{popclip text}"

tell application "DeepL"
	activate
	delay 0.2

	tell application "System Events"
		keystroke "0" using {command down}
		keystroke "v" using {command down}
	end tell
end tell
