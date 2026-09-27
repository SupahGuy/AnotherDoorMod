function InputVerbGroupSetActive(arg0, arg1, arg2 = 0, arg3 = false)
{
    static _verbGroupInactiveArray = __InputVerbGroupSystem().__verbGroupInactiveArray;
    
    if (!is_numeric(arg2))
        __InputError("Player index must be a number (typeof = \"", typeof(arg2), "\")");
    
    if (arg2 >= 4)
        __InputError("Player index ", arg2, " too large. Must be less than config `INPUT_MAX_PLAYERS` (", 4, ")");
    
    if (arg2 < 0)
        __InputError("Player index ", arg2, " less than zero");
    
    if (arg1)
    {
        if (arg3)
            _verbGroupInactiveArray[arg2] = ~(1 << arg0);
        else
            _verbGroupInactiveArray[arg2] &= ~(1 << arg0);
    }
    else
    {
        _verbGroupInactiveArray[arg2] |= 1 << arg0;
    }
}
