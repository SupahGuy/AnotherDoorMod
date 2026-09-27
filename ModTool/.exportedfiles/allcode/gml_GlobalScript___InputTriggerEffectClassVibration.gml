function __InputTriggerEffectClassVibration(arg0, arg1, arg2) constructor
{
    static __modeName = "vibration";
    static __mode = UnknownEnum.Value_3;
    
    static __ApplyPS5 = function(arg0, arg1, arg2)
    {
        return ps5_gamepad_set_trigger_effect_vibration(arg0, arg1, struct_get_from_hash(__params, variable_get_hash("position")), struct_get_from_hash(__params, variable_get_hash("amplitude")) * arg2, struct_get_from_hash(__params, variable_get_hash("frequency")));
    };
    
    static __SteamGetState = function(arg0, arg1)
    {
        if (InputDeviceGetGamepadValue(arg0, arg1) >= (struct_get_from_hash(__params, variable_get_hash("position")) / 10))
            return UnknownEnum.Value_7;
        
        return UnknownEnum.Value_6;
    };
    
    __params = {};
    __params.position = clamp(arg0 * 10, 0, 9);
    __params.amplitude = clamp(arg1 * 8, 0, 8);
    __params.frequency = clamp(arg2 * 255, 0, 255);
}

enum UnknownEnum
{
    Value_3 = 3,
    Value_6 = 6,
    Value_7
}
