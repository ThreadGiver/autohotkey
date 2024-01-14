#Requires AutoHotkey v2.0
sideButtonSuspended := false

Notification(title, text := "", wait_time := 1250) {
    Traytip text, title
    Sleep(wait_time)
    TrayTip
}


SuspendSideButtons() {
    global sideButtonSuspended
    if (sideButtonSuspended) {
        sideButtonSuspended := false
        Notification("Mouse shortcuts on")
    } else {
        sideButtonSuspended := true
        Notification("Mouse shortcust off")
    }
}

!+^#m:: SuspendSideButtons
RWin::#Tab


#HotIf !sideButtonSuspended

XButton1::XButton1			; to maintain functionnality
XButton1 & WheelDown::WheelRight
XButton1 & WheelUp::WheelLeft
XButton1 & RButton::^c
XButton1 & LButton::^v
XButton1 & MButton::Enter
XButton1 & RWin::BackSpace

XButton2::XButton2
XButton2 & WheelDown::AltTab
XButton2 & WheelUp::ShiftAltTab
XButton2 & RButton::^x
XButton2 & LButton::^z
XButton2 & MButton::
XButton2 & RWin:: return

#HotIf

; GuiState := false
; xMousePos := 0
; yMousePos := 0
; XButton1 & XButton2:: {
;     global GuiState
;     If (!GuiState) {
;         CoordMode "Mouse", "Screen"
;         MouseGetPos &xMousePos, &yMousePos
;         MouseEntry := Gui("+AlwaysOnTop - Caption + Owner", "Mouse entry")
;         MouseEntry.Add(
;             "ListBox",
;             "r8 vMouseEntry",
;             ["Alt + F4", "Sleep", "Firefox", "Spotify", "OneDrive", "Downloads"]
;         )
;         MouseEntry.Show("X" xMousePos " Y" yMousePos)
;         GuiState := true
;     } else {
;         MouseEntry.Destroy()
;         GuiState := false
;     }

; }

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
