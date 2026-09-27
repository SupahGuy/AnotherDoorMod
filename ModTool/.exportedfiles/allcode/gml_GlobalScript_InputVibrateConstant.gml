function InputVibrateConstant(arg0, arg1, arg2, arg3 = 0, arg4 = false)
{
    static _playerArray = __InputVibrateSystem().__playerArray;
    
    if (!is_numeric(arg3))
        __InputError("Player index must be a number (typeof = \"", typeof(arg3), "\")");
    
    if (arg3 >= 4)
        __InputError("Player index ", arg3, " too large. Must be less than config `INPUT_MAX_PLAYERS` (", 4, ")");
    
    if (arg3 < 0)
        __InputError("Player index ", arg3, " less than zero");
    
    arg0 = clamp(arg0, 0, 1);
    arg1 = clamp(arg1, -1, 1);
    arg2 = max(arg2, 0);
    
    with (_playerArray[arg3])
    {
        if (!__paused || arg4)
            array_push(__eventArray, new __InputVibrateClassConstant(arg0, arg1, arg2, arg4));
    }
}
