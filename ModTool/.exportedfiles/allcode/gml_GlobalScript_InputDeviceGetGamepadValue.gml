function InputDeviceGetGamepadValue(arg0, arg1)
{
    if (arg0 < 0)
        return 0;
    
    if (!InputGameHasFocus())
        return 0;
    
    if (!InputDeviceIsConnected(arg0))
        return 0;
    
    if (!gamepad_is_connected(arg0))
        return 0;
    
    return @@array_get@@(__InputGamepadGetReadArray(arg0), arg1 - 32769)(arg0, arg1);
}
