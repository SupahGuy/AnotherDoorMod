function __scribble_get_material(arg0, arg1, arg2, arg3, arg4, arg5)
{
    static _material_map = __scribble_system().__material_map;
    
    var _key = __scribble_make_material_key(arg1, arg2, arg3, arg4, arg5);
    var _material = ds_map_find_value(_material_map, _key);
    
    if (_material == undefined)
    {
        _material = new __scribble_class_material(_key, arg0, arg1, arg2, arg3, arg4, arg5);
        ds_map_set(_material_map, _key, _material);
    }
    
    return _material;
}
