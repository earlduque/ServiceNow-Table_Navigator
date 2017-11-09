SetTitleMatchMode, 2

;various table grabs in SN
#IfWinActive, ServiceNow

^Numpad0::
	send, { ctrl down } {alt down}f{ ctrl up }{alt up}
	windows1 := GetTableName(1)
	windows2 := GetTableName(2)
	windows3 := GetTableName(3)
	windows4 := GetTableName(4)
	windows5 := GetTableName(5)
	windows6 := GetTableName(6)
	windows7 := GetTableName(7)
	windows8 := GetTableName(8)
	windows9 := GetTableName(9)
	WinGetActiveStats, Title, Width, Height, X, Y
	guiWidth := X
	guiHeight := Y+200
	Gui, New,,SN Tables
	gui, font, s12
	Gui, Add, Text,, Choose a shortcut (click or type)
	Gui, Add, Text,gLaunchNumpad1,numpad1. %windows1%
	Gui, Add, Text,gLaunchNumpad2,numpad2. %windows2%
	Gui, Add, Text,gLaunchNumpad3,numpad3. %windows3%
	Gui, Add, Text,gLaunchNumpad4,numpad4. %windows4%
	Gui, Add, Text,gLaunchNumpad5,numpad5. %windows5%
	Gui, Add, Text,gLaunchNumpad6,numpad6. %windows6%
	Gui, Add, Text,gLaunchNumpad7,numpad7. %windows7%
	Gui, Add, Text,gLaunchNumpad8,numpad8. %windows8%
	Gui, Add, Text,gLaunchNumpad9,numpad9. %windows9%
	gui, font, s10
	Gui, Add, Text,gLaunchEdit,[Edit Shortcuts]
	Gui -Caption
	Gui, Show, X%guiWidth% Y%guiHeight%
	while (GetKeyState("Numpad0", "P") or GetKeyState("Ctrl","P")) {
		if (GetKeyState("Numpad1", "P")) 
			gosub LaunchNumpad1
		if (GetKeyState("Numpad2", "P"))
			gosub LaunchNumpad2
		if (GetKeyState("Numpad3", "P"))
			gosub LaunchNumpad3
		if (GetKeyState("Numpad4", "P"))
			gosub LaunchNumpad4
		if (GetKeyState("Numpad5", "P"))
			gosub LaunchNumpad5
		if (GetKeyState("Numpad6", "P"))
			gosub LaunchNumpad6
		if (GetKeyState("Numpad7", "P"))
			gosub LaunchNumpad7
		if (GetKeyState("Numpad8", "P"))
			gosub LaunchNumpad8
		if (GetKeyState("Numpad9", "P"))
			gosub LaunchNumpad9
	}
	sleep 500
	Gui Destroy
	WinActivate, %Title%
	return
	
LaunchNumpad1:
	Gui Destroy
	WinActivate, %Title%
	SendNavAction(1)
	return
LaunchNumpad2:
	Gui Destroy
	WinActivate, %Title%
	SendNavAction(2)
	return
LaunchNumpad3:
	Gui Destroy
	WinActivate, %Title%
	SendNavAction(3)
	return
LaunchNumpad4:
	Gui Destroy
	WinActivate, %Title%
	SendNavAction(4)
	return
LaunchNumpad5:
	Gui Destroy
	WinActivate, %Title%
	SendNavAction(5)
	return
LaunchNumpad6:
	Gui Destroy
	WinActivate, %Title%
	SendNavAction(6)
	return
LaunchNumpad7:
	Gui Destroy
	WinActivate, %Title%
	SendNavAction(7)
	return
LaunchNumpad8:
	Gui Destroy
	WinActivate, %Title%
	SendNavAction(8)
	return
LaunchNumpad9:
	Gui Destroy
	WinActivate, %Title%
	SendNavAction(9)
	return

LaunchEdit:
	Gui Destroy
	Gui, New,,Edit Table
	gui, font, s12
	Gui, Add, Text,, Pick one to edit
	Gui, Add, Text, cGray gLaunchEdit1,numpad1. %windows1%
	Gui, Add, Text, cGray gLaunchEdit2,numpad2. %windows2%
	Gui, Add, Text, cGray gLaunchEdit3,numpad3. %windows3%
	Gui, Add, Text, cGray gLaunchEdit4,numpad4. %windows4%
	Gui, Add, Text, cGray gLaunchEdit5,numpad5. %windows5%
	Gui, Add, Text, cGray gLaunchEdit6,numpad6. %windows6%
	Gui, Add, Text, cGray gLaunchEdit7,numpad7. %windows7%
	Gui, Add, Text, cGray gLaunchEdit8,numpad8. %windows8%
	Gui, Add, Text, cGray gLaunchEdit9,numpad9. %windows9%
	gui, font, s10
	Gui -Caption
	Gui, Show, X%guiWidth% Y%guiHeight%
	return

LaunchEdit1:
	Gui Destroy
	InputBox, NewShortcut, Edit Shortcut, Please type the new shortcut below.`n`nExample:`nincident.list will load the incident table`nincident.do will start a new record on the incident table
	IniWrite, %NewShortcut%, %A_ScriptDir%\SNTableNav.ini, TableNames, TableName1
	reload
	return
LaunchEdit2:
	Gui Destroy
	InputBox, NewShortcut, Edit Shortcut, Please type the new shortcut below.`n`nExample:`nincident.list will load the incident table`nincident.do will start a new record on the incident table
	IniWrite, %NewShortcut%, %A_ScriptDir%\SNTableNav.ini, TableNames, TableName2
	reload
	return
LaunchEdit3:
	Gui Destroy
	InputBox, NewShortcut, Edit Shortcut, Please type the new shortcut below.`n`nExample:`nincident.list will load the incident table`nincident.do will start a new record on the incident table
	IniWrite, %NewShortcut%, %A_ScriptDir%\SNTableNav.ini, TableNames, TableName3
	reload
	return
LaunchEdit4:
	Gui Destroy
	InputBox, NewShortcut, Edit Shortcut, Please type the new shortcut below.`n`nExample:`nincident.list will load the incident table`nincident.do will start a new record on the incident table
	IniWrite, %NewShortcut%, %A_ScriptDir%\SNTableNav.ini, TableNames, TableName4
	reload
	return
LaunchEdit5:
	Gui Destroy
	InputBox, NewShortcut, Edit Shortcut, Please type the new shortcut below.`n`nExample:`nincident.list will load the incident table`nincident.do will start a new record on the incident table
	IniWrite, %NewShortcut%, %A_ScriptDir%\SNTableNav.ini, TableNames, TableName5
	reload
	return
LaunchEdit6:
	Gui Destroy
	InputBox, NewShortcut, Edit Shortcut, Please type the new shortcut below.`n`nExample:`nincident.list will load the incident table`nincident.do will start a new record on the incident table
	IniWrite, %NewShortcut%, %A_ScriptDir%\SNTableNav.ini, TableNames, TableName6
	reload
	return
LaunchEdit7:
	Gui Destroy
	InputBox, NewShortcut, Edit Shortcut, Please type the new shortcut below.`n`nExample:`nincident.list will load the incident table`nincident.do will start a new record on the incident table
	IniWrite, %NewShortcut%, %A_ScriptDir%\SNTableNav.ini, TableNames, TableName7
	reload
	return
LaunchEdit8:
	Gui Destroy
	InputBox, NewShortcut, Edit Shortcut, Please type the new shortcut below.`n`nExample:`nincident.list will load the incident table`nincident.do will start a new record on the incident table
	IniWrite, %NewShortcut%, %A_ScriptDir%\SNTableNav.ini, TableNames, TableName8
	reload
	return
LaunchEdit9:
	Gui Destroy
	InputBox, NewShortcut, Edit Shortcut, Please type the new shortcut below.`n`nExample:`nincident.list will load the incident table`nincident.do will start a new record on the incident table
	IniWrite, %NewShortcut%, %A_ScriptDir%\SNTableNav.ini, TableNames, TableName9
	reload
	return


GetTableName(windownumpad){
	if (windownumpad = 1){
		IniRead, TableName, %A_ScriptDir%\SNTableNav.ini, TableNames, TableName1
	} else if (windownumpad = 2){
		IniRead, TableName, %A_ScriptDir%\SNTableNav.ini, TableNames, TableName2
	} else if (windownumpad = 3){
		IniRead, TableName, %A_ScriptDir%\SNTableNav.ini, TableNames, TableName3
	} else if (windownumpad = 4){
		IniRead, TableName, %A_ScriptDir%\SNTableNav.ini, TableNames, TableName4
	} else if (windownumpad = 5){
		IniRead, TableName, %A_ScriptDir%\SNTableNav.ini, TableNames, TableName5
	} else if (windownumpad = 6) {
		IniRead, TableName, %A_ScriptDir%\SNTableNav.ini, TableNames, TableName6
	} else if (windownumpad = 7) {
		IniRead, TableName, %A_ScriptDir%\SNTableNav.ini, TableNames, TableName7
	} else if (windownumpad = 8) {
		IniRead, TableName, %A_ScriptDir%\SNTableNav.ini, TableNames, TableName8
	} else if (windownumpad = 9) {
		IniRead, TableName, %A_ScriptDir%\SNTableNav.ini, TableNames, TableName9
	}
	return TableName
}

SendNavAction(numpadNumber){
	send, {ctrl down}{alt down}f{ctrl up}{alt up}
	sleep,100
	zTableName := GetTableName(numpadNumber)
	sendinput, %zTableName%{enter}
}


/* Ini Stream
[TableNames]
TableName1=incident.list
TableName2=sys_user.list
TableName3=sys_user_group.list
TableName4=sc_cat_item.list
TableName5=u_service_desk_emails.list
TableName6=sys_properties.list
TableName7=sys_upgrade_history_log.list
TableName8=sys_user_role.list
TableName9=none
*/