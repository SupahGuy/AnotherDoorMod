function scribble_font_force_bilinear_filtering(arg0, arg1)
{
    with (__scribble_get_font_data(arg0))
    {
        if (__bilinear == arg1)
            exit;
        
        __bilinear = arg1;
        var _grid = __glyph_data_grid;
        var _i = 0;
        
        repeat (ds_grid_width(_grid))
        {
            var _material = ds_grid_get(_grid, _i, UnknownEnum.Value_11);
            var _new_material = _material.__duplicate_material_with_new_bilinear(arg1);
            ds_grid_set(_grid, _i, UnknownEnum.Value_11, _new_material);
            _i++;
        }
    }
}

enum UnknownEnum
{
    Value_11 = 11
}
