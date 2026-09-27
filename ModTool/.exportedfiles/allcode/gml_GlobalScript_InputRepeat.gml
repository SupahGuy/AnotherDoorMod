function InputRepeat(arg0, arg1 = 0, arg2 = 9, arg3 = 25)
{
    static _system = __InputSystem();
    static _playerArray = __InputSystemPlayerArray();
    
    if (!is_numeric(arg1))
        __InputError("Player index must be a number (typeof = \"", typeof(arg1), "\")");
    
    if (arg1 >= 4)
        __InputError("Player index ", arg1, " too large. Must be less than config `INPUT_MAX_PLAYERS` (", 4, ")");
    
    if (arg1 < 0)
        __InputError("Player index ", arg1, " less than zero");
    
    with (_playerArray[arg1].__verbStateArray[arg0])
    {
        if (!__held)
            return false;
        
        var _time = _system.__frame - __pressFrame;
        
        if (_time == 0)
            return true;
        
        _time -= arg3;
        
        if (_time < 0)
            return false;
        
        return floor(_time / arg2) > floor((_time - 1) / arg2);
    }
}
