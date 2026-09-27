function InputVibratePulse(arg0, arg1, arg2, arg3, arg4 = 0, arg5 = false)
{
    static _playerArray = __InputVibrateSystem().__playerArray;
    
    if (!is_numeric(arg4))
        __InputError("Player index must be a number (typeof = \"", typeof(arg4), "\")");
    
    if (arg4 >= 4)
        __InputError("Player index ", arg4, " too large. Must be less than config `INPUT_MAX_PLAYERS` (", 4, ")");
    
    if (arg4 < 0)
        __InputError("Player index ", arg4, " less than zero");
    
    arg0 = clamp(arg0, 0, 1);
    arg1 = clamp(arg1, -1, 1);
    arg2 = max(arg2, 0);
    arg3 = max(arg3, 0);
    
    with (_playerArray[arg4])
    {
        if (!__paused || arg5)
            array_push(__eventArray, new __InputVibrateClassPulse(arg0, arg1, arg2, arg3, arg5));
    }
}
