function scribble_anim_wave(arg0, arg1, arg2)
{
    static _array = __scribble_system().__anim_properties;
    static _scribble_state = __scribble_system().__state;
    
    if (arg0 != _array[UnknownEnum.Value_0] || arg1 != _array[UnknownEnum.Value_1] || arg2 != _array[UnknownEnum.Value_2])
    {
        _array[UnknownEnum.Value_0] = arg0;
        _array[UnknownEnum.Value_1] = arg1;
        _array[UnknownEnum.Value_2] = arg2;
        
        with (_scribble_state)
        {
            __shader_anim_desync = !__shader_anim_disabled;
            __shader_anim_desync_to_default = false;
        }
    }
}

enum UnknownEnum
{
    Value_0,
    Value_1,
    Value_2
}
