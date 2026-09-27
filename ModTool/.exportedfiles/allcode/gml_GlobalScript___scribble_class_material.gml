function __scribble_class_material(arg0, arg1, arg2, arg3, arg4, arg5, arg6) constructor
{
    static __duplicate_material_with_new_bilinear = function(arg0)
    {
        if (__bilinear == arg0)
            return self;
        
        return __scribble_get_material(__debug_font_name, __texture, __render_type, __sdf_pxrange, __sdf_thickness_offset, arg0);
    };
    
    __key = arg0;
    __debug_font_name = arg1;
    __texture = arg2;
    __texel_width = texture_get_texel_width(arg2);
    __texel_height = texture_get_texel_height(arg2);
    __render_type = arg3;
    __sdf_pxrange = arg4;
    __sdf_thickness_offset = arg5;
    __bilinear = arg6;
}
