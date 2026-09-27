function InputDeviceGetNewActivityOnVerb(arg0, arg1 = 0)
{
    if (!is_numeric(arg1))
        __InputError("Player index must be a number (typeof = \"", typeof(arg1), "\")");
    
    if (arg1 >= 4)
        __InputError("Player index ", arg1, " too large. Must be less than config `INPUT_MAX_PLAYERS` (", 4, ")");
    
    if (arg1 < 0)
        __InputError("Player index ", arg1, " less than zero");
    
    var _array = InputDeviceEnumerate(false);
    var _i = 0;
    
    repeat (array_length(_array))
    {
        var _device = _array[_i];
        
        if (InputDeviceIsAvailable(_device) && InputDeviceCheckViaPlayer(_device, arg0, arg1))
            return _device;
        
        _i++;
    }
    
    return -666;
}
