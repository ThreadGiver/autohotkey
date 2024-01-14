#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.


Run C:\Software\nircmd\nircmd.exe setdefaultsounddevice Headphones
SoundOutputState := 0

HideTrayTip(wait_time:=100) {
    Sleep, wait_time
	TrayTip  ; Attempt to hide it the normal way.
    if SubStr(A_OSVersion,1,3) = "10." {
        Menu Tray, NoIcon
        Sleep 200  ; It may be necessary to adjust this sleep.
        Menu Tray, Icon
    }
}


f13::Run, C:\Program Files\Mozilla Firefox\firefox.exe
f14::Run, "C:\Users\Adrien\OneDrive - Cégep de l'Outaouais\École\Session H23"
f15::Run https://calendar.google.com/calendar/u/0/r/week
f16::Run, C:\Users\Adrien\AppData\Roaming\Spotify\Spotify.exe	
f17::Run, "C:\Users\Adrien\Downloads"
f18::Run https://cegepoutaouais.omnivox.ca/
f19::
	If (SoundOutputState = 0) {
		Run C:\Software\nircmd\nircmd.exe setdefaultsounddevice Speakers
		SoundOutputState := 1
		TrayTip, Speakers, Sound output switched to speakers
		HideTrayTip(1250)
	} else if (SoundOutputState = 1) {
		Run C:\Software\nircmd\nircmd.exe setdefaultsounddevice Headphones
		SoundOutputState := 0
		TrayTip, Headphones, Sound output switched to headphones
		HideTrayTip(1250)
	} else {
		SoundOutputState := 1
	} return
; f20::
; f21::
; f22::
; f23::
; f24::

!+^#s::
	TrayTip, Qwerty fn on, Turned on Qwerty fonctions
	HideTrayTip(2000)
	return
!+^#z::
	TrayTip, Qwerty fn off, Turned off Qwerty fonctions
	HideTrayTip(2000)
	return
