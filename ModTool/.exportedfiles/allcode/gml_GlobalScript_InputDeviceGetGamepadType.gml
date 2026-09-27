function InputDeviceGetGamepadType(arg0)
{
    static _gamepadArray = __InputSystem().__gamepadArray;
    
    if (arg0 < 0)
        return 0;
    
    return InputDeviceIsConnected(arg0) ? _gamepadArray[arg0].__type : 0;
}
