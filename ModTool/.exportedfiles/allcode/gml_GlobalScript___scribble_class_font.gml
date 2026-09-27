function __scribble_class_font(arg0, arg1, arg2, arg3, arg4) constructor
{
    static _font_data_map = __scribble_system().__font_data_map;
    
    static __copy_to = function(arg0, arg1)
    {
        var _names = variable_struct_get_names(self);
        var _i = 0;
        
        repeat (array_length(_names))
        {
            var _name = _names[_i];
            
            if (_name == "__glyphs_map")
                ds_map_copy(arg0.__glyphs_map, __glyphs_map);
            else if (_name == "__glyph_data_grid")
                ds_grid_copy(arg0.__glyph_data_grid, __glyph_data_grid);
            else if (_name != "__name" && _name != "__from_bundle" && (arg1 || (_name != "__style_regular" && _name != "__style_bold" && _name != "__style_italic" && _name != "__style_bold_italic")))
                variable_struct_set(arg0, _name, variable_struct_get(self, _name));
            
            _i++;
        }
    };
    
    static __clear = function()
    {
        if (!__superfont)
            __scribble_error("Cannot clear non-superfont fonts");
        
        ds_map_clear(__glyphs_map);
        __height = 0;
        __texels_valid = false;
    };
    
    static __ensure_material_textures_fetched = function()
    {
        var _glyph_data_grid = __glyph_data_grid;
        var _glyph_count = ds_grid_width(_glyph_data_grid);
        var _i = 0;
        
        repeat (_glyph_count)
        {
            var _material = ds_grid_get(_glyph_data_grid, _i, UnknownEnum.Value_11);
            var _texture_index = _material.__texture;
            
            if (_texture_index != undefined)
                texture_prefetch(_texture_index);
            
            _i++;
        }
    };
    
    static __ensure_texel_data = function()
    {
        if (__texels_valid)
            exit;
        
        var _glyph_data_grid = __glyph_data_grid;
        var _glyph_count = ds_grid_width(_glyph_data_grid);
        
        if (!ds_grid_value_exists(_glyph_data_grid, 0, UnknownEnum.Value_16, _glyph_count - 1, UnknownEnum.Value_16, false))
        {
            __texels_valid = true;
            exit;
        }
        
        var _all_ready = true;
        var _i = 0;
        
        repeat (_glyph_count)
        {
            if (!ds_grid_get(_glyph_data_grid, _i, UnknownEnum.Value_16))
            {
                var _material = ds_grid_get(_glyph_data_grid, _i, UnknownEnum.Value_11);
                var _texture_index = _material.__texture;
                
                if (_texture_index != undefined && texture_is_ready(_texture_index))
                {
                    ds_grid_set(_glyph_data_grid, _i, UnknownEnum.Value_16, true);
                    var _texel_w = texture_get_texel_width(_texture_index);
                    var _texel_h = texture_get_texel_height(_texture_index);
                    ds_grid_set(_glyph_data_grid, _i, UnknownEnum.Value_12, ds_grid_get(_glyph_data_grid, _i, UnknownEnum.Value_12) * _texel_w);
                    ds_grid_set(_glyph_data_grid, _i, UnknownEnum.Value_14, ds_grid_get(_glyph_data_grid, _i, UnknownEnum.Value_14) * _texel_h);
                    ds_grid_set(_glyph_data_grid, _i, UnknownEnum.Value_13, ds_grid_get(_glyph_data_grid, _i, UnknownEnum.Value_13) * _texel_w);
                    ds_grid_set(_glyph_data_grid, _i, UnknownEnum.Value_15, ds_grid_get(_glyph_data_grid, _i, UnknownEnum.Value_15) * _texel_h);
                }
                else
                {
                    _all_ready = false;
                }
            }
            
            _i++;
        }
        
        if (_all_ready)
            __texels_valid = true;
    };
    
    static __destroy = function()
    {
        ds_map_destroy(__glyphs_map);
        ds_grid_destroy(__glyph_data_grid);
        ds_map_delete(_font_data_map, __name);
        
        if (__source_sprite != undefined)
        {
            sprite_delete(__source_sprite);
            __source_sprite = undefined;
        }
    };
    
    __name = arg0;
    __render_type = arg2;
    __from_bundle = arg3;
    __texels_valid = arg4;
    ds_map_set(_font_data_map, arg0, self);
    __glyph_data_grid = ds_grid_create(arg1, UnknownEnum.Value_17);
    __glyphs_map = ds_map_create();
    __kerning_map = ds_map_create();
    __is_krutidev = false;
    __bilinear = (__render_type == 2) ? true : undefined;
    __superfont = false;
    __runtime = false;
    __source_sprite = undefined;
    __remap = undefined;
    __scale = 1;
    __height = 0;
    __ascender = 0;
    __ascender_offset = 0;
    __halign_offset_array = [0, 0, 0, 0, 0, 0, 0];
    __valign_offset_array = [0, 0, 0, 0, 0, 0];
    __style_regular = undefined;
    __style_bold = undefined;
    __style_italic = undefined;
    __style_bold_italic = undefined;
}

enum UnknownEnum
{
    Value_11 = 11,
    Value_12,
    Value_13,
    Value_14,
    Value_15,
    Value_16,
    Value_17
}
