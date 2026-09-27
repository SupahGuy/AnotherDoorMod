function scribble_anim_shake(arg0, arg1)
{
    static _array = __scribble_system().__anim_properties;
    static _scribble_state = __scribble_system().__state;
    
    if (arg0 != _array[UnknownEnum.Value_3] || arg1 != _array[UnknownEnum.Value_4])
    {
        _array[UnknownEnum.Value_3] = arg0;
        _array[UnknownEnum.Value_4] = arg1;
        
        with (_scribble_state)
        {
            __shader_anim_desync = !__shader_anim_disabled;
            __shader_anim_desync_to_default = false;
        }
    }
}

enum UnknownEnum
{
    Value_3 = 3,
    Value_4
}
