function InputBindingsExport(arg0, arg1 = 0)
{
    static _playerArray = __InputSystemPlayerArray();
    static _verbCount = __InputSystem().__verbCount;
    
    if (!is_numeric(arg1))
        __InputError("Player index must be a number (typeof = \"", typeof(arg1), "\")");
    
    if (arg1 >= 4)
        __InputError("Player index ", arg1, " too large. Must be less than config `INPUT_MAX_PLAYERS` (", 4, ")");
    
    if (arg1 < 0)
        __InputError("Player index ", arg1, " less than zero");
    
    var _output = {};
    var _bindingArray = arg0 ? _playerArray[arg1].__gamepadBindingArray : _playerArray[arg1].__kbmBindingArray;
    var _i = 0;
    
    repeat (_verbCount)
    {
        var _exportName = InputVerbGetExportName(_i);
        
        if (_exportName != undefined)
            variable_struct_set(_output, _exportName, variable_clone(_bindingArray[_i]));
        
        _i++;
    }
    
    return _output;
}
