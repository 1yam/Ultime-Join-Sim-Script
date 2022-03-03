F5:: ; set up of script
CoordMode, mouse, window
MouseGetPos, x, y,
MsgBox, Script is ready, it will start in 5 sec after press "ok".
sleep 5000

Loop 
{
    CoordMode, mouse, Screen
    BlockInput, MouseMove
    MouseGetPos, CurrentPositionX, CurrentPositionY,

    WinMove ARK: Survival Evolved, , CurrentPositionX-(x), CurrentPositionY-(y)
    PostMessage, 0x201, , , , ARK: Survival Evolved
    PostMessage, 0x202, , , , ARK: Survival Evolved
    BlockInput, MouseMoveOff
    sleep 1000
}


F6::
reload
WinMove ARK: Survival Evolved, , 0,0

