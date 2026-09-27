function InputDeviceGetSteamHandle(arg0)
{
    static _gamepadArray = __InputSystem().__gamepadArray;
    
    if (arg0 < 0)
        return undefined;
    
    return InputDeviceIsConnected(arg0) ? _gamepadArray[arg0].__steamHandle : undefined;
}
