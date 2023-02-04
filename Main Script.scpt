# macOSRamDisk By chris1111
# Copyright (c) 2023, chris1111. All Right Reserved.
set macOS to choose from list {"256MB", "512MB", "1GB", "2GB", "3GB", "4GB", "5GB", "6GB", "7GB", "8GB"} with title "macOSRamDisk" with prompt "
Choose the RamDisk size: 
Then press RamDisk button
" default items "macOS Ventura" OK button name {"RamDisk"} cancel button name {"Cancel"}
if macOS is false then
	display dialog "Quit macOSRamDisk" with icon note buttons {"Exit"} default button {"Exit"}
	error number -128
end if
set volumeName to "RAMDisk"
display dialog "Choose the RamDisk file system: 
HFS+ 
HFS+J
APFS

Default ➥ (HFS+)" default answer "HFS+" buttons {"Cancel", "OK"} default button 2
set FileSystem to (text returned of the result)
delay 1
if macOS is {"256MB"} then
	set sizeInSectors to "524288"
	set n to 5
	set progress total steps to n
	set progress description to "macOS-RamDisk ➤ " & FileSystem & " ➦ 256MB= (" & sizeInSectors & ")"
	set progress additional description to "Create macOS-RamDisk Done"
	
	repeat with i from 1 to n
		delay 0.2
		set progress completed steps to i
	end repeat
	set the_command to "diskutil erasevolume " & FileSystem & " '" & volumeName & "' `hdiutil attach -nomount ram://" & sizeInSectors & "`"
	do shell script the_command
	delay 1
end if

if macOS is {"512MB"} then
	set n to 5
	set progress total steps to n
	set progress description to "macOS-RamDisk ➤ " & FileSystem & " ➦ 512MB= (" & sizeInSectors & ")"
	set progress additional description to "Create macOS-RamDisk Done"
	
	repeat with i from 1 to n
		delay 0.2
		set progress completed steps to i
	end repeat
	set sizeInSectors to "1048576"
	set the_command to "diskutil erasevolume " & FileSystem & " '" & volumeName & "' `hdiutil attach -nomount ram://" & sizeInSectors & "`"
	do shell script the_command
	delay 1
end if

if macOS is {"1GB"} then
	set n to 5
	set progress total steps to n
	set progress description to "macOS-RamDisk ➤ " & FileSystem & " ➦ 1GB= (" & sizeInSectors & ")"
	set progress additional description to "Create macOS-RamDisk Done"
	
	repeat with i from 1 to n
		delay 0.2
		set progress completed steps to i
	end repeat
	set sizeInSectors to "2097152"
	set the_command to "diskutil erasevolume " & FileSystem & " '" & volumeName & "' `hdiutil attach -nomount ram://" & sizeInSectors & "`"
	do shell script the_command
	delay 1
end if

if macOS is {"2GB"} then
	set n to 5
	set progress total steps to n
	set progress description to "macOS-RamDisk ➤ " & FileSystem & " ➦ 2GB= (" & sizeInSectors & ")"
	set progress additional description to "Create macOS-RamDisk Done"
	
	repeat with i from 1 to n
		delay 0.2
		set progress completed steps to i
	end repeat
	set sizeInSectors to "4194304"
	set the_command to "diskutil erasevolume " & FileSystem & " '" & volumeName & "' `hdiutil attach -nomount ram://" & sizeInSectors & "`"
	do shell script the_command
	delay 1
end if

if macOS is {"3GB"} then
	set n to 5
	set progress total steps to n
	set progress description to "macOS-RamDisk ➤ " & FileSystem & " ➦ 3GB= (" & sizeInSectors & ")"
	set progress additional description to "Create macOS-RamDisk Done"
	
	repeat with i from 1 to n
		delay 0.2
		set progress completed steps to i
	end repeat
	set sizeInSectors to "6294456"
	set the_command to "diskutil erasevolume " & FileSystem & " '" & volumeName & "' `hdiutil attach -nomount ram://" & sizeInSectors & "`"
	do shell script the_command
	delay 1
end if

if macOS is {"4GB"} then
	set n to 5
	set progress total steps to n
	set progress description to "macOS-RamDisk ➤ " & FileSystem & " ➦ 4GB= (" & sizeInSectors & ")"
	set progress additional description to "Create macOS-RamDisk Done"
	
	repeat with i from 1 to n
		delay 0.2
		set progress completed steps to i
	end repeat
	set sizeInSectors to "8391608"
	set the_command to "diskutil erasevolume " & FileSystem & " '" & volumeName & "' `hdiutil attach -nomount ram://" & sizeInSectors & "`"
	do shell script the_command
	delay 1
end if

if macOS is {"5GB"} then
	set sizeInSectors to "10488760"
	set n to 5
	set progress total steps to n
	set progress description to "macOS-RamDisk ➤ " & FileSystem & " ➦ 5GB= (" & sizeInSectors & ")"
	set progress additional description to "Create macOS-RamDisk Done"
	
	repeat with i from 1 to n
		delay 0.2
		set progress completed steps to i
	end repeat
	set the_command to "diskutil erasevolume " & FileSystem & " '" & volumeName & "' `hdiutil attach -nomount ram://" & sizeInSectors & "`"
	do shell script the_command
	delay 1
end if

if macOS is {"6GB"} then
	set n to 5
	set progress total steps to n
	set progress description to "macOS-RamDisk ➤ " & FileSystem & " ➦ 6GB= (" & sizeInSectors & ")"
	set progress additional description to "Create macOS-RamDisk Done"
	
	repeat with i from 1 to n
		delay 0.2
		set progress completed steps to i
	end repeat
	set sizeInSectors to "12585912"
	set the_command to "diskutil erasevolume " & FileSystem & " '" & volumeName & "' `hdiutil attach -nomount ram://" & sizeInSectors & "`"
	do shell script the_command
	delay 1
end if

if macOS is {"7GB"} then
	set n to 5
	set progress total steps to n
	set progress description to "macOS-RamDisk ➤ " & FileSystem & " ➦ 7GB= (" & sizeInSectors & ")"
	set progress additional description to "Create macOS-RamDisk Done"
	
	repeat with i from 1 to n
		delay 0.2
		set progress completed steps to i
	end repeat
	set sizeInSectors to "14683064"
	set the_command to "diskutil erasevolume " & FileSystem & " '" & volumeName & "' `hdiutil attach -nomount ram://" & sizeInSectors & "`"
	do shell script the_command
	delay 1
end if

if macOS is {"8GB"} then
	set n to 5
	set progress total steps to n
	set progress description to "macOS-RamDisk ➤ " & FileSystem & " ➦ 8GB= (" & sizeInSectors & ")"
	set progress additional description to "Create macOS-RamDisk Done"
	
	repeat with i from 1 to n
		delay 0.2
		set progress completed steps to i
	end repeat
	set sizeInSectors to "16384000"
	set the_command to "diskutil erasevolume " & FileSystem & " '" & volumeName & "' `hdiutil attach -nomount ram://" & sizeInSectors & "`"
	do shell script the_command
	delay 1
end if


