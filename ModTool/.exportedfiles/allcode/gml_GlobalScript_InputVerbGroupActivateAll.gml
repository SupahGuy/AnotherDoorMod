function InputVerbGroupActivateAll(arg0 = 0)
{
    static _verbGroupInactiveArray = __InputVerbGroupSystem().__verbGroupInactiveArray;
    
    if (!is_numeric(arg0))
        __InputError("Player index must be a number (typeof = \"", typeof(arg0), "\")");
    
    if (arg0 >= 4)
        __InputError("Player index ", arg0, " too large. Must be less than config `INPUT_MAX_PLAYERS` (", 4, ")");
    
    if (arg0 < 0)
        __InputError("Player index ", arg0, " less than zero");
    
    _verbGroupInactiveArray[arg0] = 0;
}
