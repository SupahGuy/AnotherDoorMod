function InputBindingsImport(arg0, arg1, arg2 = 0)
{
    static _playerArray = __InputSystemPlayerArray();
    static _verbCount = __InputSystem().__verbCount;
    
    if (!is_numeric(arg2))
        __InputError("Player index must be a number (typeof = \"", typeof(arg2), "\")");
    
    if (arg2 >= 4)
        __InputError("Player index ", arg2, " too large. Must be less than config `INPUT_MAX_PLAYERS` (", 4, ")");
    
    if (arg2 < 0)
        __InputError("Player index ", arg2, " less than zero");
    
    if (!is_struct(arg1))
        __InputError("`data` parameter must be a struct created by `InputBindingsExport()`.");
    
    var _bindingArray = arg0 ? _playerArray[arg2].__gamepadBindingArray : _playerArray[arg2].__kbmBindingArray;
    var _i = 0;
    
    repeat (_verbCount)
    {
        var _exportName = InputVerbGetExportName(_i);
        
        if (_exportName != undefined)
        {
            var _alternates = variable_struct_get(arg1, _exportName);
            _alternates = (_alternates == undefined) ? [] : variable_clone(_alternates);
            _bindingArray[_i] = _alternates;
        }
        
        _i++;
    }
}
