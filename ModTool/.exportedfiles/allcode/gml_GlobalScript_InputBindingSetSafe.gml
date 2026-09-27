function InputBindingSetSafe(arg0, arg1, arg2, arg3 = 0, arg4 = 0)
{
    if (!is_numeric(arg4))
        __InputError("Player index must be a number (typeof = \"", typeof(arg4), "\")");
    
    if (arg4 >= 4)
        __InputError("Player index ", arg4, " too large. Must be less than config `INPUT_MAX_PLAYERS` (", 4, ")");
    
    if (arg4 < 0)
        __InputError("Player index ", arg4, " less than zero");
    
    var _collisionArray = InputBindingFindCollisions(arg0, arg2, arg1, arg4, arg3);
    
    if (array_length(_collisionArray) == 0)
    {
        InputBindingSet(arg0, arg1, arg2, arg3, arg4);
        return true;
    }
    else
    {
        if (array_length(_collisionArray) > 1)
            __InputTrace("Warning! More than one binding collision found, resolution may not be desirable");
        
        var _verbIndexB = _collisionArray[0].verbIndex;
        var _alternateB = _collisionArray[0].alternate;
        
        if (arg1 != _verbIndexB || arg3 != _alternateB)
        {
            __InputTrace("Collision found in (forGamepad=", arg0, ", verb=", InputVerbGetExportName(_verbIndexB), ", alternate=", _alternateB, ")");
            InputBindingSwap(arg0, arg1, arg3, _verbIndexB, _alternateB, arg4);
            return true;
        }
        else
        {
            __InputTrace("New binding (", arg2, ") is the same as existing binding (forGamepad=", arg0, ", verb=", InputVerbGetExportName(arg1), ", alternate=", arg3, ")");
        }
    }
    
    return false;
}
