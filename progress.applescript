tell application "Music"
	set liste to (get name of every track whose lyrics is equal to "")
	return count of liste
end tell