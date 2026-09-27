function InputDeviceGetAnyGamepadConnected()
{
    static _gamepadArray = __InputSystem().__gamepadArray;
    
    var _i = 0;
    
    repeat (array_length(_gamepadArray))
    {
        if (InputDeviceIsConnected(_i))
            return true;
        
        _i++;
    }
    
    return false;
}
