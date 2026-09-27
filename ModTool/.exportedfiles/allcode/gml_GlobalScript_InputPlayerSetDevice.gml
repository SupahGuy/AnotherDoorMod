function InputPlayerSetDevice(arg0, arg1 = 0)
{
    static _system = __InputSystem();
    static _playerArray = __InputSystemPlayerArray();
    
    if (!is_numeric(arg1))
        __InputError("Player index must be a number (typeof = \"", typeof(arg1), "\")");
    
    if (arg1 >= 4)
        __InputError("Player index ", arg1, " too large. Must be less than config `INPUT_MAX_PLAYERS` (", 4, ")");
    
    if (arg1 < 0)
        __InputError("Player index ", arg1, " less than zero");
    
    if (_system.__hotswap)
    {
        if (arg1 != 0 && arg0 != -666)
            __InputError($"Cannot set player {arg1} device to {arg0}, hotswap mode is enabled");
    }
    
    var _oldDevice = _playerArray[arg1].__device;
    
    if (_oldDevice == arg0)
        exit;
    
    __InputPlugInExecuteCallbacks(UnknownEnum.Value_4, arg1, _oldDevice, arg0);
}

enum UnknownEnum
{
    Value_4 = 4
}
