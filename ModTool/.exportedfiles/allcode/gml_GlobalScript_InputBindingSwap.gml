function InputBindingSwap(arg0, arg1, arg2, arg3, arg4, arg5 = 0)
{
    if (!is_numeric(arg5))
        __InputError("Player index must be a number (typeof = \"", typeof(arg5), "\")");
    
    if (arg5 >= 4)
        __InputError("Player index ", arg5, " too large. Must be less than config `INPUT_MAX_PLAYERS` (", 4, ")");
    
    if (arg5 < 0)
        __InputError("Player index ", arg5, " less than zero");
    
    var _bindingA = InputBindingGet(arg0, arg1, arg2, arg5);
    var _bindingB = InputBindingGet(arg0, arg3, arg4, arg5);
    InputBindingSet(arg0, arg1, _bindingB, arg2, arg5);
    InputBindingSet(arg0, arg3, _bindingA, arg4, arg5);
}
