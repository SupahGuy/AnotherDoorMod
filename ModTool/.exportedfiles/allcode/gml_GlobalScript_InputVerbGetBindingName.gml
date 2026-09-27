function InputVerbGetBindingName(arg0, arg1 = 0, arg2 = 0, arg3 = "???")
{
    if (!is_numeric(arg2))
        __InputError("Player index must be a number (typeof = \"", typeof(arg2), "\")");
    
    if (arg2 >= 4)
        __InputError("Player index ", arg2, " too large. Must be less than config `INPUT_MAX_PLAYERS` (", 4, ")");
    
    if (arg2 < 0)
        __InputError("Player index ", arg2, " less than zero");
    
    var _forGamepad = InputPlayerUsingGamepad(arg2);
    return InputGetBindingName(InputBindingGet(_forGamepad, arg0, arg1, arg2), _forGamepad, arg3);
}
