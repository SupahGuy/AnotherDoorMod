function __InputTrggerEffectClassFeedback(arg0, arg1) constructor
{
    static __modeName = "feedback";
    static __mode = UnknownEnum.Value_1;
    
    static __ApplyPS5 = function(arg0, arg1, arg2)
    {
        return ps5_gamepad_set_trigger_effect_feedback(arg0, arg1, struct_get_from_hash(__params, variable_get_hash("position")), struct_get_from_hash(__params, variable_get_hash("strength")) * arg2);
    };
    
    static __SteamGetState = function(arg0, arg1)
    {
        if (InputDeviceGetGamepadValue(arg0, arg1) >= (struct_get_from_hash(__params, variable_get_hash("position")) / 10))
            return UnknownEnum.Value_2;
        
        return UnknownEnum.Value_1;
    };
    
    __params = {};
    __params.position = clamp(arg0 * 10, 0, 9);
    __params.strength = clamp(arg1 * 8, 0, 8);
}

enum UnknownEnum
{
    Value_1 = 1,
    Value_2
}
