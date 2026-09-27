function InputBindingsReset(arg0, arg1 = 0)
{
    static _playerArray = __InputSystemPlayerArray();
    
    if (!is_numeric(arg1))
        __InputError("Player index must be a number (typeof = \"", typeof(arg1), "\")");
    
    if (arg1 >= 4)
        __InputError("Player index ", arg1, " too large. Must be less than config `INPUT_MAX_PLAYERS` (", 4, ")");
    
    if (arg1 < 0)
        __InputError("Player index ", arg1, " less than zero");
    
    if (arg0)
    {
        array_map_ext(_playerArray[arg1].__gamepadBindingArray, function(arg0, arg1)
        {
            static _verbDefinitionArray = __InputSystem().__verbDefinitionArray;
            
            var _verbDefinition = _verbDefinitionArray[arg1];
            return (_verbDefinition != undefined) ? variable_clone(_verbDefinition.__gamepadBinding) : [];
        });
    }
    else
    {
        array_map_ext(_playerArray[arg1].__kbmBindingArray, function(arg0, arg1)
        {
            static _verbDefinitionArray = __InputSystem().__verbDefinitionArray;
            
            var _verbDefinition = _verbDefinitionArray[arg1];
            return (_verbDefinition != undefined) ? variable_clone(_verbDefinition.__kbmBinding) : [];
        });
    }
}
