;testAHK Script
idleTime := 0
IfWinExist ahk_exe excel.exe
{
	If (idleTime < 900000)
		msgBox % "Doing things with stuff"
} else {
	msgBox % "fail?"
}