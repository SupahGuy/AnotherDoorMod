function scribble_anim_cycle(arg0, arg1, arg2)
{
    static _array = __scribble_system().__anim_properties;
    static _scribble_state = __scribble_system().__state;
    
    if (arg0 != _array[UnknownEnum.Value_14] || arg1 != _array[UnknownEnum.Value_15] || arg2 != _array[UnknownEnum.Value_16])
    {
        _array[UnknownEnum.Value_14] = arg0;
        _array[UnknownEnum.Value_15] = arg1;
        _array[UnknownEnum.Value_16] = arg2;
        
        with (_scribble_state)
        {
            __shader_anim_desync = !__shader_anim_disabled;
            __shader_anim_desync_to_default = false;
        }
    }
}

enum UnknownEnum
{
    Value_14 = 14,
    Value_15,
    Value_16
}
