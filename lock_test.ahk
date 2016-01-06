OnExit UnRegister ; unregister before exiting

Gui +LastFound
hwnd := WinExist() ; getting a handle to the script gui

MsgBox % DllCall("Wtsapi32.dll\WTSRegisterSessionNotification", "uint", hwnd, "uint", 0) ; registering the gui, but only for this session
MsgBox, % "Lock Test Registered"
OnMessage(0x02B1, "sessionChange") ; start listening
return

sessionChange(wparam, lparam, msg, hwnd)
{
FileAppend, %A_Now%-Session Changed:%wparam%`n, locktest.log
}

Unregister:
MsgBox % DllCall("Wtsapi32.dll\WTSUnRegisterSessionNotification", "uint", hwnd) ; unregister
MsgBox, % "Unregistration completed"
ExitApp ; and exit
return