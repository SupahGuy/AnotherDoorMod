function InputMotionCalibrate(arg0 = 0)
{
    static _deviceMap = __InputMotionSystem().__deviceMap;
    
    if (!is_numeric(arg0))
        __InputError("Player index must be a number (typeof = \"", typeof(arg0), "\")");
    
    if (arg0 >= 4)
        __InputError("Player index ", arg0, " too large. Must be less than config `INPUT_MAX_PLAYERS` (", 4, ")");
    
    if (arg0 < 0)
        __InputError("Player index ", arg0, " less than zero");
    
    var _deviceStruct = ds_map_find_value(_deviceMap, InputPlayerGetDevice(arg0));
    
    if (_deviceStruct == undefined)
        exit;
    
    _deviceStruct.__Calibrate();
}
