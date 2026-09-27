function InputLong(arg0, arg1 = 0, arg2 = 10)
{
    static _system = __InputSystem();
    static _playerArray = __InputSystemPlayerArray();
    
    if (!is_numeric(arg1))
        __InputError("Player index must be a number (typeof = \"", typeof(arg1), "\")");
    
    if (arg1 >= 4)
        __InputError("Player index ", arg1, " too large. Must be less than config `INPUT_MAX_PLAYERS` (", 4, ")");
    
    if (arg1 < 0)
        __InputError("Player index ", arg1, " less than zero");
    
    with (_playerArray[arg1].__verbStateArray[arg0])
        return __held && (_system.__frame - __pressFrame) >= arg2;
}
