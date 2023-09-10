set previousClipboard to the clipboard
set the clipboard to do shell script "echo " & quoted form of "{popclip text}" & " | sed -e 's/^ *\\/\\/\\/ *//' -e 's/^ *\\/\\/ *//' -e 's/^ *# *//' -e 's/$/ /' | tr -d '\\n'"

tell application "DeepL"
	activate
	delay 0.2

	tell application "System Events"
		keystroke "0" using {command down}
		keystroke "v" using {command down}
	end tell
end tell

delay 0.2
set the clipboard to previousClipboard
