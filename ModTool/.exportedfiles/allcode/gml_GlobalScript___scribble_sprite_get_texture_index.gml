function __scribble_sprite_get_texture_index(arg0, arg1)
{
    static _sprite_texture_index_map = __scribble_system().__sprite_texture_index_map;
    
    if (!sprite_exists(arg0))
        return -1;
    
    var _count = sprite_get_number(arg0);
    var _array = ds_map_find_value(_sprite_texture_index_map, arg0);
    
    if (!is_array(_array))
    {
        _array = array_create(_count);
        ds_map_set(_sprite_texture_index_map, arg0, _array);
        var _sprite_info = sprite_get_info(arg0);
        var _frame_array = _sprite_info.frames;
        var _i = 0;
        
        repeat (_count)
        {
            _array[_i] = _frame_array[_i].texture;
            _i++;
        }
    }
    
    arg1 -= (_count * floor(arg1 / _count));
    return _array[arg1];
}
