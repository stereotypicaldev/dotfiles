#Requires AutoHotkey v2.0.2
#SingleInstance Force

Komorebic(cmd) {
    RunWait(format("komorebic.exe --ahk {}", cmd), , "Hide")
}

; Alt moves Windows
; Ctrl focuses Windows
; ` --> Switches between Windows 
; Ctrl + Alt + Arrow --> Stacks
; Ctrl + ` ---> Unstacks

; Focus windows

^Left::Komorebic("focus left")
^Down::Komorebic("focus down")
^Up::Komorebic("focus up")
^Right::Komorebic("focus right")

; Move windows

!Left::Komorebic("move left")
!Right::Komorebic("move right")
!Up::Komorebic("move up")
!Down::Komorebic("move down")

; Stack WIndows

; Ctrl + Alt + Arrow = Stack 
; Ctrl + ` = Cycle through Stacks
; Ctrl + Alt + ` = Unstack

^!Left::Komorebic("stack left")
^!Down::Komorebic("stack down")
^!Up::Komorebic("stack up")
^!Right::Komorebic("stack right")
`::Komorebic("cycle-stack next")
^`::Komorebic("unstack")

; Utillities

^q::Komorebic("close")
^m::Komorebic("minimize")
#m::Komorebic("toggle-monocle")
