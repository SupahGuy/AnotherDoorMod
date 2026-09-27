function InputTriggerEffectGetSupported(arg0 = 0)
{
    var _device = InputPlayerGetDevice(arg0);
    
    if (_device < 0)
        return false;
    
    if (InputDeviceGetGamepadType(_device) != 4)
        return false;
    
    return false || InputGetSteamInfo(UnknownEnum.Value_0);
}

enum UnknownEnum
{
    Value_0
}
