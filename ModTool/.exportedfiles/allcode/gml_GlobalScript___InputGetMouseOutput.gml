function __InputGetMouseOutput()
{
    static _system = __InputSystem();
    
    if (!InputGameHasFocus())
        return undefined;
    
    with (_system)
    {
        if (__pointerBlockedByWindowDefocus)
            return undefined;
        
        if ((true || (false && !__InputOnOperaGXMobile())) && 1)
        {
            if (mouse_button != mb_none)
                return mouse_button;
            
            if (mouse_wheel_up())
                return 40964;
            
            if (mouse_wheel_down())
                return 40965;
            
            if (__tapClick)
                return 1;
        }
        else
        {
            if (device_mouse_check_button(0, mb_side2))
                return 5;
            
            if (device_mouse_check_button(0, mb_side1))
                return 4;
            
            if (device_mouse_check_button(0, mb_middle))
                return 3;
            
            if (device_mouse_check_button(0, mb_right))
                return 2;
            
            if (device_mouse_check_button(0, mb_left))
                return 1;
        }
        
        return undefined;
    }
}
