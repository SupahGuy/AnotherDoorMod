function InputDeviceGetRebindingResult(arg0)
{
    static _rebindingMap = __InputSystem().__rebindingMap;
    
    var _handler = ds_map_find_value(_rebindingMap, arg0);
    return (_handler == undefined) ? undefined : _handler.__rebindingResult;
}
