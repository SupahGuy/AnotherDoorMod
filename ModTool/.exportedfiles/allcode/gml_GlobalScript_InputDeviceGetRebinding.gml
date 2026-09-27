function InputDeviceGetRebinding(arg0)
{
    static _rebindingMap = __InputSystem().__rebindingMap;
    
    return ds_map_find_value(_rebindingMap, arg0) ?? false;
}
