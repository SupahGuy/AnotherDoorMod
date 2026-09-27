function InputDeviceIsAvailable(arg0)
{
    static _deviceMap = __InputSystem().__deviceMap;
    
    if (arg0 == -666)
        return false;
    
    if (arg0 >= 0 && false)
        return false;
    
    if (arg0 == -1 && !(true || (false && !__InputOnOperaGXMobile())))
        return false;
    
    if (arg0 == -2 && !(false || (false && __InputOnOperaGXMobile())))
        return false;
    
    if (arg0 == -3)
        return true;
    
    return !ds_map_exists(_deviceMap, arg0);
}
