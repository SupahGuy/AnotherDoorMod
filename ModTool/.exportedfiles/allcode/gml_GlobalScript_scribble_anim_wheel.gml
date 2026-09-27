function scribble_anim_wheel(arg0, arg1, arg2)
{
    static _array = __scribble_system().__anim_properties;
    static _scribble_state = __scribble_system().__state;
    
    if (arg0 != _array[UnknownEnum.Value_11] || arg1 != _array[UnknownEnum.Value_12] || arg2 != _array[UnknownEnum.Value_13])
    {
        _array[UnknownEnum.Value_11] = arg0;
        _array[UnknownEnum.Value_12] = arg1;
        _array[UnknownEnum.Value_13] = arg2;
        
        with (_scribble_state)
        {
            __shader_anim_desync = !__shader_anim_disabled;
            __shader_anim_desync_to_default = false;
        }
    }
}

enum UnknownEnum
{
    Value_11 = 11,
    Value_12,
    Value_13
}
