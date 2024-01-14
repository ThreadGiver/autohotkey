#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

^;::^z
^z::^;
^q::^x
^x::^q
^j::^c
^c::^j
^k::^v
^v::^k

:C:\?::¿
:C:\!::¡
:C:\->::→
:C:\<-::←
:C:\+-::±
:C:\*::°
:C:\v::√
:C:\=::≈
:C:\>::≥
:C:\<::≤
:C:\p::π
:C:\i::∞

SetNumLockState, AlwaysOff

<+WheelDown::WheelRight
<+WheelUp::WheelLeft

^!z::Run, "E:\Software\Display\rotate screen 1.lnk"
^!v::Run, "E:\Software\Display\rotate screen 2.lnk"

shutdown:
; #!^+a:: replaced by kc_slep
DllCall("PowrProf\SetSuspendState", "int", 0, "int", 0, "int", 0)
return
