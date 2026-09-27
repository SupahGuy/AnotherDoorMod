function __InputRegisterGamepadDisconnected()
{
    __InputPlugInRegisterCallbackInternal(UnknownEnum.Value_2, 0, function(arg0, arg1)
    {
        static _gamepadArray = __gamepadArray;
        
        if (_gamepadArray[arg0] != undefined)
        {
            if (arg1)
            {
                __InputTrace("Gamepad ", arg0, " disconnected");
                _gamepadArray[arg0] = undefined;
            }
            else
            {
                __InputTrace("Gamepad ", arg0, " blocked");
                _gamepadArray[arg0].__blocked = true;
            }
        }
    });
}

enum UnknownEnum
{
    Value_2 = 2
}
