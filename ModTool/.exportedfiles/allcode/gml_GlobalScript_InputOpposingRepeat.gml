function InputOpposingRepeat(arg0, arg1, arg2 = 0, arg3 = 9, arg4 = 25)
{
    if (!is_numeric(arg2))
        __InputError("Player index must be a number (typeof = \"", typeof(arg2), "\")");
    
    if (arg2 >= 4)
        __InputError("Player index ", arg2, " too large. Must be less than config `INPUT_MAX_PLAYERS` (", 4, ")");
    
    if (arg2 < 0)
        __InputError("Player index ", arg2, " less than zero");
    
    if (InputCheck(arg0, arg2))
    {
        if (InputCheck(arg1, arg2))
            return 0;
        
        return -1 * InputRepeat(arg0, arg2, arg3, arg4);
    }
    else if (InputCheck(arg1, arg2))
    {
        return InputRepeat(arg1, arg2, arg3, arg4);
    }
    
    return 0;
}
