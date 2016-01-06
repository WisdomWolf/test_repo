#SingleInstance Force
#Persistent

SetTimer, MoveMouse, 10000
SetTimer, FireKey, 10000
SetTimer, IdleCheck, 2000

MoveMouse:
	TrayTip, Idle, Moving Mouse!
	Random, xPos, 0, 1000
	Random, yPos, 0, 1900
	MouseMove, %xPos%, %yPos%
return
	
FireKey:
	Send {Ctrl down}
	Sleep 1000
	Send {Ctrl up}
return

IdleCheck:
	TrayTip, Idle, %A_TimeIdle%
return

