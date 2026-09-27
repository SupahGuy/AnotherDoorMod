function InputVerbStateWrite(arg0, arg1 = 0)
{
    static _system = __InputSystem();
    static _playerArray = __InputSystemPlayerArray();
    
    if (!is_numeric(arg1))
        __InputError("Player index must be a number (typeof = \"", typeof(arg1), "\")");
    
    if (arg1 >= 4)
        __InputError("Player index ", arg1, " too large. Must be less than config `INPUT_MAX_PLAYERS` (", 4, ")");
    
    if (arg1 < 0)
        __InputError("Player index ", arg1, " less than zero");
    
    var _frame = _system.__frame;
    var _verbCount = InputVerbCount();
    buffer_write(arg0, buffer_string, "<PWP");
    buffer_write(arg0, buffer_u16, _verbCount);
    var _verbStateArray = _playerArray[arg1].__verbStateArray;
    var _i = 0;
    
    repeat (_verbCount)
    {
        with (_verbStateArray[_i])
        {
            buffer_write(arg0, buffer_bool, __prevHeld);
            buffer_write(arg0, buffer_f32, __valueRaw);
            buffer_write(arg0, buffer_f32, __valueClamp);
            buffer_write(arg0, buffer_s32, _frame - __pressFrame);
        }
        
        _i++;
    }
    
    buffer_write(arg0, buffer_string, ">");
}
