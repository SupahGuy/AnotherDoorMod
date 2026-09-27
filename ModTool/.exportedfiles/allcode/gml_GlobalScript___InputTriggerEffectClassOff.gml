function __InputTriggerEffectClassOff() constructor
{
    static __modeName = "off";
    static __mode = UnknownEnum.Value_0;
    
    static __ApplyPS5 = function(arg0, arg1, arg2)
    {
        return ps5_gamepad_set_trigger_effect_off(arg0, arg1);
    };
    
    static __SteamGetState = function(arg0, arg1)
    {
        return UnknownEnum.Value_0;
    };
    
    __params = {};
}

enum UnknownEnum
{
    Value_0
}
