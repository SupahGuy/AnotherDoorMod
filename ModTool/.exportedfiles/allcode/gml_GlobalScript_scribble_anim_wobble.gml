function scribble_anim_wobble(arg0, arg1)
{
    static _array = __scribble_system().__anim_properties;
    static _scribble_state = __scribble_system().__state;
    
    if (arg0 != _array[UnknownEnum.Value_7] || arg1 != _array[UnknownEnum.Value_8])
    {
        _array[UnknownEnum.Value_7] = arg0;
        _array[UnknownEnum.Value_8] = arg1;
        
        with (_scribble_state)
        {
            __shader_anim_desync = !__shader_anim_disabled;
            __shader_anim_desync_to_default = false;
        }
    }
}

enum UnknownEnum
{
    Value_7 = 7,
    Value_8
}
