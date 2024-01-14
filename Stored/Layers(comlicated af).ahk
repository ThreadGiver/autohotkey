#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.



; RAlt layer (uses >!::)            Lower===============================================================================
>!'::Send {@}
>!,::Send {[}
>!.::Send {]}
>!p::Send {?}
>!y::Send {`%}
>!f::Send {-}
>!g::Send {7}
>!c::Send {8}
>!r::Send {9}
>!l::Send {+}
>!a::Send {$}
>!o::Send {(}
>!e::Send {)}
>!u::Send {\}
>!i::Send {#}
>!d::Send {^}
>!h::Send {4}
>!t::Send {5}
>!n::Send {6}
>!s::Send {/}
>!;::Send {&}
>!q::Send {{}
>!j::Send {}}
>!k::Send {!}
>!x::Send {=}
>!b::Send {0}
>!m::Send {1}
>!w::Send {2}
>!v::Send {3}
>!z::Send {*}



; LAlt layer (uses <!::)            Upper===============================================================================

<!*h::Send {Left}
<!*t::Send {Down}
<!*n::Send {Right}
<!*c::Send {Up}
<!s::Send {Bs}
<!f::Send {PgUp}
<!d::Send {PgDn}
<!a::Send {Del}
<!o::Send {Home}
<!e::Send {end}
<!q::Send {Ins}
<!g::Send {Enter}
<!j::
If GetKeyState("CapsLock","T"){
    SetCapsLockState, AlwaysOff
    }
Else{
    SetCapsLockState, On
    }
return
<!k::Send {~}
<!x::Send {_}
<!u::Send {`}
<!i::Send {|}
<!l::Send {escape}
<!r::Send {AppsKey}
<!`;::Send {PrintScreen}
<!'::Send {Media_Play_Pause}
<!,::Send {Volume_Down}
<!.::Send {Volume_Up}
<!p::Send {Media_Prev}
<!y::Send {Media_Next}
<!b::Send {Volume_Mute}



;=======================================================================================================================

; Space layer       Space UP::Send {Space}     #If, GetKeyState("Space","P")      return    DOES NOT WORK

; Menu layer        AppsKey Up::Send {AppsKey}     #If, GetKeyState("AppsKey","P")        return   DOES NOT WORK

; RCtrl layer (uses >^::)

; RShift layer (uses >+::)

; Enter layer       Enter UP::Send {Enter}     #If, GetKeyState("Enter","P")      return     DOES NOT WORK

; Tab key layer     Tab Up::Send {Tab}      #If, GetKeyState("Tab","P")     return

; LShift layer already full, to use in conjunction (uses <+::)

; LCtrl layer used in shortcuts, to determine (uses <^::)

; Windows key layer (uses #::)

; CapsLock key layer       SetCapsLockState, AlwaysOff     #If, GetKeyState("CapsLock","P")    return
