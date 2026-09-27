function scribble_external_sprite_remove(arg0)
{
    static _external_sprite_map = __scribble_system().__external_sprite_map;
    
    ds_map_delete(_external_sprite_map, arg0);
}
