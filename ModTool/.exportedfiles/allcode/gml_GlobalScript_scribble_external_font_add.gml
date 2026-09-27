function scribble_external_font_add(arg0, arg1, arg2, arg3 = undefined, arg4 = false)
{
    var _source_font_info = sprite_get_info(arg0);
    var _frame_info = _source_font_info.frames[arg1];
    var _texture_index = _frame_info.texture;
    texture_prefetch(_texture_index);
    var _texture_width = texture_get_width(_texture_index);
    var _texture_height = texture_get_height(_texture_index);
    var _texture_uvs = [_frame_info.x / _texture_width, _frame_info.y / _texture_height, _frame_info.w / _texture_width, _frame_info.h / _texture_height];
    
    if (arg3 == undefined)
        arg3 = arg2.name;
    
    var _font_info = 
    {
        texture: _texture_index,
        glyphs: {},
        ascender: arg2.ascender,
        ascenderOffset: arg2.ascenderOffset,
        sdfEnabled: arg2.usesSDF,
        sdfSpread: arg2.sdfSpread,
        size: arg2.size
    };
    var _json_glyphs_dict = arg2.glyphs;
    var _output_glyphs_dict = _font_info.glyphs;
    var _key_array = variable_struct_get_names(_json_glyphs_dict);
    var _i = 0;
    
    repeat (array_length(_key_array))
    {
        var _key = _key_array[_i];
        var _json_glyph = variable_struct_get(_json_glyphs_dict, _key);
        var _output_glyph = variable_clone(_json_glyph);
        var _character = _output_glyph.character;
        variable_struct_remove(_output_glyph, "character");
        _output_glyph.char = _character;
        variable_struct_set(_output_glyphs_dict, chr(_character), _output_glyph);
        _i++;
    }
    
    __scribble_font_add_from_info(arg3, undefined, _texture_uvs, _font_info, arg2.lineHeight, arg4, false);
    return arg3;
}
