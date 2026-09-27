function __InputRegisterPlayerDeviceChanged()
{
    __InputPlugInRegisterCallbackInternal(UnknownEnum.Value_4, 0, function(arg0, arg1, arg2)
    {
        static _playerArray = __InputSystemPlayerArray();
        static _deviceMap = __InputSystem().__deviceMap;
        static _virtualButtonArray = __InputSystem().__virtualButtonArray;
        
        with (_playerArray[arg0])
        {
            if (arg2 != -666 && arg2 != -3)
            {
                var _oldPlayerIndex = ds_map_find_value(_deviceMap, arg2);
                
                if (_oldPlayerIndex != undefined)
                {
                    with (_playerArray[_oldPlayerIndex])
                    {
                        __device = -666;
                        __UpdateStatus();
                    }
                }
            }
            
            if (arg1 == -666)
            {
                __lastInputTime = current_time;
            }
            else
            {
                if (arg1 == -2)
                {
                    var _i = 0;
                    
                    repeat (array_length(_virtualButtonArray))
                    {
                        _virtualButtonArray[_i].__ClearState();
                        _i++;
                    }
                }
                
                ds_map_delete(_deviceMap, arg1);
            }
            
            __device = arg2;
            __UpdateStatus();
            InputDeviceSetRebinding(__device, false);
            
            if (arg2 != -666 && arg2 != -3)
                ds_map_set(_deviceMap, arg2, arg0);
        }
    });
}

enum UnknownEnum
{
    Value_4 = 4
}
