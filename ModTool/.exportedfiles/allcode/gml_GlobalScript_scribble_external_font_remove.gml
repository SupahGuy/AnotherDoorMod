function scribble_external_font_remove(arg0)
{
    static _font_data_map = __scribble_system().__font_data_map;
    
    if (!ds_map_exists(_font_data_map, arg0))
    {
        __scribble_trace($"Warning! Font \"{arg0}\" has already been removed");
        exit;
    }
    
    var _font_data = ds_map_find_value(_font_data_map, arg0);
    
    if (_font_data.__from_bundle)
    {
        __scribble_error($"Cannot remove font \"{arg0}\"\nIt was not added using `scribble_external_font_add()`");
        exit;
    }
    
    _font_data.__destroy();
    scribble_refresh_everything();
}
