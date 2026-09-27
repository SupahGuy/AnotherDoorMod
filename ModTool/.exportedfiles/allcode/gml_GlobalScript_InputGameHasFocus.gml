function InputGameHasFocus()
{
    static _system = __InputSystem();
    
    return _system.__windowFocus && !os_is_paused();
}
