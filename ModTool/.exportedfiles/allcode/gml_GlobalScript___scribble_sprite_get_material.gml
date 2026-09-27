function __scribble_sprite_get_material(arg0, arg1)
{
    static _sprite_texture_material_map = __scribble_system().__sprite_texture_material_map;
    
    var _texture_index = __scribble_sprite_get_texture_index(arg0, arg1);
    var _material = ds_map_find_value(_sprite_texture_material_map, _texture_index);
    
    if (_material == undefined)
    {
        _material = __scribble_get_material(sprite_get_name(arg0), _texture_index, 0, undefined, undefined, undefined);
        ds_map_set(_sprite_texture_material_map, _texture_index, _material);
    }
    
    return _material;
}
