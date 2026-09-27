function InputDeviceIsActive(arg0)
{
    static _system = __InputSystem();
    
    if (!_system.__windowFocus)
        return false;
    
    if (arg0 >= 0)
    {
        return __InputGetGamepadActive(arg0);
    }
    else if (arg0 == -1)
    {
        if (!!(true || (false && !__InputOnOperaGXMobile())))
        {
            if (__InputGetKeyboardActive())
                return true;
        }
        
        if (__InputGetMouseActive())
            return true;
    }
    else if (arg0 == -2)
    {
        if (!!(false || (false && __InputOnOperaGXMobile())))
        {
            if (!InputGameHasFocus())
                return false;
            
            if (mouse_check_button(mb_left))
                return true;
        }
    }
    else if (arg0 == -3)
    {
        return false;
    }
    
    return false;
}
