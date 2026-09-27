function InputGetBindingName(arg0, arg1, arg2 = "???")
{
    static _gamepadButtonNameLookup = __InputSystem().__gamepadButtonNameLookup;
    static _kbmBindingNameMap = __InputSystem().__kbmBindingNameMap;
    
    if (arg1)
        return ds_map_find_value(_gamepadButtonNameLookup, arg0) ?? arg2;
    else
        return ds_map_find_value(_kbmBindingNameMap, arg0) ?? chr(arg0);
}
