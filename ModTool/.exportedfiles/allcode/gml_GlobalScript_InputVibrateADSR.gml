function InputVibrateADSR(arg0, arg1, arg2, arg3, arg4, arg5, arg6, arg7 = 0, arg8 = false)
{
    static _playerArray = __InputVibrateSystem().__playerArray;
    
    if (!is_numeric(arg7))
        __InputError("Player index must be a number (typeof = \"", typeof(arg7), "\")");
    
    if (arg7 >= 4)
        __InputError("Player index ", arg7, " too large. Must be less than config `INPUT_MAX_PLAYERS` (", 4, ")");
    
    if (arg7 < 0)
        __InputError("Player index ", arg7, " less than zero");
    
    arg0 = clamp(arg0, 0, 1);
    arg1 = clamp(arg1, 0, 1);
    arg2 = clamp(arg2, -1, 1);
    arg3 = max(arg3, 0);
    arg4 = max(arg4, 0);
    arg5 = max(arg5, 0);
    arg6 = max(arg6, 0);
    
    with (_playerArray[arg7])
    {
        if (!__paused || arg8)
            array_push(__eventArray, new __InputVibrateClassADSR(arg0, arg1, arg2, arg3, arg4, arg5, arg6, arg8));
    }
}
