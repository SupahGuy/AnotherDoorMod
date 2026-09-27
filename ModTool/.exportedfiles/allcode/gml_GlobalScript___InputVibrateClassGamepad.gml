function __InputVibrateClassGamepad(arg0) constructor
{
    static __Update = function()
    {
        if (InputGameHasFocus() && __supported && __vibrating)
        {
            InputVibrateDirect(__device, __calibrationStrength * __left, __calibrationStrength * __right);
            __vibrating = false;
        }
        else
        {
            InputVibrateDirect(__device, 0, 0);
        }
    };
    
    __device = arg0;
    __supported = false;
    __vibrating = false;
    __left = 0;
    __right = 0;
    __calibrationStrength = 1;
    
    if ((true && __device < 4) || 0)
    {
        __supported = true;
        var _gamepadType = InputDeviceGetGamepadType(__device);
        
        if (true && (_gamepadType == 5 || _gamepadType == 6 || _gamepadType == 7))
            __calibrationStrength = 0.4;
        
        InputVibrateDirect(__device, 0, 0);
    }
}
