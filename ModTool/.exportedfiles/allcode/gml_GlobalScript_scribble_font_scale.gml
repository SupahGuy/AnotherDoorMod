function scribble_font_scale(arg0, arg1)
{
    var _font_data = __scribble_get_font_data(arg0);
    var _grid = _font_data.__glyph_data_grid;
    ds_grid_multiply_region(_grid, 0, UnknownEnum.Value_3, ds_grid_width(_grid) - 1, UnknownEnum.Value_10, arg1);
    _font_data.__scale *= arg1;
    _font_data.__height *= arg1;
    _font_data.__ascender *= arg1;
    _font_data.__ascender_offset *= arg1;
}

enum UnknownEnum
{
    Value_3 = 3,
    Value_10 = 10
}
