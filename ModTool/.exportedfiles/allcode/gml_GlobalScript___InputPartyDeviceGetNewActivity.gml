function __InputPartyDeviceGetNewActivity(arg0, arg1)
{
    var _array = InputDeviceEnumerate(false);
    var _i = 0;
    
    repeat (array_length(_array))
    {
        var _device = _array[_i];
        
        if (InputDeviceIsAvailable(_device) && __InputPartyDeviceIsActive(_device) && !InputDeviceCheckViaPlayer(_device, arg0, arg1))
            return _device;
        
        _i++;
    }
    
    return -666;
}
