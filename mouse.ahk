#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.


; GuiState = 0

HideTrayTip(wait_time:=0) {
    Sleep, wait_time
	TrayTip  ; Attempt to hide it the normal way.
    if SubStr(A_OSVersion,1,3) = "10." {
        Menu Tray, NoIcon
        Sleep 200  ; It may be necessary to adjust this sleep.
        Menu Tray, Icon
    }
}


!+^#m::
    Suspend, Permit
    if (A_IsSuspended = 1) {
        TrayTip, Mouse On, Mouse shortcuts toggled On
        Suspend, Off
        HideTrayTip(1250)
    } else {
        TrayTip, Mouse Off, Mouse shortcuts toggled Off
        Suspend, On
        HideTrayTip(1250)
    } return
RWin::#Tab

XButton1::XButton1			; to maintain functionnality
XButton1 & WheelDown::WheelRight
XButton1 & WheelUp::WheelLeft
XButton1 & RButton::^c
XButton1 & LButton::^v
XButton1 & MButton::Enter
XButton1 & RWin::send {Backspace}

XButton2::XButton2
XButton2 & WheelDown::AltTab
XButton2 & WheelUp::ShiftAltTab
XButton2 & RButton::^x
XButton2 & LButton::^z
XButton2 & MButton::
XButton2 & RWin::
return


;XButton1 & XButton2::
;	If (GuiState = 0) {
;		CoordMode, Mouse, Screen
;		MouseGetPos, XMousePos, YMousePos
;		Gui, MouseEntry:New, +AlwaysOnTop -Caption +Owner, Mouse entry
;		Gui, MouseEntry:Add, ListBox, r8 gButtonLabel vMouseEntry, Alt+F4|Sleep| |Firefox|Spotify|OneDrive|Downloads
;		Gui, MouseEntry:Show, x%XMousePos% y%YMousePos%
;		GuiState := 1
;		Sleep 2000
;		Gui, MouseEntry:Destroy
;	} else {
;	Gui, MouseEntry:Destroy
;	GuiState := 0	
;	}
;return

;XButton2 & XButton1::
;return

; === === === Subroutines === === ===

; ButtonLabel:
; 	Gui, Submit
; 	If (MouseEntry = "Firefox"){
; 		gosub f13
; 	}
; 	else if (MouseEntry = "Spotify"){
; 		gosub f16
; 	}
; 	else if (MouseEntry = "OneDrive") {
; 		gosub f14
; 	}
; 	else if (MouseEntry = "Downloads") {
; 		gosub f17
; 	}
; 	else if (MouseEntry = "Sleep") {
; 		gosub shutdown
; 	}
; 	else if (MouseEntry = "Alt+F4") {
; 		send !{F4}
; 	}
; 	; else if (MouseEntry = "←") {
; 	; 	send {Backspace}
; 	; }
; 	else if (MouseEntry = "") {
	
; 	}
; 	else if (MouseEntry = "") {
	
; 	}
; 	else if (MouseEntry = "") {
	
; 	}
; 	else if (MouseEntry = "") {
	
; 	}
; 	Gui, MouseEntry:Destroy
; 	GuiState := 0
; return
