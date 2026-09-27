function __scribble_gen_7_build_pages()
{
    static _generator_state = __scribble_system().__generator_state;
    static _animation_randomize_array = [];
    
    var _element, _model_max_height, _word_grid, _line_grid, _line_count, _line_spacing_add, _line_spacing_multiply, _glyph_grid, _line_data_getter, _line_data_array, _randomize_animation;
    
    with (_generator_state)
    {
        _glyph_grid = __glyph_grid;
        _word_grid = __word_grid;
        _line_grid = __line_grid;
        _element = __element;
        _model_max_height = __model_max_height;
        _line_count = __line_count;
        _line_spacing_add = __line_spacing_add;
        _line_spacing_multiply = __line_spacing_multiply;
        _randomize_animation = __element.__randomize_animation;
        _line_data_getter = __element.__allow_line_data_getter;
        _line_data_array = _line_data_getter ? [] : undefined;
    }
    
    var _wrap_no_pages = _element.__wrap_no_pages;
    var _simulated_model_height = _wrap_no_pages ? infinity : (_model_max_height / __fit_scale);
    var _model_height = 0;
    var _page_data = __new_page();
    _page_data.__line_start = 0;
    _page_data.__glyph_start = ds_grid_get(_word_grid, ds_grid_get(_line_grid, 0, UnknownEnum.Value_2), UnknownEnum.Value_2);
    var _page_start_line = 0;
    var _line_y = 0;
    var _line_max_y = 0;
    var _i = 0;
    
    repeat (_line_count)
    {
        var _line_height = ds_grid_get(_line_grid, _i, UnknownEnum.Value_5);
        var _starts_manual_page = ds_grid_get(_line_grid, _i, UnknownEnum.Value_8);
        
        if (!_starts_manual_page && ((_line_y + _line_height) < _simulated_model_height || _page_start_line >= _i))
        {
            ds_grid_set(_line_grid, _i, UnknownEnum.Value_1, _line_y);
            _line_max_y = _line_y + _line_height;
            _line_y += (_line_spacing_add + (_line_height * _line_spacing_multiply));
        }
        else
        {
            _model_height = max(_model_height, _line_max_y);
            _page_end_line = _i - 1;
            _page_data.__line_end = _page_end_line;
            _page_data.__line_count = (1 + _page_data.__line_end) - _page_data.__line_start;
            _page_data.__glyph_end = ds_grid_get(_word_grid, ds_grid_get(_line_grid, _page_end_line, UnknownEnum.Value_3), UnknownEnum.Value_3);
            _page_data.__glyph_count = (1 + _page_data.__glyph_end) - _page_data.__glyph_start;
            _page_data.__width = ds_grid_get_max(_line_grid, _page_start_line, UnknownEnum.Value_4, _page_end_line, UnknownEnum.Value_4);
            _page_data.__height = _line_max_y;
            
            if (__valign == 1)
            {
                _page_data.__min_y = -(_line_max_y div 2);
                _page_data.__max_y = _line_max_y div 2;
            }
            else if (__valign == 2)
            {
                _page_data.__min_y = -_line_max_y;
                _page_data.__max_y = 0;
            }
            else if (__valign == 4)
            {
                if (false || _model_max_height == infinity)
                {
                    _page_data.__min_y = -(_line_max_y div 2);
                    _page_data.__max_y = _line_max_y div 2;
                }
                else
                {
                    var _delta = _model_max_height - _line_max_y;
                    _page_data.__min_y = 0.5 * _delta;
                    _page_data.__max_y = _model_max_height - (0.5 * _delta);
                }
            }
            else if (__valign == 5)
            {
                if (false || _model_max_height == infinity)
                {
                    _page_data.__min_y = -_line_max_y;
                    _page_data.__max_y = 0;
                }
                else
                {
                    _page_data.__min_y = _model_max_height - _line_max_y;
                    _page_data.__max_y = _model_max_height;
                }
            }
            else
            {
                _page_data.__min_y = 0;
                _page_data.__max_y = _line_max_y;
            }
            
            if (_page_data.__min_y != 0)
                ds_grid_add_region(_line_grid, _page_data.__line_start, UnknownEnum.Value_1, _page_end_line, UnknownEnum.Value_1, _page_data.__min_y);
            
            _page_anim_start = ds_grid_get(_glyph_grid, _page_data.__glyph_start, UnknownEnum.Value_16);
            _page_anim_end = ds_grid_get(_glyph_grid, _page_data.__glyph_end, UnknownEnum.Value_16);
            _page_data.__character_count = (1 + _page_anim_end) - _page_anim_start;
            
            if (_line_data_getter)
            {
                _i = _page_data.__line_start;
                
                repeat (_page_data.__line_count)
                {
                    var _glyph_start = ds_grid_get(_word_grid, ds_grid_get(_line_grid, _i, UnknownEnum.Value_2), UnknownEnum.Value_2) - _page_data.__glyph_start;
                    var _glyph_end = ds_grid_get(_word_grid, ds_grid_get(_line_grid, _i, UnknownEnum.Value_3), UnknownEnum.Value_3) - _page_data.__glyph_start;
                    array_push(_line_data_array, new __scribble_class_line(ds_grid_get(_line_grid, _i, UnknownEnum.Value_1), ds_grid_get(_line_grid, _i, UnknownEnum.Value_5), ds_grid_get(_line_grid, _i, UnknownEnum.Value_9), _glyph_start, _glyph_end));
                    _i++;
                }
                
                _page_data.__line_data_array = _line_data_array;
                _line_data_array = [];
            }
            
            if (_randomize_animation)
            {
                array_resize(_animation_randomize_array, _page_data.__character_count);
                _i = 0;
                
                repeat (_page_data.__character_count)
                {
                    _animation_randomize_array[_i] = _i;
                    _i++;
                }
                
                array_sort(_animation_randomize_array, function()
                {
                    return choose(-1, 1);
                });
                var _glyph_start = _page_data.__glyph_start;
                _i = 0;
                
                repeat (_page_data.__character_count)
                {
                    ds_grid_set(_glyph_grid, _glyph_start + _i, UnknownEnum.Value_16, _animation_randomize_array[_i]);
                    _i++;
                }
            }
            else
            {
                ds_grid_add_region(_glyph_grid, _page_data.__glyph_start, UnknownEnum.Value_16, _page_data.__glyph_end, UnknownEnum.Value_16, -_page_anim_start);
            }
            
            _page_data = __new_page();
            _page_data.__line_start = _i;
            _page_data.__glyph_start = ds_grid_get(_word_grid, ds_grid_get(_line_grid, _i, UnknownEnum.Value_2), UnknownEnum.Value_2);
            _page_start_line = _i;
            ds_grid_set(_line_grid, _i, UnknownEnum.Value_1, 0);
            _line_max_y = _line_height;
            _line_y = _line_spacing_add + (_line_height * _line_spacing_multiply);
        }
        
        _i++;
    }
    
    _model_height = max(_model_height, _line_max_y);
    var _page_end_line = _i - 1;
    _page_data.__line_end = _page_end_line;
    _page_data.__line_count = (1 + _page_data.__line_end) - _page_data.__line_start;
    _page_data.__glyph_end = ds_grid_get(_word_grid, ds_grid_get(_line_grid, _page_end_line, UnknownEnum.Value_3), UnknownEnum.Value_3);
    _page_data.__glyph_count = (1 + _page_data.__glyph_end) - _page_data.__glyph_start;
    _page_data.__width = ds_grid_get_max(_line_grid, _page_start_line, UnknownEnum.Value_4, _page_end_line, UnknownEnum.Value_4);
    _page_data.__height = _line_max_y;
    
    if (__valign == 1)
    {
        _page_data.__min_y = -(_line_max_y div 2);
        _page_data.__max_y = _line_max_y div 2;
    }
    else if (__valign == 2)
    {
        _page_data.__min_y = -_line_max_y;
        _page_data.__max_y = 0;
    }
    else if (__valign == 4)
    {
        if (false || _model_max_height == infinity)
        {
            _page_data.__min_y = -(_line_max_y div 2);
            _page_data.__max_y = _line_max_y div 2;
        }
        else
        {
            var _delta = _model_max_height - _line_max_y;
            _page_data.__min_y = 0.5 * _delta;
            _page_data.__max_y = _model_max_height - (0.5 * _delta);
        }
    }
    else if (__valign == 5)
    {
        if (false || _model_max_height == infinity)
        {
            _page_data.__min_y = -_line_max_y;
            _page_data.__max_y = 0;
        }
        else
        {
            _page_data.__min_y = _model_max_height - _line_max_y;
            _page_data.__max_y = _model_max_height;
        }
    }
    else
    {
        _page_data.__min_y = 0;
        _page_data.__max_y = _line_max_y;
    }
    
    if (_page_data.__min_y != 0)
        ds_grid_add_region(_line_grid, _page_data.__line_start, UnknownEnum.Value_1, _page_end_line, UnknownEnum.Value_1, _page_data.__min_y);
    
    var _page_anim_start = ds_grid_get(_glyph_grid, _page_data.__glyph_start, UnknownEnum.Value_16);
    var _page_anim_end = ds_grid_get(_glyph_grid, _page_data.__glyph_end, UnknownEnum.Value_16);
    _page_data.__character_count = (1 + _page_anim_end) - _page_anim_start;
    
    if (_line_data_getter)
    {
        _i = _page_data.__line_start;
        
        repeat (_page_data.__line_count)
        {
            var _glyph_start = ds_grid_get(_word_grid, ds_grid_get(_line_grid, _i, UnknownEnum.Value_2), UnknownEnum.Value_2) - _page_data.__glyph_start;
            var _glyph_end = ds_grid_get(_word_grid, ds_grid_get(_line_grid, _i, UnknownEnum.Value_3), UnknownEnum.Value_3) - _page_data.__glyph_start;
            array_push(_line_data_array, new __scribble_class_line(ds_grid_get(_line_grid, _i, UnknownEnum.Value_1), ds_grid_get(_line_grid, _i, UnknownEnum.Value_5), ds_grid_get(_line_grid, _i, UnknownEnum.Value_9), _glyph_start, _glyph_end));
            _i++;
        }
        
        _page_data.__line_data_array = _line_data_array;
        _line_data_array = [];
    }
    
    if (_randomize_animation)
    {
        array_resize(_animation_randomize_array, _page_data.__character_count);
        _i = 0;
        
        repeat (_page_data.__character_count)
        {
            _animation_randomize_array[_i] = _i;
            _i++;
        }
        
        array_sort(_animation_randomize_array, function()
        {
            return choose(-1, 1);
        });
        var _glyph_start = _page_data.__glyph_start;
        _i = 0;
        
        repeat (_page_data.__character_count)
        {
            ds_grid_set(_glyph_grid, _glyph_start + _i, UnknownEnum.Value_16, _animation_randomize_array[_i]);
            _i++;
        }
    }
    else
    {
        ds_grid_add_region(_glyph_grid, _page_data.__glyph_start, UnknownEnum.Value_16, _page_data.__glyph_end, UnknownEnum.Value_16, -_page_anim_start);
    }
}

enum UnknownEnum
{
    Value_1 = 1,
    Value_2,
    Value_3,
    Value_4,
    Value_5,
    Value_8 = 8,
    Value_9,
    Value_16 = 16
}
