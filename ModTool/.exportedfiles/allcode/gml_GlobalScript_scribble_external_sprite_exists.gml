function scribble_external_sprite_exists(arg0)
{
    static _external_sprite_map = __scribble_system().__external_sprite_map;
    
    return ds_map_exists(_external_sprite_map, arg0);
}
