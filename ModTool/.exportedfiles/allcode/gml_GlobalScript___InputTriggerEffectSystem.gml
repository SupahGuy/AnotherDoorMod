__InputTriggerEffectSystem();

function __InputTriggerEffectSystem()
{
    static _system = undefined;
    
    if (_system != undefined)
        return _system;
    
    _system = {};
    
    with (_system)
    {
        __deviceMap = ds_map_create();
        __playerArray = array_create_ext(4, function(arg0)
        {
            return new __InputTriggerEffectPlayer(arg0);
        });
        InputPlugInDefine("InputTeam.TriggerEffects", "Input Team", "1.0", "10.0", function()
        {
            InputPlugInRegisterCallback(UnknownEnum.Value_3, undefined, function(arg0)
            {
                ds_map_set(__deviceMap, arg0, new __InputTriggerEffectGamepad(arg0));
            });
            InputPlugInRegisterCallback(UnknownEnum.Value_2, undefined, function(arg0, arg1)
            {
                ds_map_delete(__deviceMap, arg0);
            });
            InputPlugInRegisterCallback(UnknownEnum.Value_7, undefined, function()
            {
                __InputTriggerEffectStop();
            });
            InputPlugInRegisterCallback(UnknownEnum.Value_8, undefined, function()
            {
                __InputTriggerEffectReapply(-3);
            });
            InputPlugInRegisterCallback(UnknownEnum.Value_4, undefined, function(arg0, arg1, arg2)
            {
                __InputTriggerEffectStop(arg1);
                __InputTriggerEffectReapply(arg0);
            });
            InputPlugInRegisterCallback(UnknownEnum.Value_9, undefined, function()
            {
                var _i = 0;
                
                repeat (array_length(4))
                {
                    InputTriggerEffectOff(32775, _i);
                    InputTriggerEffectOff(32776, _i);
                    _i++;
                }
            });
        });
    }
    
    return _system;
}

enum UnknownEnum
{
    Value_2 = 2,
    Value_3,
    Value_4,
    Value_7 = 7,
    Value_8,
    Value_9
}
