function InputIconGetDirect(arg0, arg1, arg2)
{
    static _system = __InputIconSystem();
    static _keyboardIconMap = _system.__keyboardIconMap;
    static _gamepadTypeMap = _system.__gamepadTypeMap;
    
    if (arg0 == undefined)
        return _system.__empty;
    
    if (!arg1)
    {
        return ds_map_find_value(_keyboardIconMap, arg0) ?? _system.__unsupported;
    }
    else
    {
        var _gamepadMap = ds_map_find_value(_gamepadTypeMap, arg2);
        
        if (_gamepadMap == undefined)
        {
            _gamepadMap = ds_map_find_value(_gamepadTypeMap, 1);
            
            if (_gamepadMap == undefined)
                return _system.__unsupported;
        }
        
        return ds_map_find_value(_gamepadMap, arg0) ?? _system.__unsupported;
    }
}
