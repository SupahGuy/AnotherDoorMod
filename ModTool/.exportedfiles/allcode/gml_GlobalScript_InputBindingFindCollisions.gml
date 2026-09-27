function InputBindingFindCollisions(arg0, arg1, arg2, arg3 = 0, arg4 = 0)
{
    static _array = [];
    
    array_resize(_array, 0);
    
    if (!is_numeric(arg3))
        __InputError("Player index must be a number (typeof = \"", typeof(arg3), "\")");
    
    if (arg3 >= 4)
        __InputError("Player index ", arg3, " too large. Must be less than config `INPUT_MAX_PLAYERS` (", 4, ")");
    
    if (arg3 < 0)
        __InputError("Player index ", arg3, " less than zero");
    
    __InputPlugInExecuteCallbacks(UnknownEnum.Value_10, _array, arg0, arg1, arg2, arg4, arg3);
    return _array;
}

enum UnknownEnum
{
    Value_10 = 10
}
