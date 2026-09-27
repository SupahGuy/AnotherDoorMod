function __InputColorClassPlayer(arg0) constructor
{
    static __SetColor = function(arg0)
    {
        static _deviceMap = __InputVibrateSystem().__deviceMap;
        
        __color = arg0;
        var _device = InputPlayerGetDevice(__playerIndex);
        
        if (InputGetSteamInfo(UnknownEnum.Value_0))
        {
            var _steamHandle = InputDeviceGetSteamHandle(_device);
            
            if (_steamHandle != undefined)
            {
                var _ledFlag = 0;
                
                if (arg0 == undefined)
                {
                    arg0 = 0;
                    _ledFlag = 1;
                }
                
                steam_input_set_led_color(_steamHandle, arg0, _ledFlag);
            }
        }
        else
        {
        }
    };
    
    static __SupportedByDevice = function()
    {
        var _device = InputPlayerGetDevice(__playerIndex);
        
        if (InputGetSteamInfo(UnknownEnum.Value_0))
        {
            var _steamHandle = InputDeviceGetSteamHandle(_device);
            
            if (_steamHandle != undefined)
            {
                var _type = InputDeviceGetGamepadType(_device);
                return _type == 3 || _type == 4;
            }
        }
        else
        {
        }
        
        return false;
    };
    
    __playerIndex = arg0;
    __color = undefined;
}

enum UnknownEnum
{
    Value_0
}
