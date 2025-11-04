#Requires AutoHotkey v2.0

; ---------------------------
; MacOS style text navigation
;----------------------------

; Make Win + Left do Ctrl + Left
#Left::Send("^{Left}")

; Make Win + Shift + Left do Ctrl + Shift + Left
#+Left::Send("^+{Left}")

; Make Win + Right do Ctrl + Right
#Right::Send("^{Right}")

; Make Win + Shift + Right do Ctrl + Shift + Right
#+Right::Send("^+{Right}")

; Make Ctrl + Left go to start of line (like Home)
^Left::Home

; Make Ctrl + Right go to end of line (like End)
^Right::End

; Make Alt + Backspace act like Delete
!Backspace::Delete


; --------------------------
; Other MacOS-like shortcuts
;---------------------------

; Make left Ctrl key the left Alt key and vice versa
LCtrl::LAlt
LAlt::LCtrl

; Swap Ctrl + Tab and Alt + Tab to keep the positions the same
^Tab::Send("!{Tab}")
!Tab::Send("^{Tab}")

; Make Alt + E bring up the emoji input (like fn + E on MacOS)
!e::Send("#.")

; Make Ctrl + Q execute Alt + F4
^Q::Send("!{F4}")

; --------------------
; Script configuration
;---------------------

; Change the tray icon to keyboard
TraySetIcon("D:\OneDrive\System\Icons\windows-icons\accessibilitycpl_336.ico", , 1)
A_IconTip := "My custom shortcuts are active"
