:[0]
b [9]

> gml_Script___scribble_class_material (locals=0, argc=7)
:[1]
call.i @@SetStatic@@(argc=0)
isstaticok.e
bt [8]

:[2]
setstatic.e
b [7]

> gml_Script___duplicate_material_with_new_bilinear@anon@1065@__scribble_class_material@__scribble_class_material (locals=0, argc=1)
:[3]
push.v builtin.__bilinear
push.v arg.argument0
cmp.v.v EQ
bf [5]

:[4]
call.i @@This@@(argc=0)
ret.v

:[5]
push.v arg.argument0
push.v builtin.__sdf_thickness_offset
push.v builtin.__sdf_pxrange
push.v builtin.__render_type
push.v builtin.__texture
push.v builtin.__debug_font_name
call.i gml_Script___scribble_get_material(argc=6)
ret.v

:[6]
exit.i

:[7]
push.i [function]gml_Script___duplicate_material_with_new_bilinear@anon@1065@__scribble_class_material@__scribble_class_material
conv.i.v
pushi.e -16
conv.i.v
call.i method(argc=2)
pop.v.v static.__duplicate_material_with_new_bilinear

:[8]
push.v arg.argument0
pop.v.v builtin.__key
push.v arg.argument1
pop.v.v builtin.__debug_font_name
push.v arg.argument2
pop.v.v builtin.__texture
push.v arg.argument2
call.i texture_get_texel_width(argc=1)
pop.v.v builtin.__texel_width
push.v arg.argument2
call.i texture_get_texel_height(argc=1)
pop.v.v builtin.__texel_height
push.v arg.argument3
pop.v.v builtin.__render_type
push.v arg.argument4
pop.v.v builtin.__sdf_pxrange
push.v arg.argument5
pop.v.v builtin.__sdf_thickness_offset
push.v arg.argument6
pop.v.v builtin.__bilinear
exit.i

:[9]
push.i [function]gml_Script___scribble_class_material
conv.i.v
call.i @@NullObject@@(argc=0)
call.i method(argc=2)
dup.v 0
pop.v.v self.__scribble_class_material
popz.v

:[end]