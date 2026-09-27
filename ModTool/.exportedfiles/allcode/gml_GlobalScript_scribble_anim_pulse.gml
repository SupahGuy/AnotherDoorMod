function scribble_anim_pulse(arg0, arg1)
{
    static _array = __scribble_system().__anim_properties;
    static _scribble_state = __scribble_system().__state;
    
    if (arg0 != _array[UnknownEnum.Value_9] || arg1 != _array[UnknownEnum.Value_10])
    {
        _array[UnknownEnum.Value_9] = arg0;
        _array[UnknownEnum.Value_10] = arg1;
        
        with (_scribble_state)
        {
            __shader_anim_desync = !__shader_anim_disabled;
            __shader_anim_desync_to_default = false;
        }
    }
}

enum UnknownEnum
{
    Value_9 = 9,
    Value_10
}
