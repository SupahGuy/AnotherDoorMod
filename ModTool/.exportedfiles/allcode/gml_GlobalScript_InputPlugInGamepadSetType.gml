function InputPlugInGamepadSetType(arg0, arg1)
{
    static _gamepadArray = __InputSystem().__gamepadArray;
    
    if (arg0 < 0 || arg0 >= array_length(_gamepadArray))
        exit;
    
    var _deviceStruct = _gamepadArray[arg0];
    
    if (_deviceStruct == undefined)
        exit;
    
    _deviceStruct.__type = arg1;
}
