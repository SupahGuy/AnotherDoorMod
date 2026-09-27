function InputPlugInVerbStateSet(arg0, arg1 = undefined, arg2 = undefined, arg3 = undefined, arg4 = undefined, arg5 = 0)
{
    static _system = __InputSystem();
    static _playerArray = __InputSystemPlayerArray();
    
    if (!is_numeric(arg5))
        __InputError("Player index must be a number (typeof = \"", typeof(arg5), "\")");
    
    if (arg5 >= 4)
        __InputError("Player index ", arg5, " too large. Must be less than config `INPUT_MAX_PLAYERS` (", 4, ")");
    
    if (arg5 < 0)
        __InputError("Player index ", arg5, " less than zero");
    
    if (_system.__plugInCurrentCallback != UnknownEnum.Value_6)
        __InputError("Cannot call InputPlugInVerbStateSet() outside of a INPUT_PLUG_IN_CALLBACK.UPDATE_PLAYER callback");
    
    with (_playerArray[arg5].__verbStateArray[arg0])
    {
        if (arg1 != undefined)
            __prevHeld = arg1;
        
        if (arg2 != undefined)
            __valueRaw = arg2;
        
        if (arg3 != undefined)
        {
            __valueClamp = arg3;
            __held = arg3 > 0;
        }
        
        if (arg4 != undefined)
            __pressFrame = arg4;
    }
}

enum UnknownEnum
{
    Value_6 = 6
}
