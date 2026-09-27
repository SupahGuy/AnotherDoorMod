function InputTriggerEffectGetState(arg0, arg1 = 0)
{
    static _playerArray = __InputTriggerEffectSystem().__playerArray;
    
    if (!is_numeric(arg1))
        __InputError("Player index must be a number (typeof = \"", typeof(arg1), "\")");
    
    if (arg1 >= 4)
        __InputError("Player index ", arg1, " too large. Must be less than config `INPUT_MAX_PLAYERS` (", 4, ")");
    
    if (arg1 < 0)
        __InputError("Player index ", arg1, " less than zero");
    
    if (!(arg0 == 32775 || arg0 == 32776))
        InputPlugInError("Value ", arg0, " not a gamepad trigger");
    
    var _device = InputPlayerGetDevice(arg1);
    
    if (_device < 0 || !InputDeviceIsConnected(_device))
        return undefined;
    
    var _struct = _playerArray[arg1];
    
    if (_struct.__paused)
        return UnknownEnum.Value_m1;
    
    var _effect = undefined;
    
    if (arg0 == 32775)
    {
        if (_struct.__interceptedLeft)
            return UnknownEnum.Value_m1;
        
        _effect = _struct.__effectLeft;
    }
    else if (arg0 == 32776)
    {
        if (_struct.__interceptedRight)
            return UnknownEnum.Value_m1;
        
        _effect = _struct.__effectRight;
    }
    else
    {
        InputPlugInError("Value ", arg0, " not a gamepad trigger");
        return false;
    }
    
    if (!is_struct(_effect))
        return UnknownEnum.Value_0;
    
    return _effect.__SteamGetState(_device, arg0);
}

enum UnknownEnum
{
    Value_m1 = -1,
    Value_0
}
