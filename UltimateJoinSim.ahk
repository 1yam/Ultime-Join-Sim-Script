F5::
SysGet, VirtualScreenWidth, 78
SysGet, VirtualScreenHeight, 79
;ScreenSize
S_x=640
S_y=480

if WinExist("ARK: Survival Evolved")
{
    WinGetPos, Xpos, Ypos ; Use the window found by WinExist.
}
else
{
    MsgBox, Ark n'est pas lancer
    Reload
}

Loop 
{
    CoordMode, mouse, Screen
    BlockInput, MouseMove
    MouseGetPos, CurrentPositionX, CurrentPositionY,

    WinMove ARK: Survival Evolved, , (CurrentPositionX-((878/1680)*S_x)), (CurrentPositionY-((882/1050)*S_y))
    PostMessage, 0x201, , , , ARK: Survival Evolved
    PostMessage, 0x202, , , , ARK: Survival Evolved
    BlockInput, MouseMoveOff
    sleep 1000
}
F6::
WinMove ARK: Survival Evolved, , Xpos, Ypos	
Reload
