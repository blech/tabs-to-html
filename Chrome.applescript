set libPath to path to library folder from user domain as string
set WriteLib to load script POSIX path of libPath & "Scripts/Libraries/FileWriter.scpt"

tell WriteLib
	set theFile to openForWriting("Chrome")
end tell

tell application "Google Chrome"
	repeat with window_item in every window
		set windowTitle to title of window_item
		
		tell WriteLib
			writeHeader(theFile, windowTitle)
		end tell
		
		repeat with tab_item in every tab in window_item
			set tabTitle to title of tab_item
			set tabURL to URL of tab_item
			
			tell WriteLib
				writeLink(theFile, tabTitle, tabURL)
			end tell
			
		end repeat
	end repeat
end tell

tell WriteLib
	closeForWriting(theFile)
end tell

beep


