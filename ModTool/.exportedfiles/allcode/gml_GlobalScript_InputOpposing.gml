function InputOpposing(arg0, arg1, arg2 = 0, arg3 = true)
{
    static _playerArray = __InputSystemPlayerArray();
    
    if (!is_numeric(arg2))
        __InputError("Player index must be a number (typeof = \"", typeof(arg2), "\")");
    
    if (arg2 >= 4)
        __InputError("Player index ", arg2, " too large. Must be less than config `INPUT_MAX_PLAYERS` (", 4, ")");
    
    if (arg2 < 0)
        __InputError("Player index ", arg2, " less than zero");
    
    var _heldNeg = InputCheck(arg0, arg2);
    var _heldPos = InputCheck(arg1, arg2);
    
    if (!_heldNeg && !_heldPos)
        return 0;
    
    if (_heldNeg && _heldPos && !arg3)
        return 0;
    
    if (!_heldPos)
        return _heldNeg ? -1 : 0;
    
    if (!_heldNeg)
        return _heldPos ? 1 : 0;
    
    with (_playerArray[arg2])
    {
        var _verbStructNeg = __verbStateArray[arg0];
        var _verbStructPos = __verbStateArray[arg1];
        
        if (_verbStructNeg.__pressFrame > _verbStructPos.__pressFrame)
            return _heldNeg ? -1 : 0;
        else
            return _heldPos ? 1 : 0;
    }
    
    __InputError("Opposing check unhandled");
}
