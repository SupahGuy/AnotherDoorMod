function scribble_anim_reset()
{
    static _scribble_state = __scribble_system().__state;
    static _array = __scribble_system().__anim_properties;
    
    with (_scribble_state)
    {
        if (!__shader_anim_default)
        {
            _array[UnknownEnum.Value_0] = 4;
            _array[UnknownEnum.Value_1] = 50;
            _array[UnknownEnum.Value_2] = 0.2;
            _array[UnknownEnum.Value_3] = 2;
            _array[UnknownEnum.Value_4] = 0.4;
            _array[UnknownEnum.Value_5] = 0.5;
            _array[UnknownEnum.Value_6] = 0.01;
            _array[UnknownEnum.Value_7] = 40;
            _array[UnknownEnum.Value_8] = 0.15;
            _array[UnknownEnum.Value_9] = 0.4;
            _array[UnknownEnum.Value_10] = 0.1;
            _array[UnknownEnum.Value_11] = 1;
            _array[UnknownEnum.Value_12] = 0.5;
            _array[UnknownEnum.Value_13] = 0.2;
            _array[UnknownEnum.Value_14] = 0.5;
            _array[UnknownEnum.Value_15] = 180;
            _array[UnknownEnum.Value_16] = 255;
            _array[UnknownEnum.Value_17] = 0.7;
            _array[UnknownEnum.Value_18] = 1.2;
            _array[UnknownEnum.Value_19] = 0.4;
            _array[UnknownEnum.Value_20] = 0.25;
            __blink_on_duration = 50;
            __blink_off_duration = 50;
            __blink_time_offset = 0;
        }
        
        if (!__shader_anim_desync)
        {
            __shader_anim_desync = !__shader_anim_disabled;
            __shader_anim_desync_to_default = true;
        }
    }
}

enum UnknownEnum
{
    Value_0,
    Value_1,
    Value_2,
    Value_3,
    Value_4,
    Value_5,
    Value_6,
    Value_7,
    Value_8,
    Value_9,
    Value_10,
    Value_11,
    Value_12,
    Value_13,
    Value_14,
    Value_15,
    Value_16,
    Value_17,
    Value_18,
    Value_19,
    Value_20
}
