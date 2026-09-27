function InputPlugInVerbSet(arg0, arg1, arg2 = arg1, arg3 = 0)
{
    static _system = __InputSystem();
    static _playerArray = __InputSystemPlayerArray();
    
    if (!is_numeric(arg3))
        __InputError("Player index must be a number (typeof = \"", typeof(arg3), "\")");
    
    if (arg3 >= 4)
        __InputError("Player index ", arg3, " too large. Must be less than config `INPUT_MAX_PLAYERS` (", 4, ")");
    
    if (arg3 < 0)
        __InputError("Player index ", arg3, " less than zero");
    
    if (_system.__plugInCurrentCallback != UnknownEnum.Value_5)
        __InputError("Cannot call InputPlugInVerbSet() outside of a INPUT_PLUG_IN_CALLBACK.COLLECT_PLAYER callback");
    
    with (_playerArray[arg3])
    {
        __valueRawArray[arg0] = arg2;
        __valueClampArray[arg0] = arg1;
    }
}

enum UnknownEnum
{
    Value_5 = 5
}
