function __scribble_font_add_sprite(arg0, arg1, arg2, arg3)
{
    var _spritefont = font_add_sprite(arg0, arg1, arg2, arg3);
    __scribble_font_add_sprite_common(arg0, _spritefont, arg2, arg3);
    return _spritefont;
}

function __scribble_font_add_sprite_ext(arg0, arg1, arg2, arg3)
{
    var _spritefont = font_add_sprite_ext(arg0, arg1, arg2, arg3);
    __scribble_font_add_sprite_common(arg0, _spritefont, arg2, arg3);
    return _spritefont;
}

function __scribble_font_add_sprite_common(arg0, arg1, arg2, arg3)
{
    static _font_data_map = __scribble_system().__font_data_map;
    
    var _font_info = font_get_info(arg1);
    var _sprite_name = sprite_get_name(arg0);
    
    if (ds_map_exists(_font_data_map, _sprite_name))
    {
        __scribble_trace("Warning! A spritefont for \"", _sprite_name, "\" has already been added. Destroying the old spritefont and creating a new one");
        (ds_map_find_value(_font_data_map, _sprite_name)).__destroy();
    }
    
    var _is_krutidev = __scribble_asset_is_krutidev(arg0, 1);
    var _global_glyph_bidi_map = __scribble_system().__glyph_data.__bidi_map;
    var _scribble_state = __scribble_system().__state;
    
    if (_scribble_state.__default_font == undefined)
        _scribble_state.__default_font = _sprite_name;
    
    var _sprite_width = sprite_get_width(arg0);
    var _sprite_height = sprite_get_height(arg0);
    var _sprite_info = sprite_get_info(arg0);
    var _sprite_frames = _sprite_info.frames;
    var _sprite_x_offset = 0;
    var _sprite_y_offset = 0;
    _sprite_x_offset += sprite_get_xoffset(arg0);
    _sprite_y_offset += sprite_get_yoffset(arg0);
    var _info_glyphs_dict = _font_info.glyphs;
    var _info_glyph_names = variable_struct_get_names(_info_glyphs_dict);
    var _size = array_length(_info_glyph_names);
    var _font_data = new __scribble_class_font(_sprite_name, _size, 0, undefined, true);
    var _font_glyphs_map = _font_data.__glyphs_map;
    var _font_glyph_data_grid = _font_data.__glyph_data_grid;
    
    if (_is_krutidev)
        _font_data.__is_krutidev = true;
    
    ds_grid_set_region(_font_glyph_data_grid, 0, UnknownEnum.Value_10, _size - 1, UnknownEnum.Value_10, 1);
    ds_grid_set_region(_font_glyph_data_grid, 0, UnknownEnum.Value_16, _size - 1, UnknownEnum.Value_16, true);
    ds_map_set(_font_data_map, font_get_name(arg1), _font_data);
    var _i = 0;
    
    repeat (_size)
    {
        var _glyph = _info_glyph_names[_i];
        var _unicode = ord(_glyph);
        var _image = variable_struct_get(_info_glyphs_dict, _glyph).char;
        var _uvs = sprite_get_uvs(arg0, _image);
        
        if (_unicode == 32)
        {
            var _space_width;
            
            if (arg2)
            {
                if (_image >= array_length(_sprite_frames))
                    _space_width = ((1 + sprite_get_bbox_right(arg0)) - sprite_get_bbox_left(arg0)) + arg3;
                else
                    _space_width = _sprite_frames[_image].crop_width + arg3;
            }
            else
            {
                _space_width = _sprite_width + arg3;
            }
            
            ds_grid_set(_font_glyph_data_grid, _i, UnknownEnum.Value_0, _glyph);
            ds_grid_set(_font_glyph_data_grid, _i, UnknownEnum.Value_1, _unicode);
            ds_grid_set(_font_glyph_data_grid, _i, UnknownEnum.Value_2, UnknownEnum.Value_0);
            ds_grid_set(_font_glyph_data_grid, _i, UnknownEnum.Value_3, -_sprite_x_offset);
            ds_grid_set(_font_glyph_data_grid, _i, UnknownEnum.Value_4, -_sprite_y_offset);
            ds_grid_set(_font_glyph_data_grid, _i, UnknownEnum.Value_5, _space_width);
            ds_grid_set(_font_glyph_data_grid, _i, UnknownEnum.Value_6, _sprite_height);
            ds_grid_set(_font_glyph_data_grid, _i, UnknownEnum.Value_7, _sprite_height);
            ds_grid_set(_font_glyph_data_grid, _i, UnknownEnum.Value_8, _space_width);
            ds_grid_set(_font_glyph_data_grid, _i, UnknownEnum.Value_9, 0);
            ds_grid_set(_font_glyph_data_grid, _i, UnknownEnum.Value_11, __scribble_sprite_get_material(arg0, 0));
            ds_grid_set(_font_glyph_data_grid, _i, UnknownEnum.Value_12, 0);
            ds_grid_set(_font_glyph_data_grid, _i, UnknownEnum.Value_14, 0);
            ds_grid_set(_font_glyph_data_grid, _i, UnknownEnum.Value_13, 0);
            ds_grid_set(_font_glyph_data_grid, _i, UnknownEnum.Value_15, 0);
            ds_map_set(_font_glyphs_map, _unicode, _i);
        }
        else
        {
            var _image_info = _sprite_frames[_image];
            var _material = __scribble_sprite_get_material(arg0, _image);
            var _x_offset, _glyph_separation;
            
            if (arg2)
            {
                _x_offset = 0;
                _glyph_separation = _image_info.crop_width + arg3;
            }
            else
            {
                _x_offset = _image_info.x_offset;
                _glyph_separation = _sprite_width + arg3;
            }
            
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
            
            if (_is_krutidev)
            {
                if (_bidi != UnknownEnum.Value_0)
                {
                    _bidi = UnknownEnum.Value_5;
                    _unicode += 65535;
                }
            }
            
            var _w = _image_info.crop_width;
            var _h = _image_info.crop_height;
            ds_grid_set(_font_glyph_data_grid, _i, UnknownEnum.Value_0, _glyph);
            ds_grid_set(_font_glyph_data_grid, _i, UnknownEnum.Value_1, _unicode);
            ds_grid_set(_font_glyph_data_grid, _i, UnknownEnum.Value_2, _bidi);
            ds_grid_set(_font_glyph_data_grid, _i, UnknownEnum.Value_3, _x_offset - _sprite_x_offset);
            ds_grid_set(_font_glyph_data_grid, _i, UnknownEnum.Value_4, _image_info.y_offset - _sprite_y_offset);
            ds_grid_set(_font_glyph_data_grid, _i, UnknownEnum.Value_5, _w);
            ds_grid_set(_font_glyph_data_grid, _i, UnknownEnum.Value_6, _h);
            ds_grid_set(_font_glyph_data_grid, _i, UnknownEnum.Value_7, _sprite_height);
            ds_grid_set(_font_glyph_data_grid, _i, UnknownEnum.Value_8, _glyph_separation);
            ds_grid_set(_font_glyph_data_grid, _i, UnknownEnum.Value_9, -_x_offset);
            ds_grid_set(_font_glyph_data_grid, _i, UnknownEnum.Value_11, _material);
            ds_grid_set(_font_glyph_data_grid, _i, UnknownEnum.Value_12, _uvs[0]);
            ds_grid_set(_font_glyph_data_grid, _i, UnknownEnum.Value_14, _uvs[1]);
            ds_grid_set(_font_glyph_data_grid, _i, UnknownEnum.Value_13, _uvs[2]);
            ds_grid_set(_font_glyph_data_grid, _i, UnknownEnum.Value_15, _uvs[3]);
            ds_map_set(_font_glyphs_map, _unicode, _i);
        }
        
        _i++;
    }
    
    var _space_index = ds_map_find_value(_font_glyphs_map, 32);
    _font_data.__height = ds_grid_get(_font_glyph_data_grid, _space_index, UnknownEnum.Value_6);
    _font_data.__ascender = _font_data.__height;
    _font_data.__ascender_offset = 0;
    return arg1;
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
