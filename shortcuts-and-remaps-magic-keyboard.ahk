#Requires AutoHotkey v2.0

; Change the tray icon to keyboard
TraySetIcon("D:\OneDrive\System\Icons\windows-icons\accessibilitycpl_336.ico", , 1)
A_IconTip := "My custom shortcuts are active"

; PowerToys Run shortcut setting
; Set to Ctrl + Space but effectively will be Cmd + Space since we swap Cmd/Ctrl

;--------------------------------------------------------------
;       Make Cmd work as Control
;--------------------------------------------------------------
; This makes the simulated LCtrl keypresses able to
; trigger hotkeys at level 0
#InputLevel 1
LWin::LCtrl
RWin::RCtrl
#InputLevel 0

;--------------------------------------------------------------
;       Reassign all function keys to labels, Cmd + Fx to Fx
;--------------------------------------------------------------

; Twinkle Tray hotkeys
^F1::SendInput("{F1}")
F1::F13
^F2::SendInput("{F2}")
F2::F14
; Other function keys
^F3::SendInput("{F3}")
F3::SendInput("{LWin}")
^F4::SendInput("{F4}")
F4::F16
^F5::SendInput("{F5}")
F5::#h
^F6::SendInput("{F6}")
F6::F18
^F7::SendInput("{F7}")
F7::Media_Prev
^F8::SendInput("{F8}")
F8::Media_Play_Pause
^F9::SendInput("{F9}")
F9::Media_Next
^F10::SendInput("{F10}")
F10::Volume_Mute
^F11::SendInput("{F11}")
F11::Volume_Down
^F12::SendInput("{F12}")
F12::Volume_Up


; ---------------------------
; MacOS style text navigation
; ----------------------------

; LEFT
; Make Alt + Left do usual Ctrl + Left,
; jumping one word at a time
!Left::Send("^{Left}")

; Make Alt + Shift + Left
; Select one word at a time leftwards
!+Left::Send("^+{Left}")

; Make Alt + Left go to start of line
; like Home on Windows
^Left::Home

; Make Cmd + Shift + Left
; Select up to Home like Shift + Home
; No need, this is the consequence of other shortcuts
; !+Left::Home

; RIGHT
; Make Alt + Right do usual Ctrl + Right
; jumping one word at a time
!Right::Send("^{Right}")

; Make Alt + Shift + Right
; Select one word at a time rightwards
!+Right::Send("^+{Right}")

; Make Alt + Right go to end of line
; like End on Windows
^Right::End

; Make Cmd + Shift + Right
; Select up to End like Shift + End
; No need, this is the consequence of other shortcuts
; !+Right::End

;--------------------------------------------------------------
;       Other Shortcuts
;--------------------------------------------------------------
; Make Cmd (new Ctrl) + Shift Z sendCtrl + Y
^+Z::Send("^y")

; Shift + Backspace (labeled Delete) send Shift + Delete
+Backspace::SendInput("+{Delete}")

; Same screenshot at MacOS for ShareX
^+4::^+S

; Make Ctrl + Q execute Alt + F4
^Q::Send("!{F4}")



;--------------------------------------------------------------
; We don't have a solution for...
;--------------------------------------------------------------

; Page Up and Down with Cmd Up and Down

; fn shortcuts
; emoji
; fn+E

; delete
; fn+Backspace
;--------------------------------------------------------------

;--------------------------------------------------------------
; For listening to keystrokes
; InstallKeybdHook()
; KeyHistory
;--------------------------------------------------------------
