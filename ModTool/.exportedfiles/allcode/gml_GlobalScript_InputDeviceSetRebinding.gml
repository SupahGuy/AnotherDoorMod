function InputDeviceSetRebinding(arg0, arg1, arg2 = undefined, arg3 = undefined, arg4 = true)
{
    static _rebindingMap = __InputSystem().__rebindingMap;
    static _rebindingArray = __InputSystem().__rebindingArray;
    
    if (arg0 != -1 && arg0 < 0)
        exit;
    
    if (arg1)
    {
        if (!ds_map_exists(_rebindingMap, arg0))
        {
            var _handler = new __InputClassRebindingHandler(arg0, arg2, arg3);
            ds_map_set(_rebindingMap, arg0, _handler);
            array_push(_rebindingArray, _handler);
            
            if (arg4)
                InputVerbConsumeAll(InputDeviceGetPlayer(arg0));
        }
    }
    else if (ds_map_exists(_rebindingMap, arg0))
    {
        ds_map_delete(_rebindingMap, arg0);
        var _i = 0;
        
        repeat (array_length(_rebindingArray))
        {
            if (_rebindingArray[_i].__device == arg0)
                array_delete(_rebindingArray, _i, 1);
            else
                _i++;
        }
        
        if (arg4)
            InputVerbConsumeAll(InputDeviceGetPlayer(arg0));
    }
}
