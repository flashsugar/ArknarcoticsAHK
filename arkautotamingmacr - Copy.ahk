
#persistent
RatioX := (A_ScreenWidth / 1920)
RatioY := (A_ScreenHeight / 1080) 
Min = 1
Min := (Min*60000)
SetTimer, antiafk, %Min%
return
~F6::
pause
return


F5::
v:= null
i:= null
vari:= null
Gui, Destroy
Gui +Delimiter`t

Gui, Add, Text,, Torpor Rate :
Gui, Add, Edit, vTorporRate, %string%


Gui, Add, Button, default, OK
Gui, Show
return

GuiClose:
ButtonOK:
Gui, Submit  ; Save the input from the user to each control's associated variable.

WinActivate, ARK: Survival Evolved



;;RatioX and RatioY is used to match your resolution screen to mine (I used a 1920*1080)







vari:= 0

i := 0

;; This formula mean :
;; 9000 => 9s of the narcotic effect
;; (40/TorporRate) => the torpor given by 1 narcotic divided by the torpor rate of the dino
;; (40/TorporRate)*1000) => in second instead of ms
;; -300 => I have to shorten it for 300ms because of different "Sleep" parts
v := (9000 + (40/TorporRate)*1000)-300

MouseMove, 1263*RatioX,  176*RatioY, 0
Sleep, 100
Click left
Sleep, 100
Send, n
send, a
send, r
Send, c
Send, o
Send, t
Send, i
Send, c
Sleep, 100



while %vari%=0
{
;;Move/Click on the central narcotic stack 
MouseMove, 1302*RatioX,  282*RatioY, 0
Click Left
Sleep, 100
Send, E
Sleep, v

}
return

antiafk:
vari:=2
MouseMove, 1302*RatioX,  282*RatioY, 0
Send, E
MouseMove, 1302*RatioX,  282*RatioY, 0
Send, E
MouseMove, 1302*RatioX,  282*RatioY, 0
Send, E
Send, {f down}
Sleep, 100
Send, {f up}
Sleep, 1000
Send, {d down}

Sleep, 100
Send, {d up}
Sleep, 100
Send, {a down}
Sleep, 100

Send, {a up}
Sleep, 100
Send, {f down} 

Sleep, 100

Send, {f up}
MouseMove, 1263*RatioX,  176*RatioY, 0
Click Left
Sleep, 100
Send, n
Send, a
Send, r
Send, c
Send, o
Send, t
Send, i
Send, c
MouseMove, 1302*RatioX,  282*RatioY, 0
Click Left
Send, E 
vari:=0
return