function InputPlugInVerbStateRead(arg0, arg1 = 0)
{
    static _system = __InputSystem();
    static _playerArray = __InputSystemPlayerArray();
    
    if (!is_numeric(arg1))
        __InputError("Player index must be a number (typeof = \"", typeof(arg1), "\")");
    
    if (arg1 >= 4)
        __InputError("Player index ", arg1, " too large. Must be less than config `INPUT_MAX_PLAYERS` (", 4, ")");
    
    if (arg1 < 0)
        __InputError("Player index ", arg1, " less than zero");
    
    if (_system.__plugInCurrentCallback != UnknownEnum.Value_6)
        __InputError("Cannot call InputPlugInVerbStateRead() outside of a INPUT_PLUG_IN_CALLBACK.UPDATE_PLAYER callback");
    
    var _frame = _system.__frame;
    var _header = buffer_read(arg0, buffer_string);
    
    if (_header != "<PWP")
        __InputError("Header mismatch (expecting \"", "<PWP", "\", got \"", _header, "\"");
    
    var _verbCount = buffer_read(arg0, buffer_u16);
    
    if (_verbCount != InputVerbCount())
        __InputError("Verb count mismatch (expecting \"", InputVerbCount(), "\", got \"", _verbCount, "\"");
    
    var _verbStateArray = _playerArray[arg1].__verbStateArray;
    var _i = 0;
    
    repeat (_verbCount)
    {
        with (_verbStateArray[_i])
        {
            __prevHeld = buffer_read(arg0, buffer_bool);
            __valueRaw = buffer_read(arg0, buffer_f32);
            __valueClamp = buffer_read(arg0, buffer_f32);
            __pressFrame = _frame - buffer_read(arg0, buffer_s32);
            __held = __valueClamp > 0;
        }
        
        _i++;
    }
    
    var _footer = buffer_read(arg0, buffer_string);
    
    if (_footer != ">")
        __InputError("Footer mismatch (expecting \"", ">", "\", got \"", _footer, "\"");
}

enum UnknownEnum
{
    Value_6 = 6
}
