function InputCursorY(arg0 = 0, arg1 = undefined)
{
    static _system = __InputCursorSystem();
    static _playerArray = _system.__playerArray;
    
    if (!is_numeric(arg0))
        __InputError("Player index must be a number (typeof = \"", typeof(arg0), "\")");
    
    if (arg0 >= 4)
        __InputError("Player index ", arg0, " too large. Must be less than config `INPUT_MAX_PLAYERS` (", 4, ")");
    
    if (arg0 < 0)
        __InputError("Player index ", arg0, " less than zero");
    
    if (!is_numeric(UnknownEnum.Value_0))
        __InputError("Cursor cluster index must be a number (typeof = \"", typeof(UnknownEnum.Value_0), "\")");
    
    with (_playerArray[arg0])
        return __InputCursorTransformCoordinate(__x, __y, 0, arg1 ?? 0).y;
}

enum UnknownEnum
{
    Value_0
}
