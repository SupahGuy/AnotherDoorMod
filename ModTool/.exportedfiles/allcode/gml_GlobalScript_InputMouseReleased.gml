function InputMouseReleased(arg0 = 1)
{
    static _system = __InputSystem();
    
    if (_system.__pointerBlockedByUserThisFrame)
        return __InputMouseCheckRaw(arg0);
    
    if (_system.__pointerBlocked)
        return false;
    
    if (!(arg0 == 1 || arg0 == -1 || arg0 == 0))
        return device_mouse_check_button_released(0, arg0);
    
    var _left;
    
    if (true && _system.__tapClick)
    {
        _left = true;
    }
    else if (false || (false && __InputOnOperaGXMobile()))
    {
        var _x = device_mouse_raw_x(0);
        var _y = device_mouse_raw_y(0);
        
        if (_x < 35 || _x > (display_get_width() - 35) || _y < 35 || _y > (display_get_height() - 35))
            _left = false;
        else
            _left = device_mouse_check_button_released(0, mb_left);
    }
    else
    {
        _left = device_mouse_check_button_released(0, mb_left);
    }
    
    if (arg0 == 1)
        return _left;
    else if (arg0 == -1)
        return _left || device_mouse_check_button_released(0, mb_any);
    else if (arg0 == 0)
        return !_left && device_mouse_check_button_released(0, mb_none);
    
    __InputError("Mouse button out of range (", arg0, ")");
    return false;
}
