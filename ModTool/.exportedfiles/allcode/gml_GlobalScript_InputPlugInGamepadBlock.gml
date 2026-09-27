function InputPlugInGamepadBlock(arg0)
{
    if (arg0 < 0)
        __InputError("Cannot block device ", arg0, " (can only block gamepads)");
    
    if (InputDeviceIsConnected(arg0))
        __InputPlugInExecuteCallbacks(UnknownEnum.Value_2, arg0, false);
}

enum UnknownEnum
{
    Value_2 = 2
}
