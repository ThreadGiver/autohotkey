#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

SetCapsLockState, AlwaysOff
CapsLock::F13

#1::Run, C:\Program Files\Mozilla Firefox\firefox.exe
#2::Run, "C:\Users\Adrien\OneDrive - Cégep de l'Outaouais\École\Session H21"
#3::Run https://calendar.google.com/calendar/u/0/r/week
#4::Run, C:\Users\Adrien\AppData\Roaming\Spotify\Spotify.exe
#5::Run, C:\Users\Adrien\AppData\Local\Microsoft\Teams\Update.exe --processStart "Teams.exe"
#6::Run, "C:\Users\Adrien\Downloads"


#If, GetKeyState("CapsLock","P")
	*h::Left
	*t::Down
	*n::Right
	*c::Up
	s::Send {Bs}
	g::Send {Enter}
	l::Send {escape}
	r::Send {AppsKey}

	f::Send {PgUp}
	d::Send {PgDn}
	a::Send {Del}
	o::Send {Home}
	e::Send {end}
	q::Send {Ins}
	j::
	If GetKeyState("CapsLock","T"){
	    SetCapsLockState, AlwaysOff
	    }
	Else{
	    SetCapsLockState, On
	    }
	return

	k::Send {|}
	x::Send {_}
	u::Send {``}
	i::Send {~}

	`;::Send {PrintScreen}
	'::Send {Media_Play_Pause}
	,::Send {Volume_Down}
	.::Send {Volume_Up}
	p::Send {Media_Prev}
	y::Send {Media_Next}
	b::Send {Volume_Mute}
