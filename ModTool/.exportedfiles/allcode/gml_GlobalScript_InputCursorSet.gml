function InputCursorSet(arg0, arg1, arg2 = 0, arg3 = false)
{
    static _playerArray = __InputCursorSystem().__playerArray;
    
    if (!is_numeric(arg2))
        __InputError("Player index must be a number (typeof = \"", typeof(arg2), "\")");
    
    if (arg2 >= 4)
        __InputError("Player index ", arg2, " too large. Must be less than config `INPUT_MAX_PLAYERS` (", 4, ")");
    
    if (arg2 < 0)
        __InputError("Player index ", arg2, " less than zero");
    
    with (_playerArray[arg2])
    {
        if (arg3)
        {
            __x += arg0;
            __y += arg1;
        }
        else
        {
            __x = arg0;
            __y = arg1;
        }
    }
}
