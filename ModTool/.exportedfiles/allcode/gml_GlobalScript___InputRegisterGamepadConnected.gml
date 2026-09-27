function __InputRegisterGamepadConnected()
{
    __InputPlugInRegisterCallbackInternal(UnknownEnum.Value_3, 0, function(arg0)
    {
        static _gamepadArray = __gamepadArray;
        
        __InputTrace("Gamepad ", arg0, " connected");
        var _gamepad = new __InputClassGamepad(arg0);
        _gamepadArray[arg0] = _gamepad;
        __InputGamepadDiscover(_gamepad);
    });
}

enum UnknownEnum
{
    Value_3 = 3
}
