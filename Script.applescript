tell application "System Events"
	
	set lista to get the name of every user
	
	repeat with theItem in lista
		
		if ((theItem as string) is not equal to "conta") and ((theItem as string) is not equal to "Guest") then
			
			do shell script "sudo dseditgroup -o edit -d " & (theItem as string) & " -t user admin" password "senha" with administrator privileges
			
		end if
		
		
	end repeat
	
end tell