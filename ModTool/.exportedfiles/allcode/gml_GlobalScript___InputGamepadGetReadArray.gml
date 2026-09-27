function __InputGamepadGetReadArray(arg0)
{
    static _gamepadArray = __InputSystem().__gamepadArray;
    static _genericReadArray = __InputSystem().__genericReadArray;
    
    if (arg0 < 0 || arg0 >= array_length(_gamepadArray))
        return _genericReadArray;
    
    return _gamepadArray[arg0].__readArray;
}
