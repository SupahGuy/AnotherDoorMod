function __scribble_gen_10_write_vbuffs()
{
    static _string_buffer = __scribble_system().__buffer_a;
    static _effects_map = __scribble_system().__effects_map;
    static _generator_state = __scribble_system().__generator_state;
    static _html5_sprite_height_workaround_dict = {};
    
    var _vbuff_pos_grid, _glyph_grid, _glyph_count, _glyph_data_getter, _text_getter, _control_grid, _element;
    
    with (_generator_state)
    {
        _glyph_grid = __glyph_grid;
        _control_grid = __control_grid;
        _vbuff_pos_grid = __vbuff_pos_grid;
        _element = __element;
        _glyph_count = __glyph_count;
        _text_getter = __element.__allow_text_getter;
        _glyph_data_getter = __element.__allow_glyph_data_getter;
    }
    
    ds_grid_set_grid_region(_vbuff_pos_grid, _glyph_grid, 0, UnknownEnum.Value_2, _glyph_count - 1, UnknownEnum.Value_3, 0, UnknownEnum.Value_0);
    ds_grid_set_grid_region(_vbuff_pos_grid, _glyph_grid, 0, UnknownEnum.Value_2, _glyph_count - 1, UnknownEnum.Value_3, 0, UnknownEnum.Value_2);
    ds_grid_add_grid_region(_vbuff_pos_grid, _glyph_grid, 0, UnknownEnum.Value_4, _glyph_count - 1, UnknownEnum.Value_4, 0, UnknownEnum.Value_2);
    ds_grid_add_grid_region(_vbuff_pos_grid, _glyph_grid, 0, UnknownEnum.Value_5, _glyph_count - 1, UnknownEnum.Value_5, 0, UnknownEnum.Value_3);
    var _bezier_do, _bezier_prev_cy, _bezier_lengths, _bezier_param_increment;
    
    if (is_array(_generator_state.__bezier_lengths_array))
    {
        _bezier_do = true;
        _bezier_lengths = _generator_state.__bezier_lengths_array;
        var _bezier_search_index = 0;
        var _bezier_search_d0 = 0;
        var _bezier_search_d1 = _bezier_lengths[1];
        _bezier_prev_cy = -infinity;
        _bezier_param_increment = 0.05263157894736842;
    }
    else
    {
        _bezier_do = false;
    }
    
    var _glyph_colour = 4294967295;
    var _glyph_cycle = 0;
    var _glyph_effect_flags = 0;
    var _glyph_sprite_data = 0;
    var _write_colour = 4294967295;
    var _control_index = 0;
    var _region_name = undefined;
    var _region_start = undefined;
    
    var _func_region_pop = function(arg0, arg1, arg2, arg3)
    {
        static _generator_state = __scribble_system().__generator_state;
        
        if (arg2 > arg3)
            exit;
        
        var _region_bbox_array = [];
        var _vbuff_pos_grid = _generator_state.__vbuff_pos_grid;
        var _line_grid = _generator_state.__line_grid;
        var _word_grid = _generator_state.__word_grid;
        var _line = 0;
        var _region_bbox_start = arg2;
        var _region_bbox_end = arg2 - 1;
        
        while (arg3 >= _region_bbox_start)
        {
            _region_bbox_end = min(arg3, ds_grid_get(_word_grid, ds_grid_get(_line_grid, _line, UnknownEnum.Value_3), UnknownEnum.Value_3));
            
            if (_region_bbox_start <= _region_bbox_end)
            {
                array_push(_region_bbox_array, 
                {
                    x1: ds_grid_get_min(_vbuff_pos_grid, _region_bbox_start, UnknownEnum.Value_0, _region_bbox_end, UnknownEnum.Value_0),
                    y1: ds_grid_get_min(_vbuff_pos_grid, _region_bbox_start, UnknownEnum.Value_1, _region_bbox_end, UnknownEnum.Value_1),
                    x2: ds_grid_get_max(_vbuff_pos_grid, _region_bbox_start, UnknownEnum.Value_2, _region_bbox_end, UnknownEnum.Value_2),
                    y2: ds_grid_get_max(_vbuff_pos_grid, _region_bbox_start, UnknownEnum.Value_3, _region_bbox_end, UnknownEnum.Value_3)
                });
                _region_bbox_start = _region_bbox_end + 1;
            }
            
            _line++;
        }
        
        array_push(arg0.__region_array, 
        {
            name: arg1,
            bbox_array: _region_bbox_array,
            start_glyph: arg2 - arg0.__glyph_start,
            end_glyph: arg3 - arg0.__glyph_start
        });
    };
    
    var _p = 0;
    var _i, _packed_indexes, _page_char_events_dict, _page_line_events_dict;
    
    repeat (__pages)
    {
        var _page_data = __pages_array[_p];
        _page_char_events_dict = _page_data.__char_events;
        _page_line_events_dict = _page_data.__line_events;
        var _vbuff = undefined;
        var _material_prev = undefined;
        _packed_indexes = 0;
        
        if (_glyph_data_getter)
        {
            with (_page_data)
            {
                __ensure_glyph_grid();
                ds_grid_set_grid_region(__glyph_grid, _glyph_grid, __glyph_start, UnknownEnum.Value_0, __glyph_end, UnknownEnum.Value_0, 0, UnknownEnum.Value_0);
                ds_grid_set_grid_region(__glyph_grid, _glyph_grid, __glyph_start, UnknownEnum.Value_3, __glyph_end, UnknownEnum.Value_3, 0, UnknownEnum.Value_5);
                ds_grid_set_grid_region(__glyph_grid, _vbuff_pos_grid, __glyph_start, 0, __glyph_end, 3, 0, UnknownEnum.Value_1);
            }
        }
        
        if (_text_getter)
            buffer_seek(_string_buffer, buffer_seek_start, 0);
        
        _i = _page_data.__glyph_start;
        
        repeat (_page_data.__glyph_count)
        {
            _packed_indexes = ds_grid_get(_glyph_grid, _i, UnknownEnum.Value_16);
            _control_delta = ds_grid_get(_glyph_grid, _i, UnknownEnum.Value_15) - _control_index;
            
            repeat (_control_delta)
            {
                switch (ds_grid_get(_control_grid, _control_index, UnknownEnum.Value_0))
                {
                    case UnknownEnum.Value_2:
                        _glyph_colour = ds_grid_get(_control_grid, _control_index, UnknownEnum.Value_1);
                        _write_colour = _glyph_colour;
                        break;
                    
                    case UnknownEnum.Value_3:
                        _glyph_effect_flags = ds_grid_get(_control_grid, _control_index, UnknownEnum.Value_1);
                        break;
                    
                    case UnknownEnum.Value_4:
                        _glyph_cycle = ds_grid_get(_control_grid, _control_index, UnknownEnum.Value_1);
                        
                        if (_glyph_cycle == undefined)
                            _write_colour = _glyph_colour;
                        else
                            _write_colour = _glyph_cycle;
                        
                        break;
                    
                    case UnknownEnum.Value_0:
                        var _character_index = _packed_indexes div 1000;
                        var _line_index = (_packed_indexes % 1000) + ((_character_index > 0) ? 1 : 0);
                        var _event = ds_grid_get(_control_grid, _control_index, UnknownEnum.Value_1);
                        _event.position = _character_index;
                        _event.character_index = _character_index;
                        _event.line_index = _line_index;
                        var _event_array = variable_struct_get(_page_char_events_dict, _character_index);
                        
                        if (!is_array(_event_array))
                        {
                            _event_array = [];
                            variable_struct_set(_page_char_events_dict, _character_index, _event_array);
                        }
                        
                        array_push(_event_array, _event);
                        _event_array = variable_struct_get(_page_line_events_dict, _line_index);
                        
                        if (!is_array(_event_array))
                        {
                            _event_array = [];
                            variable_struct_set(_page_line_events_dict, _line_index, _event_array);
                        }
                        
                        array_push(_event_array, _event);
                        break;
                    
                    case UnknownEnum.Value_5:
                        if (_region_name != undefined)
                            _func_region_pop(_page_data, _region_name, _region_start, _i - 1);
                        
                        _region_name = ds_grid_get(_control_grid, _control_index, UnknownEnum.Value_1);
                        _region_start = _i;
                        break;
                    
                    case UnknownEnum.Value_6:
                        break;
                }
                
                _control_index++;
            }
            
            var _glyph_ord = ds_grid_get(_glyph_grid, _i, UnknownEnum.Value_0);
            
            if (_glyph_ord >= 0)
            {
                if (_text_getter)
                    __scribble_buffer_write_unicode(_string_buffer, _glyph_ord);
                
                if (_glyph_ord > 32 && _glyph_ord != 160 && _glyph_ord != 8203)
                {
                    var _quad_l = ds_grid_get(_vbuff_pos_grid, _i, UnknownEnum.Value_0);
                    var _quad_t = ds_grid_get(_vbuff_pos_grid, _i, UnknownEnum.Value_1);
                    var _quad_r = ds_grid_get(_vbuff_pos_grid, _i, UnknownEnum.Value_2);
                    var _quad_b = ds_grid_get(_vbuff_pos_grid, _i, UnknownEnum.Value_3);
                    var _material = ds_grid_get(_glyph_grid, _i, UnknownEnum.Value_10);
                    var _quad_u0 = ds_grid_get(_glyph_grid, _i, UnknownEnum.Value_11);
                    var _quad_v0 = ds_grid_get(_glyph_grid, _i, UnknownEnum.Value_13);
                    var _quad_u1 = ds_grid_get(_glyph_grid, _i, UnknownEnum.Value_12);
                    var _quad_v1 = ds_grid_get(_glyph_grid, _i, UnknownEnum.Value_14);
                    var _half_w = 0.5 * ds_grid_get(_glyph_grid, _i, UnknownEnum.Value_4);
                    var _half_h = 0.5 * ds_grid_get(_glyph_grid, _i, UnknownEnum.Value_5);
                    
                    if (_material != _material_prev)
                    {
                        _material_prev = _material;
                        _vbuff = _page_data.__get_vertex_buffer(_material);
                    }
                    
                    if (_bezier_do)
                    {
                        var _quad_cx = _quad_l + _half_w;
                        var _quad_cy = _quad_t + _half_h;
                        var _bezier_search_d1, _bezier_search_d0, _bezier_search_index;
                        
                        if (_quad_cy > _bezier_prev_cy)
                        {
                            _bezier_search_index = 0;
                            _bezier_search_d0 = 0;
                            _bezier_search_d1 = _bezier_lengths[1];
                        }
                        
                        _bezier_prev_cy = _quad_cy;
                        var _bezier_param;
                        
                        while (true)
                        {
                            if (_quad_cx <= _bezier_search_d1)
                            {
                                _bezier_param = _bezier_param_increment * (((_quad_cx - _bezier_search_d0) / (_bezier_search_d1 - _bezier_search_d0)) + _bezier_search_index);
                                break;
                            }
                            
                            _bezier_search_index++;
                            
                            if (_bezier_search_index >= 19)
                            {
                                _bezier_param = 1;
                                break;
                            }
                            
                            _bezier_search_d0 = _bezier_search_d1;
                            _bezier_search_d1 = _bezier_lengths[_bezier_search_index + 1];
                        }
                        
                        _quad_l = _bezier_param;
                        _quad_r = _bezier_param;
                        _quad_t = _quad_cy;
                        _quad_b = _quad_cy;
                    }
                    
                    vertex_position_3d(_vbuff, _quad_l, _quad_t, _packed_indexes);
                    vertex_normal(_vbuff, 0, _glyph_sprite_data, _glyph_effect_flags);
                    vertex_argb(_vbuff, _write_colour);
                    vertex_texcoord(_vbuff, _quad_u0, _quad_v0);
                    vertex_float2(_vbuff, _half_w, _half_h);
                    vertex_position_3d(_vbuff, _quad_r, _quad_b, _packed_indexes);
                    vertex_normal(_vbuff, 0, _glyph_sprite_data, _glyph_effect_flags);
                    vertex_argb(_vbuff, _write_colour);
                    vertex_texcoord(_vbuff, _quad_u1, _quad_v1);
                    vertex_float2(_vbuff, -_half_w, -_half_h);
                    vertex_position_3d(_vbuff, _quad_l, _quad_b, _packed_indexes);
                    vertex_normal(_vbuff, 0, _glyph_sprite_data, _glyph_effect_flags);
                    vertex_argb(_vbuff, _write_colour);
                    vertex_texcoord(_vbuff, _quad_u0, _quad_v1);
                    vertex_float2(_vbuff, _half_w, -_half_h);
                    vertex_position_3d(_vbuff, _quad_r, _quad_b, _packed_indexes);
                    vertex_normal(_vbuff, 0, _glyph_sprite_data, _glyph_effect_flags);
                    vertex_argb(_vbuff, _write_colour);
                    vertex_texcoord(_vbuff, _quad_u1, _quad_v1);
                    vertex_float2(_vbuff, -_half_w, -_half_h);
                    vertex_position_3d(_vbuff, _quad_l, _quad_t, _packed_indexes);
                    vertex_normal(_vbuff, 0, _glyph_sprite_data, _glyph_effect_flags);
                    vertex_argb(_vbuff, _write_colour);
                    vertex_texcoord(_vbuff, _quad_u0, _quad_v0);
                    vertex_float2(_vbuff, _half_w, _half_h);
                    vertex_position_3d(_vbuff, _quad_r, _quad_t, _packed_indexes);
                    vertex_normal(_vbuff, 0, _glyph_sprite_data, _glyph_effect_flags);
                    vertex_argb(_vbuff, _write_colour);
                    vertex_texcoord(_vbuff, _quad_u1, _quad_v0);
                    vertex_float2(_vbuff, -_half_w, _half_h);
                }
            }
            else if (_glyph_ord == -1)
            {
                if (_text_getter)
                    buffer_write(_string_buffer, buffer_u8, 26);
                
                var _glyph_x = ds_grid_get(_glyph_grid, _i, UnknownEnum.Value_2);
                var _glyph_y = ds_grid_get(_glyph_grid, _i, UnknownEnum.Value_3);
                var _glyph_width = ds_grid_get(_glyph_grid, _i, UnknownEnum.Value_4);
                var _glyph_height = ds_grid_get(_glyph_grid, _i, UnknownEnum.Value_5);
                _packed_indexes = ds_grid_get(_glyph_grid, _i, UnknownEnum.Value_16);
                var _sprite_index = ds_grid_get(_glyph_grid, _i, UnknownEnum.Value_17);
                var _image_index = ds_grid_get(_glyph_grid, _i, UnknownEnum.Value_18);
                var _image_speed = ds_grid_get(_glyph_grid, _i, UnknownEnum.Value_19);
                var _glyph_xscale = sprite_get_width(_sprite_index) / _glyph_width;
                var _glyph_yscale = sprite_get_height(_sprite_index) / _glyph_height;
                var _old_glyph_effect_flags = _glyph_effect_flags;
                
                if (_image_speed > 0)
                    _glyph_effect_flags |= 1;
                
                var _sprite_number = sprite_get_number(_sprite_index);
                
                if (_sprite_number > 127)
                {
                    __scribble_trace("In-line sprites cannot have more than 127 frames (", sprite_get_name(_sprite_index), ")");
                    _sprite_number = 127;
                }
                
                if (_image_speed >= 2)
                {
                    __scribble_trace("Image speed cannot be more than 2.0 (" + string(_image_speed) + ")");
                    _image_speed = 2;
                }
                
                if (_image_speed < 0)
                {
                    __scribble_trace("Image speed cannot be less than 0.0 (" + string(_image_speed) + ")");
                    _image_speed = 0;
                }
                
                _glyph_sprite_data = (16384 * floor(256 * _image_speed)) + (128 * _sprite_number) + _image_index;
                var _j = _image_index;
                
                repeat ((_image_speed > 0) ? _sprite_number : 1)
                {
                    var _material = __scribble_sprite_get_material(_sprite_index, _j);
                    var _uvs = sprite_get_uvs(_sprite_index, _j);
                    var _quad_u0 = _uvs[0];
                    var _quad_v0 = _uvs[1];
                    var _quad_u1 = _uvs[2];
                    var _quad_v1 = _uvs[3];
                    var _quad_l = floor(_glyph_x + (_uvs[4] / _glyph_xscale));
                    var _quad_t = floor(_glyph_y + (_uvs[5] / _glyph_yscale));
                    var _quad_r = _quad_l + (_uvs[6] * _glyph_width);
                    var _quad_b = _quad_t + (_uvs[7] * _glyph_height);
                    var _half_w = 0.5 * (_quad_r - _quad_l);
                    var _half_h = 0.5 * (_quad_b - _quad_t);
                    
                    if (_material != _material_prev)
                    {
                        _material_prev = _material;
                        _vbuff = _page_data.__get_vertex_buffer(_material);
                    }
                    
                    if (_bezier_do)
                    {
                        var _quad_cx = _quad_l + _half_w;
                        var _quad_cy = _quad_t + _half_h;
                        var _bezier_search_d1, _bezier_search_d0, _bezier_search_index;
                        
                        if (_quad_cy > _bezier_prev_cy)
                        {
                            _bezier_search_index = 0;
                            _bezier_search_d0 = 0;
                            _bezier_search_d1 = _bezier_lengths[1];
                        }
                        
                        _bezier_prev_cy = _quad_cy;
                        var _bezier_param;
                        
                        while (true)
                        {
                            if (_quad_cx <= _bezier_search_d1)
                            {
                                _bezier_param = _bezier_param_increment * (((_quad_cx - _bezier_search_d0) / (_bezier_search_d1 - _bezier_search_d0)) + _bezier_search_index);
                                break;
                            }
                            
                            _bezier_search_index++;
                            
                            if (_bezier_search_index >= 19)
                            {
                                _bezier_param = 1;
                                break;
                            }
                            
                            _bezier_search_d0 = _bezier_search_d1;
                            _bezier_search_d1 = _bezier_lengths[_bezier_search_index + 1];
                        }
                        
                        _quad_l = _bezier_param;
                        _quad_r = _bezier_param;
                        _quad_t = _quad_cy;
                        _quad_b = _quad_cy;
                    }
                    
                    vertex_position_3d(_vbuff, _quad_l, _quad_t, _packed_indexes);
                    vertex_normal(_vbuff, 0, _glyph_sprite_data, _glyph_effect_flags);
                    vertex_argb(_vbuff, _write_colour);
                    vertex_texcoord(_vbuff, _quad_u0, _quad_v0);
                    vertex_float2(_vbuff, _half_w, _half_h);
                    vertex_position_3d(_vbuff, _quad_r, _quad_b, _packed_indexes);
                    vertex_normal(_vbuff, 0, _glyph_sprite_data, _glyph_effect_flags);
                    vertex_argb(_vbuff, _write_colour);
                    vertex_texcoord(_vbuff, _quad_u1, _quad_v1);
                    vertex_float2(_vbuff, -_half_w, -_half_h);
                    vertex_position_3d(_vbuff, _quad_l, _quad_b, _packed_indexes);
                    vertex_normal(_vbuff, 0, _glyph_sprite_data, _glyph_effect_flags);
                    vertex_argb(_vbuff, _write_colour);
                    vertex_texcoord(_vbuff, _quad_u0, _quad_v1);
                    vertex_float2(_vbuff, _half_w, -_half_h);
                    vertex_position_3d(_vbuff, _quad_r, _quad_b, _packed_indexes);
                    vertex_normal(_vbuff, 0, _glyph_sprite_data, _glyph_effect_flags);
                    vertex_argb(_vbuff, _write_colour);
                    vertex_texcoord(_vbuff, _quad_u1, _quad_v1);
                    vertex_float2(_vbuff, -_half_w, -_half_h);
                    vertex_position_3d(_vbuff, _quad_l, _quad_t, _packed_indexes);
                    vertex_normal(_vbuff, 0, _glyph_sprite_data, _glyph_effect_flags);
                    vertex_argb(_vbuff, _write_colour);
                    vertex_texcoord(_vbuff, _quad_u0, _quad_v0);
                    vertex_float2(_vbuff, _half_w, _half_h);
                    vertex_position_3d(_vbuff, _quad_r, _quad_t, _packed_indexes);
                    vertex_normal(_vbuff, 0, _glyph_sprite_data, _glyph_effect_flags);
                    vertex_argb(_vbuff, _write_colour);
                    vertex_texcoord(_vbuff, _quad_u1, _quad_v0);
                    vertex_float2(_vbuff, -_half_w, _half_h);
                    _j++;
                    _glyph_sprite_data++;
                }
                
                _glyph_effect_flags = _old_glyph_effect_flags;
                _glyph_sprite_data = 0;
            }
            else if (_glyph_ord == -2 || _glyph_ord == -3)
            {
                if (_text_getter)
                    buffer_write(_string_buffer, buffer_u8, 26);
                
                var _quad_l = ds_grid_get(_vbuff_pos_grid, _i, UnknownEnum.Value_0);
                var _quad_t = ds_grid_get(_vbuff_pos_grid, _i, UnknownEnum.Value_1);
                var _quad_r = ds_grid_get(_vbuff_pos_grid, _i, UnknownEnum.Value_2);
                var _quad_b = ds_grid_get(_vbuff_pos_grid, _i, UnknownEnum.Value_3);
                var _material = ds_grid_get(_glyph_grid, _i, UnknownEnum.Value_10);
                var _quad_u0 = ds_grid_get(_glyph_grid, _i, UnknownEnum.Value_11);
                var _quad_v0 = ds_grid_get(_glyph_grid, _i, UnknownEnum.Value_13);
                var _quad_u1 = ds_grid_get(_glyph_grid, _i, UnknownEnum.Value_12);
                var _quad_v1 = ds_grid_get(_glyph_grid, _i, UnknownEnum.Value_14);
                var _half_w = 0.5 * ds_grid_get(_glyph_grid, _i, UnknownEnum.Value_4);
                var _half_h = 0.5 * ds_grid_get(_glyph_grid, _i, UnknownEnum.Value_5);
                
                if (_material != _material_prev)
                {
                    _material_prev = _material;
                    _vbuff = _page_data.__get_vertex_buffer(_material);
                }
                
                if (_bezier_do)
                {
                    var _quad_cx = _quad_l + _half_w;
                    var _quad_cy = _quad_t + _half_h;
                    var _bezier_search_d1, _bezier_search_d0, _bezier_search_index;
                    
                    if (_quad_cy > _bezier_prev_cy)
                    {
                        _bezier_search_index = 0;
                        _bezier_search_d0 = 0;
                        _bezier_search_d1 = _bezier_lengths[1];
                    }
                    
                    _bezier_prev_cy = _quad_cy;
                    var _bezier_param;
                    
                    while (true)
                    {
                        if (_quad_cx <= _bezier_search_d1)
                        {
                            _bezier_param = _bezier_param_increment * (((_quad_cx - _bezier_search_d0) / (_bezier_search_d1 - _bezier_search_d0)) + _bezier_search_index);
                            break;
                        }
                        
                        _bezier_search_index++;
                        
                        if (_bezier_search_index >= 19)
                        {
                            _bezier_param = 1;
                            break;
                        }
                        
                        _bezier_search_d0 = _bezier_search_d1;
                        _bezier_search_d1 = _bezier_lengths[_bezier_search_index + 1];
                    }
                    
                    _quad_l = _bezier_param;
                    _quad_r = _bezier_param;
                    _quad_t = _quad_cy;
                    _quad_b = _quad_cy;
                }
                
                vertex_position_3d(_vbuff, _quad_l, _quad_t, _packed_indexes);
                vertex_normal(_vbuff, 0, _glyph_sprite_data, _glyph_effect_flags);
                vertex_argb(_vbuff, _write_colour);
                vertex_texcoord(_vbuff, _quad_u0, _quad_v0);
                vertex_float2(_vbuff, _half_w, _half_h);
                vertex_position_3d(_vbuff, _quad_r, _quad_b, _packed_indexes);
                vertex_normal(_vbuff, 0, _glyph_sprite_data, _glyph_effect_flags);
                vertex_argb(_vbuff, _write_colour);
                vertex_texcoord(_vbuff, _quad_u1, _quad_v1);
                vertex_float2(_vbuff, -_half_w, -_half_h);
                vertex_position_3d(_vbuff, _quad_l, _quad_b, _packed_indexes);
                vertex_normal(_vbuff, 0, _glyph_sprite_data, _glyph_effect_flags);
                vertex_argb(_vbuff, _write_colour);
                vertex_texcoord(_vbuff, _quad_u0, _quad_v1);
                vertex_float2(_vbuff, _half_w, -_half_h);
                vertex_position_3d(_vbuff, _quad_r, _quad_b, _packed_indexes);
                vertex_normal(_vbuff, 0, _glyph_sprite_data, _glyph_effect_flags);
                vertex_argb(_vbuff, _write_colour);
                vertex_texcoord(_vbuff, _quad_u1, _quad_v1);
                vertex_float2(_vbuff, -_half_w, -_half_h);
                vertex_position_3d(_vbuff, _quad_l, _quad_t, _packed_indexes);
                vertex_normal(_vbuff, 0, _glyph_sprite_data, _glyph_effect_flags);
                vertex_argb(_vbuff, _write_colour);
                vertex_texcoord(_vbuff, _quad_u0, _quad_v0);
                vertex_float2(_vbuff, _half_w, _half_h);
                vertex_position_3d(_vbuff, _quad_r, _quad_t, _packed_indexes);
                vertex_normal(_vbuff, 0, _glyph_sprite_data, _glyph_effect_flags);
                vertex_argb(_vbuff, _write_colour);
                vertex_texcoord(_vbuff, _quad_u1, _quad_v0);
                vertex_float2(_vbuff, -_half_w, _half_h);
            }
            
            _i++;
        }
        
        if (_region_name != undefined)
        {
            _func_region_pop(_page_data, _region_name, _region_start, _i - 1);
            _region_start = _i;
        }
        
        if (_text_getter)
        {
            buffer_write(_string_buffer, buffer_u8, 0);
            buffer_seek(_string_buffer, buffer_seek_start, 0);
            _page_data.__text = buffer_read(_string_buffer, buffer_string);
        }
        
        _p++;
    }
    
    var _control_delta = ds_grid_get(_glyph_grid, _i - 1, UnknownEnum.Value_15) - _control_index;
    
    repeat (_control_delta)
    {
        if (ds_grid_get(_control_grid, _control_index, UnknownEnum.Value_0) == UnknownEnum.Value_0)
        {
            var _character_index = _packed_indexes div 1000;
            var _line_index = (_packed_indexes % 1000) + ((_character_index > 0) ? 1 : 0);
            var _event = ds_grid_get(_control_grid, _control_index, UnknownEnum.Value_1);
            _event.position = _character_index;
            _event.character_index = _character_index;
            _event.line_index = _line_index;
            var _event_array = variable_struct_get(_page_char_events_dict, _character_index);
            
            if (!is_array(_event_array))
            {
                _event_array = [];
                variable_struct_set(_page_char_events_dict, _character_index, _event_array);
            }
            
            array_push(_event_array, _event);
            _event_array = variable_struct_get(_page_line_events_dict, _line_index);
            
            if (!is_array(_event_array))
            {
                _event_array = [];
                variable_struct_set(_page_line_events_dict, _line_index, _event_array);
            }
            
            array_push(_event_array, _event);
        }
        
        _control_index++;
    }
    
    __finalize_vertex_buffers(_element.__freeze);
}

enum UnknownEnum
{
    Value_0,
    Value_1,
    Value_2,
    Value_3,
    Value_4,
    Value_5,
    Value_6,
    Value_10 = 10,
    Value_11,
    Value_12,
    Value_13,
    Value_14,
    Value_15,
    Value_16,
    Value_17,
    Value_18,
    Value_19
}
