function InputMotionGetDirect(arg0)
{
    static _deviceMap = __InputMotionSystem().__deviceMap;
    
    return ds_map_find_value(_deviceMap, arg0);
}
