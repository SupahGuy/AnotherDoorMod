__InputVibrateSystem();

function __InputVibrateSystem()
{
    static _system = undefined;
    
    if (_system != undefined)
        return _system;
    
    _system = {};
    
    with (_system)
    {
        __deviceMap = ds_map_create();
        __deviceArray = [];
        __playerArray = array_create_ext(4, function(arg0)
        {
            return new __InputVibrateClassPlayer(arg0);
        });
        InputPlugInDefine("InputTeam.GamepadVibration", "Input Team", "1.0", "10.0", function()
        {
            InputPlugInRegisterCallback(UnknownEnum.Value_3, undefined, function(arg0)
            {
                var _struct = new __InputVibrateClassGamepad(arg0);
                ds_map_set(__deviceMap, arg0, _struct);
                array_push(__deviceArray, _struct);
            });
            InputPlugInRegisterCallback(UnknownEnum.Value_2, undefined, function(arg0, arg1)
            {
                InputVibrateDirect(arg0, 0, 0);
                ds_map_delete(__deviceMap, arg0);
                var _i = 0;
                
                repeat (array_length(__deviceArray))
                {
                    if (__deviceArray[_i].__device == arg0)
                        array_delete(__deviceArray, _i, 1);
                    else
                        _i++;
                }
            });
            InputPlugInRegisterCallback(UnknownEnum.Value_1, undefined, function()
            {
                array_foreach(__playerArray, function(arg0, arg1)
                {
                    arg0.__Update();
                });
                array_foreach(__deviceArray, function(arg0, arg1)
                {
                    arg0.__Update();
                });
            });
            InputPlugInRegisterCallback(UnknownEnum.Value_9, undefined, function()
            {
                var _i = 0;
                
                repeat (array_length(4))
                {
                    InputVibrateStop(_i);
                    _i++;
                }
            });
        });
    }
    
    return _system;
}

enum UnknownEnum
{
    Value_1 = 1,
    Value_2,
    Value_3,
    Value_9 = 9
}
