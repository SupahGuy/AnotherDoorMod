function InputDeviceGetDescription(arg0)
{
    static _gamepadArray = __InputSystem().__gamepadArray;
    
    if (arg0 >= 0)
    {
        if (arg0 < 0)
            return string_concat("gamepad ", arg0);
        
        if (!InputDeviceIsConnected(arg0))
            return string_concat("gamepad ", arg0);
        
        var _gamepad = _gamepadArray[arg0];
        
        if (_gamepad == undefined || _gamepad.__blocked)
            return string_concat("gamepad ", arg0);
        
        return _gamepad.__description;
    }
    else if (arg0 == -1)
    {
        return "keyboard & mouse";
    }
    else if (arg0 == -2)
    {
        return "touch";
    }
    else if (arg0 == -3)
    {
        return "generic";
    }
    
    return "no device";
}
