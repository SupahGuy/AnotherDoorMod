function InputVibrateGetSupported(arg0 = 0)
{
    static _deviceMap = __InputVibrateSystem().__deviceMap;
    
    with (ds_map_find_value(_deviceMap, InputPlayerGetDevice(arg0)))
        return __supported;
    
    return false;
}
