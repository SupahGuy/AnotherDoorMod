function __InputPartyDeviceIsActive(arg0)
{
    static _system = __InputSystem();
    
    if (!_system.__windowFocus)
        return false;
    
    if (arg0 >= 0)
    {
        return __InputGetGamepadActive(arg0, false, false);
    }
    else if (arg0 == -1)
    {
        if (!!(true || (false && !__InputOnOperaGXMobile())))
        {
            if (__InputGetKeyboardActive())
                return true;
        }
    }
    
    return false;
}
