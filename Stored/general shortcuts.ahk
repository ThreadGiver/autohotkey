#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

SetCapsLockState, AlwaysOff
CapsLock::F13

#1::Run, C:\Program Files (x86)\Google\Chrome\Application\chrome.exe
#2::Run, "C:\Users\Adrien\OneDrive - Cégep de l'Outaouais\École\Session A20"
#3::Run https://calendar.google.com/calendar/u/0/r/week/2020/10/24?tab=rc
#4::Run, C:\Users\Adrien\AppData\Roaming\Spotify\Spotify.exe
#5::Run, C:\Users\Adrien\AppData\Local\Microsoft\Teams\Update.exe --processStart "Teams.exe"
#6::Run, "C:\Users\Adrien\Downloads"




; fonction keys

>^1::F1
>^2::F2
>^3::F3
>^4::F4
>^5::F5
>^6::F6
>^7::F7
>^8::F8
>^9::F9
>^0::F10
>^[::F11
>^]::F12








#If, GetKeyState("CapsLock","P")

    *h::Left
    *t::Down
    *n::Right
    *c::Up

    s::Bs

    g::Enter

    r::AppsKey

    p::PrintScreen

    '::Send {Media_Play_Pause}
    ,::Send {Volume_Down}
    .::Send {Volume_Up}
    p::Send {Media_Prev}
    >y::Send {Media_Next}

