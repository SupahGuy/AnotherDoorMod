function InputBindingGet(arg0, arg1, arg2 = 0, arg3 = 0)
{
    static _playerArray = __InputSystemPlayerArray();
    
    if (!is_numeric(arg3))
        __InputError("Player index must be a number (typeof = \"", typeof(arg3), "\")");
    
    if (arg3 >= 4)
        __InputError("Player index ", arg3, " too large. Must be less than config `INPUT_MAX_PLAYERS` (", 4, ")");
    
    if (arg3 < 0)
        __InputError("Player index ", arg3, " less than zero");
    
    with (_playerArray[arg3])
    {
        var _bindingArray = arg0 ? __gamepadBindingArray : __kbmBindingArray;
        var _alternateArray = _bindingArray[arg1];
        
        if (arg2 < 0 || arg2 >= array_length(_alternateArray))
            return undefined;
        
        return _alternateArray[arg2];
    }
}
