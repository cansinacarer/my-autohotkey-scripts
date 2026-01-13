#Requires AutoHotkey v2.0

; ---------------------------
; MacOS style text navigation
;----------------------------

; Replace home button with Escape
Browser_Home::Escape


; ---------------------------
; MacOS style text navigation
;----------------------------

; Make Alt + Left do Ctrl + Left
!Left::Send("^{Left}")

; Make Alt + Shift + Left do Ctrl + Shift + Left
!+Left::Send("^+{Left}")

; Make Alt + Right do Ctrl + Right
!Right::Send("^{Right}")

; Make Alt + Shift + Right do Ctrl + Shift + Right
!+Right::Send("^+{Right}")

; Make Alt + Left go to start of line (like Home)
^Left::Home

; Make Alt + Right go to end of line (like End)
^Right::End

; Page up page down with Cmd Up down
#Up::Send("{PageUp}")
#Down::Send("{PageDown}")

; Disable browser back and browser search buttons
Browser_Back::F13
Browser_Search::F14

; Make Ctrl + Space execute Ctrl + Win + Alt + R for PowerToys run
^Space::Send("^#!R")

; --------------------------
; Other MacOS-like shortcuts
;---------------------------

; Make Windows button work as Ctrl
LWin::LCtrl
RWin::RCtrl

; Make Left Control work as Windows button
LCtrl::LWin
RCtrl::RWin

; Make Ctrl + Q execute Alt + F4
^Q::Send("!{F4}")

; --------------------
; Script configuration
;---------------------

; Change the tray icon to keyboard
TraySetIcon("D:\OneDrive\System\Icons\windows-icons\accessibilitycpl_336.ico", , 1)
A_IconTip := "My custom shortcuts are active"
