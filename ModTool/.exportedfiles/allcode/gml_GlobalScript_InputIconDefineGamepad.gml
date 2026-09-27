function InputIconDefineGamepad(arg0, arg1, arg2)
{
    static _gamepadTypeMap = __InputIconSystem().__gamepadTypeMap;
    
    var _gamepadIconMap = ds_map_find_value(_gamepadTypeMap, arg0);
    
    if (_gamepadIconMap == undefined)
    {
        _gamepadIconMap = ds_map_create();
        ds_map_set(_gamepadTypeMap, arg0, _gamepadIconMap);
    }
    
    ds_map_set(_gamepadIconMap, arg1, arg2);
}
