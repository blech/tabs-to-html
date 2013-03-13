-- You can run this for testing
set theFile to openForWriting("Chrome")
writeHeader(theFile, "test dt")
writeLink(theFile, "test dl", "http://husk.org/")
closeForWriting(theFile)

-- These are the main handlers
on openForWriting(appName)
	set isoDate to (current date) as «class isot» as string
	set isoDate to replace_chars(isoDate, ":", "-")
	
	set docPath to path to documents folder
	set docPosixPath to POSIX path of docPath
	
	set theFile to docPosixPath & "personal/tabs/" & appName & "_" & iso_date & ".html"
	
	open for access theFile with write permission
	
	set header to html_header(appName, iso_date)
	write header to the_file
	
	return the_file
end openForWriting

on writeHeader(theFile, windowTitle)
	set html to "	<dt><b>" & windowTitle & "</b></dt>" & (ASCII character 13)
	write html to theFile
end writeHeader

on writeLink(theFile, tabTitle, tabURL)
	if tabTitle is "" then
		set tabTitle to "(untitled)"
	end if
	set html to "		<dd><a href='" & tabURL & "'>" & tabTitle & "</a></dd>" & (ASCII character 13)
	write html to theFile
end writeLink

on closeForWriting(theFile)
	set html to "	</dl>" & (ASCII character 13) & "</body></html>" & (ASCII character 13)
	write html to theFile
	close access theFile
end closeForWriting

on replace_chars(this_text, search_string, replacement_string)
	set AppleScript's text item delimiters to the search_string
	set the item_list to every text item of this_text
	set AppleScript's text item delimiters to the replacement_string
	set this_text to the item_list as string
	set AppleScript's text item delimiters to ""
	return this_text
end replace_chars

on html_header(appName, iso_date)
	return "<html><head><title>open tabs for " & appName & " on " & iso_date & "</title></head><body bgcolor='#fff'>
	<dl>" & (ASCII character 13)
end html_header