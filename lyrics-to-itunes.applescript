tell application "Music"
	set myList to (get database ID of every track whose lyrics is equal to "")
	
	repeat with myID in myList
		set myTitle to (get (name of every track whose database ID is equal to myID))
		set myArtist to (get (artist of every track whose database ID is equal to myID))
		
		-- set myLyrics to (do shell script "export PATH=/usr/local/bin:$PATH;python3 /complete/path/to/lyrics1.py --artist=\"" & myArtist & "\" --title=\"" & myTitle & "\"")
		set myLyrics to (do shell script "export PATH=/usr/local/bin:$PATH;python3 /complete/path/to/lyrics2.py --artist=\"" & myArtist & "\" --title=\"" & myTitle & "\"")
		
		set lyrics of (every track whose database ID is equal to myID) to myLyrics
	end repeat
end tell


-- remove script output when no lyrics was found
tell application "Music"
	set myList to (get database ID of every track whose lyrics contains "Specified song does not have a valid URL with lyrics. Rejecting.")
	
	repeat with myID in myList
		set lyrics of (every track whose database ID is equal to myID) to ""
	end repeat
end tell

tell application "Music"
	set myList to (get database ID of every track whose lyrics contains "Google found nothing.")
	
	repeat with myID in myList
		set lyrics of (every track whose database ID is equal to myID) to ""
	end repeat
end tell