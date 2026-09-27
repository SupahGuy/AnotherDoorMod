function InputPlayerGetMetadata(arg0 = 0, arg1 = false)
{
    static _playerArray = __InputSystemPlayerArray();
    
    if (!is_numeric(arg0))
        __InputError("Player index must be a number (typeof = \"", typeof(arg0), "\")");
    
    if (arg0 >= 4)
        __InputError("Player index ", arg0, " too large. Must be less than config `INPUT_MAX_PLAYERS` (", 4, ")");
    
    if (arg0 < 0)
        __InputError("Player index ", arg0, " less than zero");
    
    var _data = _playerArray[arg0].__metadata;
    return arg1 ? variable_clone(_data) : _data;
}
