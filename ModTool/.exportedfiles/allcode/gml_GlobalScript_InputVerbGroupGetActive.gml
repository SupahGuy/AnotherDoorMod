function InputVerbGroupGetActive(arg0, arg1 = 0)
{
    static _verbGroupInactiveArray = __InputVerbGroupSystem().__verbGroupInactiveArray;
    
    if (!is_numeric(arg1))
        __InputError("Player index must be a number (typeof = \"", typeof(arg1), "\")");
    
    if (arg1 >= 4)
        __InputError("Player index ", arg1, " too large. Must be less than config `INPUT_MAX_PLAYERS` (", 4, ")");
    
    if (arg1 < 0)
        __InputError("Player index ", arg1, " less than zero");
    
    return !(_verbGroupInactiveArray[arg1] & (1 << arg0));
}
