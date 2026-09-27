function InputVibrateDirect(arg0, arg1, arg2)
{
    var _steamHandle = InputDeviceGetSteamHandle(arg0);
    
    if (_steamHandle != undefined)
        steam_input_trigger_vibration(_steamHandle, 65535 * arg1, 65535 * arg2);
    else
        gamepad_set_vibration(arg0, arg1, arg2);
}
