function InputDeviceGetPlayer(arg0)
{
    static _deviceMap = __InputSystem().__deviceMap;
    
    return ds_map_find_value(_deviceMap, arg0);
}
