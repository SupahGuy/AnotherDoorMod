function scribble_glyph_set(arg0, arg1, arg2, arg3, arg4 = false)
{
    var _font_data = __scribble_get_font_data(arg0);
    var _grid = _font_data.__glyph_data_grid;
    var _map = _font_data.__glyphs_map;
    
    if (arg1 == -3 || arg1 == "all")
    {
        if (arg4)
            ds_grid_add_region(_grid, 0, arg2, ds_grid_width(_grid) - 1, arg2, arg3);
        else
            ds_grid_set_region(_grid, 0, arg2, ds_grid_width(_grid) - 1, arg2, arg3);
        
        var _glyph_index = ds_map_find_value(_map, 32);
        
        if (_glyph_index == undefined)
        {
            __scribble_error("Space character not found for font \"", arg0, "\"");
            exit;
        }
        
        if (arg2 == UnknownEnum.Value_8)
            ds_grid_set(_grid, _glyph_index, UnknownEnum.Value_5, ds_grid_get(_grid, _glyph_index, UnknownEnum.Value_8));
        
        if (arg2 == UnknownEnum.Value_5)
            ds_grid_set(_grid, _glyph_index, UnknownEnum.Value_8, ds_grid_get(_grid, _glyph_index, UnknownEnum.Value_5));
        
        if (arg2 == UnknownEnum.Value_6)
            ds_grid_set(_grid, _glyph_index, UnknownEnum.Value_7, ds_grid_get(_grid, _glyph_index, UnknownEnum.Value_6));
        
        if (arg2 == UnknownEnum.Value_7)
            ds_grid_set(_grid, _glyph_index, UnknownEnum.Value_6, ds_grid_get(_grid, _glyph_index, UnknownEnum.Value_7));
        
        if (arg2 == UnknownEnum.Value_6 || arg2 == UnknownEnum.Value_7)
        {
            ds_grid_set_region(_grid, 0, UnknownEnum.Value_7, ds_grid_width(_grid) - 1, UnknownEnum.Value_7, ds_grid_get(_grid, _glyph_index, UnknownEnum.Value_7));
            _font_data.__height = ds_grid_get(_grid, _glyph_index, UnknownEnum.Value_7);
        }
    }
    else
    {
        var _unicode = is_real(arg1) ? arg1 : ord(arg1);
        var _glyph_index = ds_map_find_value(_map, _unicode);
        
        if (_glyph_index == undefined)
        {
            __scribble_error("Character \"", arg1, "\" not found for font \"", arg0, "\"");
            exit;
        }
        
        var _new_value = arg4 ? (ds_grid_get(_grid, _glyph_index, arg2) + arg3) : arg3;
        ds_grid_set(_grid, _glyph_index, arg2, _new_value);
        
        if (_unicode == 32)
        {
            if (arg2 == UnknownEnum.Value_8)
                ds_grid_set(_grid, _glyph_index, UnknownEnum.Value_5, _new_value);
            
            if (arg2 == UnknownEnum.Value_5)
                ds_grid_set(_grid, _glyph_index, UnknownEnum.Value_8, _new_value);
            
            if (arg2 == UnknownEnum.Value_6)
                ds_grid_set(_grid, _glyph_index, UnknownEnum.Value_7, _new_value);
            
            if (arg2 == UnknownEnum.Value_7)
                ds_grid_set(_grid, _glyph_index, UnknownEnum.Value_6, _new_value);
            
            if (arg2 == UnknownEnum.Value_6 || arg2 == UnknownEnum.Value_7)
            {
                ds_grid_set_region(_grid, 0, UnknownEnum.Value_7, ds_grid_width(_grid) - 1, UnknownEnum.Value_7, _new_value);
                _font_data.__height = _new_value;
            }
        }
        
        return _new_value;
    }
}

enum UnknownEnum
{
    Value_5 = 5,
    Value_6,
    Value_7,
    Value_8
}
