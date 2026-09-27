function scribble_external_sound_remove(arg0)
{
    static _external_sound_map = __scribble_system().__external_sound_map;
    
    ds_map_delete(_external_sound_map, arg0);
}
