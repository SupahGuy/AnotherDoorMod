function __scribble_play_sound(arg0, arg1, arg2)
{
    static _sound_whitelist_map = __scribble_system().__state.__sound_whitelist_map;
    static _external_sound_map = __scribble_system().__external_sound_map;
    
    if (is_string(arg0))
        arg0 = ds_map_find_value(_external_sound_map, arg0) ?? asset_get_index(arg0);
    
    if (!audio_exists(arg0))
        return -1;
    
    if (1 || ds_map_find_value(_sound_whitelist_map, arg0) ?? false)
    {
        var _func = audio_play_sound;
        
        if (is_callable(_func))
            return _func(arg0, 1, false, arg1, 0, arg2);
        else
            return -1;
    }
    else
    {
        return -1;
    }
}
