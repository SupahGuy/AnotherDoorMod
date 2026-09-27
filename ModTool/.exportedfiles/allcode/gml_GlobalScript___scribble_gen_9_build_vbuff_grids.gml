function __scribble_gen_9_build_vbuff_grids()
{
    static _generator_state = __scribble_system().__generator_state;
    
    var _vbuff_pos_grid, _glyph_grid, _glyph_count, _element;
    
    with (_generator_state)
    {
        _glyph_grid = __glyph_grid;
        _vbuff_pos_grid = __vbuff_pos_grid;
        _glyph_count = __glyph_count;
        _element = __element;
    }
    
    ds_grid_set_grid_region(_vbuff_pos_grid, _glyph_grid, 0, UnknownEnum.Value_2, _glyph_count - 1, UnknownEnum.Value_3, 0, UnknownEnum.Value_0);
    ds_grid_set_grid_region(_vbuff_pos_grid, _glyph_grid, 0, UnknownEnum.Value_2, _glyph_count - 1, UnknownEnum.Value_3, 0, UnknownEnum.Value_2);
    ds_grid_add_grid_region(_vbuff_pos_grid, _glyph_grid, 0, UnknownEnum.Value_4, _glyph_count - 1, UnknownEnum.Value_4, 0, UnknownEnum.Value_2);
    ds_grid_add_grid_region(_vbuff_pos_grid, _glyph_grid, 0, UnknownEnum.Value_5, _glyph_count - 1, UnknownEnum.Value_5, 0, UnknownEnum.Value_3);
    
    if (_element.__visual_bboxes)
    {
        var _model_min_x = infinity;
        var _model_min_y = infinity;
        var _model_max_x = -infinity;
        var _model_max_y = -infinity;
        var _p = 0;
        
        repeat (__pages)
        {
            var _page_data = __pages_array[_p];
            
            with (_page_data)
            {
                var _page_glyph_start = __glyph_start;
                var _page_glyph_end = (__glyph_count - 1) + _page_glyph_start;
                __min_x = ds_grid_get_min(_vbuff_pos_grid, _page_glyph_start, UnknownEnum.Value_0, _page_glyph_end, UnknownEnum.Value_0);
                __min_y = ds_grid_get_min(_vbuff_pos_grid, _page_glyph_start, UnknownEnum.Value_1, _page_glyph_end, UnknownEnum.Value_1);
                __max_x = ds_grid_get_max(_vbuff_pos_grid, _page_glyph_start, UnknownEnum.Value_2, _page_glyph_end, UnknownEnum.Value_2);
                __max_y = ds_grid_get_max(_vbuff_pos_grid, _page_glyph_start, UnknownEnum.Value_3, _page_glyph_end, UnknownEnum.Value_3);
                _model_min_x = min(_model_min_x, __min_x);
                _model_min_y = min(_model_min_y, __min_y);
                _model_max_x = max(_model_max_x, __max_x);
                _model_max_y = max(_model_max_y, __max_y);
            }
            
            _p++;
        }
        
        __min_x = is_infinity(_model_min_x) ? 0 : _model_min_x;
        __min_y = is_infinity(_model_min_y) ? 0 : _model_min_y;
        __max_x = is_infinity(_model_max_x) ? 0 : _model_max_x;
        __max_y = is_infinity(_model_max_y) ? 0 : _model_max_y;
        __width = (1 + __max_x) - __min_x;
        __height = (1 + __max_y) - __min_y;
    }
}

enum UnknownEnum
{
    Value_0,
    Value_1,
    Value_2,
    Value_3,
    Value_4,
    Value_5
}
