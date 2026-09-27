function InputVerbGetMetadata(arg0, arg1 = 0, arg2 = false)
{
    static _playerArray = __InputSystemPlayerArray();
    
    if (!is_numeric(arg1))
        __InputError("Player index must be a number (typeof = \"", typeof(arg1), "\")");
    
    if (arg1 >= 4)
        __InputError("Player index ", arg1, " too large. Must be less than config `INPUT_MAX_PLAYERS` (", 4, ")");
    
    if (arg1 < 0)
        __InputError("Player index ", arg1, " less than zero");
    
    var _data = _playerArray[arg1].__verbMetadataArray[arg0];
    return arg2 ? variable_clone(_data) : _data;
}
