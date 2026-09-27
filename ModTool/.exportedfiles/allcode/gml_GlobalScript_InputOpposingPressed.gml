function InputOpposingPressed(arg0, arg1, arg2 = 0, arg3 = true)
{
    if (!is_numeric(arg2))
        __InputError("Player index must be a number (typeof = \"", typeof(arg2), "\")");
    
    if (arg2 >= 4)
        __InputError("Player index ", arg2, " too large. Must be less than config `INPUT_MAX_PLAYERS` (", 4, ")");
    
    if (arg2 < 0)
        __InputError("Player index ", arg2, " less than zero");
    
    var _pressedNeg = InputPressed(arg0, arg2);
    var _pressedPos = InputPressed(arg1, arg2);
    
    if (arg3)
    {
        var _value = 0;
        
        if (_pressedPos)
            _value++;
        
        if (_pressedNeg)
            _value--;
        
        return _value;
    }
    else
    {
        if (!_pressedNeg && !_pressedPos)
            return 0;
        
        if (_pressedPos && !InputCheck(arg0, arg2))
            return 1;
        
        if (_pressedNeg && !InputCheck(arg0, arg2))
            return -1;
        
        return 0;
    }
}
