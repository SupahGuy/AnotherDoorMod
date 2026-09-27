function InputDeviceEnumerate(arg0 = false)
{
    static _system = __InputSystem();
    static _array = [];
    
    array_resize(_array, 0);
    var _gamepadCount = gamepad_get_device_count();
    var _device, _sortOrder;
    
    if (1 && (false || (!_system.__usingSteamworks && true) || (_system.__usingSteamworks && false)))
    {
        _sortOrder = -1;
        _device = _gamepadCount - 1;
    }
    else
    {
        _sortOrder = 1;
        _device = 0;
    }
    
    repeat (_gamepadCount)
    {
        if (InputDeviceIsConnected(_device))
            array_push(_array, _device);
        
        _device += _sortOrder;
    }
    
    if (!!(true || (false && !__InputOnOperaGXMobile())))
        array_push(_array, -1);
    
    if (!!(false || (false && __InputOnOperaGXMobile())))
        array_push(_array, -2);
    
    if (arg0)
        array_push(_array, -3);
    
    return _array;
}
