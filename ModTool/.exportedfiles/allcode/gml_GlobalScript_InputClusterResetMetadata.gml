function InputClusterResetMetadata(arg0, arg1 = 0)
{
    static _clusterDefinitionArray = __InputSystem().__clusterDefinitionArray;
    static _playerArray = __InputSystemPlayerArray();
    
    if (!is_numeric(arg1))
        __InputError("Player index must be a number (typeof = \"", typeof(arg1), "\")");
    
    if (arg1 >= 4)
        __InputError("Player index ", arg1, " too large. Must be less than config `INPUT_MAX_PLAYERS` (", 4, ")");
    
    if (arg1 < 0)
        __InputError("Player index ", arg1, " less than zero");
    
    var _clusterMetadataArray = _playerArray[arg1].__clusterMetadataArray;
    _clusterMetadataArray[arg0] = variable_clone(_clusterDefinitionArray[arg0].__metadata);
}
