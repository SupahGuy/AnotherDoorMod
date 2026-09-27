function __scribble_font_add_from_info(arg0, arg1, arg2, arg3, arg4 = undefined, arg5, arg6)
{
    static _font_data_map = __scribble_system().__font_data_map;
    
    if (ds_map_exists(_font_data_map, arg0))
    {
        __scribble_trace("Warning! A font for \"", arg0, "\" has already been added. Destroying the old font and creating a new one");
        (ds_map_find_value(_font_data_map, arg0)).__destroy();
    }
    
    var _scribble_state = __scribble_system().__state;
    
    if (_scribble_state.__default_font == undefined)
        _scribble_state.__default_font = arg0;
    
    try
    {
        var _global_glyph_bidi_map = __scribble_system().__glyph_data.__bidi_map;
        var _texture_index = arg3.texture;
        var _info_glyphs_dict = arg3.glyphs;
        var _ascender_offset = arg3.ascenderOffset;
        var _info_glyphs_array = [];
        var _info_glyph_names = variable_struct_get_names(_info_glyphs_dict);
        var _i = 0;
        
        repeat (array_length(_info_glyph_names))
        {
            var _glyph = _info_glyph_names[_i];
            var _struct = variable_struct_get(_info_glyphs_dict, _glyph);
            
            if (is_struct(_struct))
                array_push(_info_glyphs_array, _struct);
            else
                __scribble_trace($"Warning! Failed to access glyph data for char \"{_glyph}\" in font \"{arg0}\"");
            
            _i++;
        }
        
        var _size = array_length(_info_glyphs_array);
        var _texels_valid = true;
        
        if (arg1 != undefined && !__scribble_texture_group_get_ready(arg1))
        {
            if (texture_get_width(_texture_index) == 1 || texture_get_height(_texture_index) == 1 || texture_get_texel_width(_texture_index) == 1 || texture_get_texel_height(_texture_index) == 1)
            {
                _texels_valid = false;
                __scribble_trace("Font \"" + arg0 + "\" texture not ready, possibly a dynamic texture");
            }
        }
        
        var _texture_tw, _texture_th;
        
        if (_texels_valid)
        {
            _texture_tw = texture_get_texel_width(_texture_index);
            _texture_th = texture_get_texel_height(_texture_index);
            var _texture_w = (arg2[2] - arg2[0]) / _texture_tw;
            var _texture_h = (arg2[3] - arg2[1]) / _texture_th;
            var _texture_l = round(arg2[0] / _texture_tw);
            var _texture_t = round(arg2[1] / _texture_th);
        }
        else
        {
            _texture_tw = 1;
            _texture_th = 1;
            var _texture_l = 0;
            var _texture_t = 0;
        }
        
        var _sdf = arg3.sdfEnabled;
        var _sdf_pxrange, _sdf_thickness_offset, _sdf_offset, _sdf_height_offset;
        
        if (_sdf)
        {
            _sdf_pxrange = 2 * arg3.sdfSpread;
            _sdf_thickness_offset = 0;
            _sdf_offset = -_sdf_pxrange;
            _sdf_height_offset = -_sdf_pxrange + 2;
        }
        else
        {
            _sdf_pxrange = undefined;
            _sdf_thickness_offset = undefined;
            _sdf_offset = 0;
            _sdf_height_offset = 0;
        }
        
        var _font_data = new __scribble_class_font(arg0, _size, _sdf ? 2 : 0, arg6, _texels_valid);
        var _font_glyphs_map = _font_data.__glyphs_map;
        var _font_glyph_data_grid = _font_data.__glyph_data_grid;
        var _font_kerning_map = _font_data.__kerning_map;
        
        if (arg5)
            _font_data.__is_krutidev = true;
        
        var _material = __scribble_get_material(arg0, _texture_index, _sdf ? 2 : 0, _sdf_pxrange, _sdf_thickness_offset, _font_data.__bilinear);
        ds_grid_set_region(_font_glyph_data_grid, 0, UnknownEnum.Value_10, _size - 1, UnknownEnum.Value_10, 1);
        ds_grid_set_region(_font_glyph_data_grid, 0, UnknownEnum.Value_11, _size - 1, UnknownEnum.Value_11, _material);
        ds_grid_set_region(_font_glyph_data_grid, 0, UnknownEnum.Value_16, _size - 1, UnknownEnum.Value_16, _texels_valid);
        _i = 0;
        
        repeat (_size)
        {
            var _glyph_dict = _info_glyphs_array[_i];
            var _unicode = _glyph_dict.char;
            var _bidi;
            
            if (_unicode >= 12288 && _unicode <= 12351)
            {
                _bidi = UnknownEnum.Value_1;
            }
            else if (_unicode >= 12352 && _unicode <= 12543)
            {
                _bidi = UnknownEnum.Value_3;
            }
            else if (_unicode >= 19968 && _unicode <= 40959)
            {
                _bidi = UnknownEnum.Value_3;
            }
            else if (_unicode >= 65280 && _unicode <= 65295)
            {
                _bidi = UnknownEnum.Value_1;
            }
            else if (_unicode >= 65306 && _unicode <= 65311)
            {
                _bidi = UnknownEnum.Value_1;
            }
            else if (_unicode >= 65371 && _unicode <= 65380)
            {
                _bidi = UnknownEnum.Value_1;
            }
            else
            {
                _bidi = ds_map_find_value(_global_glyph_bidi_map, _unicode);
                
                if (_bidi == undefined)
                    _bidi = UnknownEnum.Value_4;
            }
            
            if (arg5)
            {
                if (_bidi != UnknownEnum.Value_0)
                {
                    _bidi = UnknownEnum.Value_5;
                    _unicode += 65535;
                }
            }
            
            var _kerning_array = struct_get_from_hash(_glyph_dict, variable_get_hash("kerning"));
            
            if (is_array(_kerning_array))
            {
                var _j = 0;
                
                repeat (array_length(_kerning_array) div 2)
                {
                    var _first = _kerning_array[_j];
                    
                    if (_first > 0)
                        ds_map_set(_font_kerning_map, ((_unicode & 65535) << 16) | (_first & 65535), _kerning_array[_j + 1]);
                    
                    _j += 2;
                }
            }
            
            var _char = chr(_unicode);
            var _x = struct_get_from_hash(_glyph_dict, variable_get_hash("x"));
            var _y = struct_get_from_hash(_glyph_dict, variable_get_hash("y"));
            var _w = _glyph_dict.w;
            var _h = _glyph_dict.h;
            var _xoffset = _glyph_dict.offset + (0.5 * _sdf_offset);
            var _yoffset = 0.5 * _sdf_offset;
            
            if (_sdf && false)
            {
                _x += 0;
                _y += 0;
                _w -= 0;
                _h -= 0;
                _xoffset += 0;
                _yoffset += 0;
            }
            
            var _u0 = _x * _texture_tw;
            var _v0 = _y * _texture_th;
            var _u1 = _u0 + (_w * _texture_tw);
            var _v1 = _v0 + (_h * _texture_th);
            ds_grid_set(_font_glyph_data_grid, _i, UnknownEnum.Value_0, _char);
            ds_grid_set(_font_glyph_data_grid, _i, UnknownEnum.Value_1, _unicode);
            ds_grid_set(_font_glyph_data_grid, _i, UnknownEnum.Value_2, _bidi);
            ds_grid_set(_font_glyph_data_grid, _i, UnknownEnum.Value_3, _xoffset);
            ds_grid_set(_font_glyph_data_grid, _i, UnknownEnum.Value_4, _yoffset - _ascender_offset);
            ds_grid_set(_font_glyph_data_grid, _i, UnknownEnum.Value_5, _w);
            ds_grid_set(_font_glyph_data_grid, _i, UnknownEnum.Value_6, _h);
            ds_grid_set(_font_glyph_data_grid, _i, UnknownEnum.Value_7, _h + _sdf_height_offset);
            ds_grid_set(_font_glyph_data_grid, _i, UnknownEnum.Value_8, _glyph_dict.shift);
            ds_grid_set(_font_glyph_data_grid, _i, UnknownEnum.Value_9, -_glyph_dict.offset);
            ds_grid_set(_font_glyph_data_grid, _i, UnknownEnum.Value_12, _u0);
            ds_grid_set(_font_glyph_data_grid, _i, UnknownEnum.Value_13, _u1);
            ds_grid_set(_font_glyph_data_grid, _i, UnknownEnum.Value_14, _v0);
            ds_grid_set(_font_glyph_data_grid, _i, UnknownEnum.Value_15, _v1);
            ds_map_set(_font_glyphs_map, _unicode, _i);
            _i++;
        }
        
        var _space_index = ds_map_find_value(_font_glyphs_map, 32);
        
        if (arg4 == undefined)
            arg4 = ds_grid_get(_font_glyph_data_grid, _space_index, UnknownEnum.Value_6);
        
        var _ascender = arg3.ascender;
        
        if (_ascender <= 0)
        {
            _ascender = floor(arg3.size * (4/3));
            __scribble_trace("Warning! Font \"", arg0, "\" has an invalid ascender (value is less than or equal to 0). Estimated a value of ", _ascender);
        }
        
        _font_data.__height = arg4;
        _font_data.__ascender = _ascender;
        _font_data.__ascender_offset = arg3.ascenderOffset;
        var _GM_scaling = arg3.size / ds_grid_get(_font_glyph_data_grid, _space_index, UnknownEnum.Value_6);
        
        if (_GM_scaling > 1)
        {
            __scribble_trace("Warning! Font \"", arg0, "\" may have been scaled during compilation (font size = ", arg3.size, ", space height = ", ds_grid_get(_font_glyph_data_grid, ds_map_find_value(_font_glyphs_map, 32), UnknownEnum.Value_6), ", scaling factor = ", _GM_scaling, "). Check that the font is rendering correctly. If it is not, try setting SCRIBBLE_ATTEMPT_FONT_SCALING_FIX to <false>");
            scribble_font_scale(arg0, ceil(_GM_scaling));
        }
    }
    catch (_error)
    {
        __scribble_trace(_error);
        __scribble_error("There was an error whilst reading \"", arg0, "\"\nPlease reimport the font into GameMaker and reset character ranges\nIf this issue persists, please report it");
    }
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
    Value_7,
    Value_8,
    Value_9,
    Value_10,
    Value_11,
    Value_12,
    Value_13,
    Value_14,
    Value_15,
    Value_16
}
