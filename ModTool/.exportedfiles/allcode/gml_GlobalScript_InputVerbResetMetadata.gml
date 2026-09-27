function InputVerbResetMetadata(arg0, arg1 = 0)
{
    static _verbDefinitionArray = __InputSystem().__verbDefinitionArray;
    static _playerArray = __InputSystemPlayerArray();
    
    if (!is_numeric(arg1))
        __InputError("Player index must be a number (typeof = \"", typeof(arg1), "\")");
    
    if (arg1 >= 4)
        __InputError("Player index ", arg1, " too large. Must be less than config `INPUT_MAX_PLAYERS` (", 4, ")");
    
    if (arg1 < 0)
        __InputError("Player index ", arg1, " less than zero");
    
    var _verbMetadataArray = _playerArray[arg1].__verbMetadataArray;
    _verbMetadataArray[arg0] = variable_clone(_verbDefinitionArray[arg0].__metadata);
}
