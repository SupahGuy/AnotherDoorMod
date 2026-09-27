function __InputGetGamepadOutput(arg0)
{
    if (arg0 < 0)
        return undefined;
    
    if (!InputGameHasFocus())
        return undefined;
    
    if (!InputDeviceIsConnected(arg0))
        return undefined;
    
    if (!gamepad_is_connected(arg0))
        return undefined;
    
    var _readArray = __InputGamepadGetReadArray(arg0);
    var _binding = 32769;
    
    repeat (42)
    {
        if (abs(_readArray[_binding - 32769](arg0, _binding)) > 0.25)
            return _binding;
        
        _binding++;
    }
    
    return undefined;
}
