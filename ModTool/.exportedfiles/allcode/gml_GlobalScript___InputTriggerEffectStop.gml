function __InputTriggerEffectStop(arg0 = undefined)
{
    static _deviceMap = __InputTriggerEffectSystem().__deviceMap;
    
    if (arg0 == undefined)
    {
        var _deviceArray = InputDeviceEnumerate(false);
        var _i = 0;
        
        repeat (array_length(_deviceArray))
        {
            arg0 = _deviceArray[_i];
            
            if (arg0 >= 0)
                __InputTriggerEffectStop(arg0);
            
            _i++;
        }
        
        exit;
    }
    
    if (arg0 < 0)
        exit;
    
    with (ds_map_find_value(_deviceMap, arg0))
    {
        __Apply(32775, new __InputTriggerEffectClassOff(), 0);
        __Apply(32776, new __InputTriggerEffectClassOff(), 0);
    }
}
