#SingleInstance Force
SendMode "Input"
SetWorkingDir A_InitialWorkingDir

CapsLock::
{
    Global start := A_TickCount
    KeyWait("CapsLock")

    If A_TickCount - start < 200
        SetCapsLockState !GetKeyState("CapsLock", "T")
}

#HotIf GetKeyState("CapsLock", "P")

e::
{
    Send("|")
}

q::
{
    Send("/")
}

w::
{
    Send("?")
}

r::
{
    Send("\")
}

#HotIf

