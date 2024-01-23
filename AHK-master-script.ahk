#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
#NoTrayIcon

; Make the string td send the current date in ISO8601 format
::td::
     SendInput, %A_yyyy%-%A_MM%-%A_dd%
return

; Bind CapsLock+IJKL to ArrowKeys by madslundt

SetCapsLockState, AlwaysOff

CapsLock & i::
if GetKeyState("Shift", "D")
    if GetKeyState("Alt", "D")
        Send +^{Up}
    else if GetKeyState("Ctrl", "D")
        Send +!{Up}
    else
        Send +{Up}
else if GetKeyState("Ctrl", "D")
    if (GetKeyState("Alt", "D"))
        Send !^{Up}
    else
        Send !{Up}
else if GetKeyState("Alt", "D")
    Send ^{Up}
else
    Send {Up}
return

CapsLock & k::
if GetKeyState("Shift", "D")
    if GetKeyState("Alt", "D")
        Send +^{Down}
    else if GetKeyState("Ctrl", "D")
        Send +!{Down}
    else
        Send +{Down}
else if GetKeyState("Ctrl", "D")
    if (GetKeyState("Alt", "D"))
        Send !^{Down}
    else
        Send !{Down}
else if GetKeyState("Alt", "D")
    Send ^{Down}
else
    Send {Down}
return

CapsLock & j::
if GetKeyState("Shift", "D")
    if GetKeyState("Alt", "D")
        Send +^{Left}
    else if GetKeyState("Ctrl", "D")
        Send +!{Left}
    else
        Send +{Left}
else if GetKeyState("Ctrl", "D")
    if (GetKeyState("Alt", "D"))
        Send !^{Left}
    else
        Send !{Left}
else if GetKeyState("Alt", "D")
    Send ^{Left}
else
    Send {Left}
return

CapsLock & l::
if GetKeyState("Shift", "D")
    if GetKeyState("Alt", "D")
        Send +^{Right}
    else if GetKeyState("Ctrl", "D")
        Send +!{Right}
    else
        Send +{Right}
else if GetKeyState("Ctrl", "D")
    if (GetKeyState("Alt", "D"))
        Send !^{Right}
    else
        Send !{Right}
else if GetKeyState("Alt", "D")
    Send ^{Right}
else
    Send {Right}
return

CapsLock & u::
if GetKeyState("Shift", "D")
    if GetKeyState("Alt", "D")
        Send +^{Home}
    else if GetKeyState("Ctrl", "D")
        Send +!{Home}
    else
        Send +{Home}
else if GetKeyState("Ctrl", "D")
    if (GetKeyState("Alt", "D"))
        Send !^{Home}
    else
        Send !{Home}
else if GetKeyState("Alt", "D")
    Send ^{Home}
else
    Send {Home}
return

CapsLock & o::
if GetKeyState("Shift", "D")
    if GetKeyState("Alt", "D")
        Send +^{End}
    else if GetKeyState("Ctrl", "D")
        Send +!{End}
    else
        Send +{End}
else if GetKeyState("Ctrl", "D")
    if (GetKeyState("Alt", "D"))
        Send !^{End}
    else
        Send !{End}
else if GetKeyState("Alt", "D")
    Send ^{End}
else
    Send {End}
return

CapsLock & y:: send, {PgUp}
CapsLock & h:: send, {PgDn}

!i:: send, {PgUp}
!k:: send, {PgDn}

return


; PERSONAL SCRIPTS

; Set default states
SetNumlockState, AlwaysOn
SetScrolllockState, AlwaysOff

; Press middle mouse button to move up a folder in Explorer
#IfWinActive, ahk_class CabinetWClass
~MButton::Send !{Up} 
#IfWinActive

; Wheel Over Taskbar Volume Adjust
#If MouseIsOver("ahk_class Shell_TrayWnd")
WheelUp::Send {Volume_Up}
WheelDown::Send {Volume_Down}

MouseIsOver(WinTitle) {
    MouseGetPos,,, Win
    return WinExist(WinTitle . " ahk_id " . Win)
}

#IfWinActive ahk_exe ApplicationFrameHost.exe, Photos

MButton::Esc