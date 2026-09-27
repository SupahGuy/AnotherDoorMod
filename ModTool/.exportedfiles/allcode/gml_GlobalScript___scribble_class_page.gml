function __scribble_class_page() constructor
{
    static __scribble_state = __scribble_system().__state;
    static __gc_vbuff_refs = __scribble_system().__cache_state.__gc_vbuff_refs;
    static __gc_vbuff_ids = __scribble_system().__cache_state.__gc_vbuff_ids;
    static __gc_grid_refs = __scribble_system().__cache_state.__gc_grid_refs;
    static __gc_grid_ids = __scribble_system().__cache_state.__gc_grid_ids;
    
    static __submit = function(arg0)
    {
        static _u_vTexel = shader_get_uniform(__shd_scribble, "u_vTexel");
        static _u_fSDFRange = shader_get_uniform(__shd_scribble, "u_fSDFRange");
        static _u_fSDFThicknessOffset = shader_get_uniform(__shd_scribble, "u_fSDFThicknessOffset");
        static _u_fSecondDraw = shader_get_uniform(__shd_scribble, "u_fSecondDraw");
        static _u_fRenderType = shader_get_uniform(__shd_scribble, "u_fRenderType");
        
        if (true && !__frozen && __created_frame < __scribble_state.__frames)
            __freeze();
        
        var _i = 0;
        
        repeat (array_length(__vertex_buffer_array))
        {
            var _data = __vertex_buffer_array[_i];
            var _material = _data.__material;
            var _bilinear = _material.__bilinear;
            var _old_tex_filter;
            
            if (_bilinear != undefined)
            {
                _old_tex_filter = gpu_get_tex_filter();
                gpu_set_tex_filter(_bilinear);
            }
            
            if (_material.__render_type == 0)
            {
                shader_set_uniform_f(_u_fRenderType, 0);
                vertex_submit(_data.__vertex_buffer, pr_trianglelist, _material.__texture);
            }
            else if (_material.__render_type == 2)
            {
                shader_set_uniform_f(_u_fRenderType, 2);
                shader_set_uniform_f(_u_vTexel, _material.__texel_width, _material.__texel_height);
                shader_set_uniform_f(_u_fSDFRange, _material.__sdf_pxrange ?? 0);
                shader_set_uniform_f(_u_fSDFThicknessOffset, __scribble_state.__sdf_thickness_offset + (_material.__sdf_thickness_offset ?? 0));
                vertex_submit(_data.__vertex_buffer, pr_trianglelist, _material.__texture);
                
                if (arg0)
                {
                    shader_set_uniform_f(_u_fSecondDraw, 1);
                    vertex_submit(_data.__vertex_buffer, pr_trianglelist, _material.__texture);
                    shader_set_uniform_f(_u_fSecondDraw, 0);
                }
            }
            else if (_material.__render_type == 1)
            {
                shader_set_uniform_f(_u_fRenderType, 1);
                vertex_submit(_data.__vertex_buffer, pr_trianglelist, _material.__texture);
                
                if (arg0)
                {
                    shader_set_uniform_f(_u_fSecondDraw, 1);
                    vertex_submit(_data.__vertex_buffer, pr_trianglelist, _material.__texture);
                    shader_set_uniform_f(_u_fSecondDraw, 0);
                }
            }
            
            if (_bilinear != undefined)
                gpu_set_tex_filter(_old_tex_filter);
            
            _i++;
        }
    };
    
    static __freeze = function()
    {
        if (!__frozen)
        {
            var _i = 0;
            
            repeat (array_length(__vertex_buffer_array))
            {
                vertex_freeze(__vertex_buffer_array[_i].__vertex_buffer);
                _i++;
            }
            
            __frozen = true;
        }
    };
    
    static __get_line_data = function(arg0)
    {
        return __line_data_array[clamp(arg0, 0, __line_count - 1)];
    };
    
    static __get_glyph_data = function(arg0)
    {
        if (arg0 < 0)
        {
            return 
            {
                unicode: 0,
                left: ds_grid_get(__glyph_grid, 0, UnknownEnum.Value_1),
                top: ds_grid_get(__glyph_grid, 0, UnknownEnum.Value_2),
                right: ds_grid_get(__glyph_grid, 0, UnknownEnum.Value_1),
                bottom: ds_grid_get(__glyph_grid, 0, UnknownEnum.Value_4),
                y_offset: ds_grid_get(__glyph_grid, 0, UnknownEnum.Value_5)
            };
        }
        else if (arg0 >= (__glyph_count - 1))
        {
            arg0 = __glyph_count - 2;
            return 
            {
                unicode: 0,
                left: ds_grid_get(__glyph_grid, arg0, UnknownEnum.Value_3),
                top: ds_grid_get(__glyph_grid, arg0, UnknownEnum.Value_2),
                right: ds_grid_get(__glyph_grid, arg0, UnknownEnum.Value_3),
                bottom: ds_grid_get(__glyph_grid, arg0, UnknownEnum.Value_4),
                y_offset: ds_grid_get(__glyph_grid, arg0, UnknownEnum.Value_5)
            };
        }
        else
        {
            return 
            {
                unicode: ds_grid_get(__glyph_grid, arg0, UnknownEnum.Value_0),
                left: ds_grid_get(__glyph_grid, arg0, UnknownEnum.Value_1),
                top: ds_grid_get(__glyph_grid, arg0, UnknownEnum.Value_2),
                right: ds_grid_get(__glyph_grid, arg0, UnknownEnum.Value_3),
                bottom: ds_grid_get(__glyph_grid, arg0, UnknownEnum.Value_4),
                y_offset: ds_grid_get(__glyph_grid, arg0, UnknownEnum.Value_5)
            };
        }
    };
    
    static __get_vertex_buffer = function(arg0)
    {
        static _vertex_format = undefined;
        
        var _data = variable_struct_get(__texture_to_vertex_buffer_dict, arg0.__key);
        
        if (_data != undefined)
            return _data.__vertex_buffer;
        
        if (_vertex_format == undefined)
        {
            vertex_format_begin();
            vertex_format_add_position_3d();
            vertex_format_add_normal();
            vertex_format_add_colour();
            vertex_format_add_texcoord();
            vertex_format_add_custom(vertex_type_float2, vertex_usage_color);
            _vertex_format = vertex_format_end();
        }
        
        var _vbuff = vertex_create_buffer();
        vertex_begin(_vbuff, _vertex_format);
        array_push(__gc_vbuff_refs, weak_ref_create(self));
        array_push(__gc_vbuff_ids, _vbuff);
        _data = 
        {
            __vertex_buffer: _vbuff,
            __material: arg0
        };
        array_push(__vertex_buffer_array, _data);
        variable_struct_set(__texture_to_vertex_buffer_dict, arg0.__key, _data);
        return _vbuff;
    };
    
    static __ensure_glyph_grid = function()
    {
        if (__glyph_grid == undefined)
        {
            __glyph_grid = ds_grid_create(__glyph_count, UnknownEnum.Value_6);
            array_push(__gc_grid_refs, weak_ref_create(self));
            array_push(__gc_grid_ids, __glyph_grid);
        }
        
        return __glyph_grid;
    };
    
    static __finalize_vertex_buffers = function(arg0)
    {
        var _i = 0;
        
        repeat (array_length(__vertex_buffer_array))
        {
            var _vbuff = __vertex_buffer_array[_i].__vertex_buffer;
            vertex_end(_vbuff);
            
            if (arg0)
                vertex_freeze(_vbuff);
            
            _i++;
        }
        
        __frozen = arg0;
    };
    
    static __flush = function()
    {
        var _i = 0;
        
        repeat (array_length(__vertex_buffer_array))
        {
            var _vbuff = __vertex_buffer_array[_i].__vertex_buffer;
            vertex_delete_buffer(_vbuff);
            var _index = __scribble_array_find_index(__gc_vbuff_ids, _vbuff);
            
            if (_index >= 0)
            {
                array_delete(__gc_vbuff_refs, _index, 1);
                array_delete(__gc_vbuff_ids, _index, 1);
            }
            
            _i++;
        }
        
        __texture_to_vertex_buffer_dict = {};
        array_resize(__vertex_buffer_array, 0);
        
        if (__glyph_grid != undefined)
        {
            var _index = __scribble_array_find_index(__gc_grid_ids, __glyph_grid);
            
            if (_index >= 0)
            {
                array_delete(__gc_grid_refs, _index, 1);
                array_delete(__gc_grid_ids, _index, 1);
            }
            
            ds_grid_destroy(__glyph_grid);
            __glyph_grid = undefined;
        }
    };
    
    __text = "";
    __glyph_grid = undefined;
    __created_frame = __scribble_state.__frames;
    __frozen = undefined;
    __character_count = 0;
    __glyph_start = undefined;
    __glyph_end = undefined;
    __glyph_count = 0;
    __line_start = undefined;
    __line_end = undefined;
    __line_count = 0;
    __line_data_array = undefined;
    __width = 0;
    __height = 0;
    __min_x = 0;
    __min_y = 0;
    __max_x = 0;
    __max_y = 0;
    __vertex_buffer_array = [];
    __texture_to_vertex_buffer_dict = {};
    __char_events = {};
    __line_events = {};
    __region_array = [];
}

enum UnknownEnum
{
    Value_0,
    Value_1,
    Value_2,
    Value_3,
    Value_4,
    Value_5,
    Value_6
}
