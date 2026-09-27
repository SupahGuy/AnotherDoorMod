function InputBindingSet(arg0, arg1, arg2, arg3 = 0, arg4 = 0)
{
    static _playerArray = __InputSystemPlayerArray();
    
    if (!is_numeric(arg4))
        __InputError("Player index must be a number (typeof = \"", typeof(arg4), "\")");
    
    if (arg4 >= 4)
        __InputError("Player index ", arg4, " too large. Must be less than config `INPUT_MAX_PLAYERS` (", 4, ")");
    
    if (arg4 < 0)
        __InputError("Player index ", arg4, " less than zero");
    
    with (_playerArray[arg4])
    {
        var _bindingArray = arg0 ? __gamepadBindingArray : __kbmBindingArray;
        var _alternateArray = _bindingArray[arg1];
        
        if (arg3 > array_length(_alternateArray))
        {
            var _i = array_length(_alternateArray);
            
            repeat (arg3 - 1 - array_length(_alternateArray))
            {
                _alternateArray[_i] = undefined;
                _i++;
            }
        }
        
        var _prevBinding = _alternateArray[arg3];
        _alternateArray[arg3] = arg2;
        
        if (arg0 && _prevBinding != arg2 && (__InputBindingIsThumbstick(_prevBinding) || __InputBindingIsThumbstick(arg2)))
            __UpdateClusterThresholds();
    }
}
