function InputMouseCheck(arg0 = 1)
{
    static _system = __InputSystem();
    
    if (false || _system.__pointerBlocked)
        return false;
    
    return __InputMouseCheckRaw(arg0);
}

function __InputMouseCheckRaw(arg0)
{
    static _system = __InputSystem();
    
    if (!(arg0 == 1 || arg0 == -1 || arg0 == 0))
        return device_mouse_check_button(0, arg0);
    
    var _left = (true && _system.__tapClick) ? true : device_mouse_check_button(0, mb_left);
    
    if (arg0 == 1)
        return _left;
    else if (arg0 == -1)
        return _left || device_mouse_check_button(0, mb_any);
    else if (arg0 == 0)
        return !_left && device_mouse_check_button(0, mb_none);
    
    __InputError("Mouse button out of range (", arg0, ")");
    return false;
}
