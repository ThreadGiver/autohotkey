#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

SetCapsLockState, AlwaysOff
CapsLock::F13

Launch_Mail::Run https://mail.google.com/mail/u/0/?tab=rm#inbox
;Browser_Home::
Launch_App1::Run, "C:\Users\Adrien\OneDrive - Cégep de l'Outaouais\École\Session A20"

;---

#If, GetKeyState("CapsLock","P")

    ;arrow keys

    *h::Left
    *t::Down
    *n::Right
    *c::Up

    s::Bs

    g::Enter

    r::AppsKey

    1::Run, C:\Users\Adrien\AppData\Roaming\Spotify\Spotify.exe

    2::Run, C:\Users\Adrien\AppData\Local\Microsoft\Teams\Update.exe --processStart "Teams.exe"

    Browser_Home::Run https://calendar.google.com/calendar/u/0/r/week/2020/10/24?tab=rc

    Launch_App1::Run, "C:\Users\Adrien\Downloads"

    p::PrintScreen

    WheelUp::  ; Scroll left.
    ControlGetFocus, fcontrol, A
    Loop 12  ; <-- Increase or decrease this value to scroll faster or slower.
        SendMessage, 0x114, 0, 0, %fcontrol%, A  ; 0x114 is WM_HSCROLL and the 0 after it is SB_LINERIGHT.
    return

    WheelDown::  ; Scroll right.
    ControlGetFocus, fcontrol, A
    Loop 12  ; <-- Increase or decrease this value to scroll faster or slower.
        SendMessage, 0x114, 1, 0, %fcontrol%, A  ; 0x114 is WM_HSCROLL and the 1 after it is SB_LINELEFT.
    return

    Escape::
    If GetKeyState("CapsLock","T"){
        SetCapsLockState, AlwaysOff
        }
    Else{
        SetCapsLockState, On
        }
    return

