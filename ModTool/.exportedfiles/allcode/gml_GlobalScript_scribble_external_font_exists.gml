function scribble_external_font_exists(arg0)
{
    static _font_data_map = __scribble_system().__font_data_map;
    
    if (!ds_map_exists(_font_data_map, arg0))
        return false;
    
    var _font_data = ds_map_find_value(_font_data_map, arg0);
    
    if (_font_data.__from_bundle)
        return false;
    
    return true;
}
