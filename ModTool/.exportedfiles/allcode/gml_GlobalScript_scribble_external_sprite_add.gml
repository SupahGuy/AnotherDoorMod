function scribble_external_sprite_add(arg0, arg1)
{
    static _external_sprite_map = __scribble_system().__external_sprite_map;
    
    if (ds_map_exists(_external_sprite_map, arg1))
        __scribble_error("External sprite alias \"", arg1, "\" already exists");
    
    if (!sprite_exists(arg0))
        __scribble_error("Sprite asset ", arg0, " could not be found");
    
    ds_map_set(_external_sprite_map, arg1, arg0);
}
