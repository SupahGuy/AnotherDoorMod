function InputMousePressed(arg0 = 1)
{
    static _system = __InputSystem();
    
    if (false || _system.__pointerBlocked)
        return false;
    
    if (!(arg0 == 1 || arg0 == -1 || arg0 == 0))
        return device_mouse_check_button_pressed(0, arg0);
    
    var _left;
    
    if (true && _system.__tapClick)
    {
        _left = true;
    }
    else if (false || (false && __InputOnOperaGXMobile()))
    {
        var _x = device_mouse_x_to_gui(0);
        var _y = device_mouse_y_to_gui(0);
        
        if (_x < 35 || _x > (display_get_gui_width() - 35) || _y < 35 || _y > (display_get_gui_height() - 35))
            _left = false;
        else
            _left = device_mouse_check_button_pressed(0, mb_left);
    }
    else
    {
        _left = device_mouse_check_button_pressed(0, mb_left);
    }
    
    switch (arg0)
    {
        case 0:
            return !_left && device_mouse_check_button_pressed(0, mb_none);
            break;
        
        case -1:
            return _left || device_mouse_check_button_pressed(0, mb_any);
            break;
        
        case 1:
            return _left;
            break;
    }
    
    __InputError("Mouse button out of range (", arg0, ")");
    return false;
}
