:[0]
b [5]

> gml_Script___scribble_font_add_from_bundle (locals=8, argc=1)
:[1]
isstaticok.e
bt [3]

:[2]
setstatic.e
call.i gml_Script___scribble_system(argc=0)
pushi.e -9
push.v [stacktop]self.__font_to_texture_group_map
pop.v.v static._font_to_texture_group_map

:[3]
push.v arg.argument0
call.i real(argc=1)
push.v static._font_to_texture_group_map
call.i ds_map_find_value(argc=2)
pop.v.v local._texture_group
push.v arg.argument0
call.i font_get_name(argc=1)
pop.v.v local._name
pushloc.v local._name
call.i asset_get_index(argc=1)
pop.v.v local._asset
pushloc.v local._asset
call.i font_get_uvs(argc=1)
pop.v.v local._texture_uvs
push.v arg.argument0
call.i font_get_info(argc=1)
pop.v.v local._font_info
pushi.e 6
conv.i.v
push.v arg.argument0
call.i gml_Script___scribble_asset_is_krutidev(argc=2)
pop.v.v local._is_krutidev
call.i draw_get_font(argc=0)
pop.v.v local._old_font
push.v arg.argument0
call.i draw_set_font(argc=1)
popz.v
push.s " "@3157
conv.s.v
call.i string_height(argc=1)
pop.v.v local._line_height
pushloc.v local._old_font
call.i draw_set_font(argc=1)
popz.v
pushi.e 1
conv.b.v
pushloc.v local._is_krutidev
pushloc.v local._line_height
pushloc.v local._font_info
pushloc.v local._texture_uvs
pushloc.v local._texture_group
pushloc.v local._name
call.i gml_Script___scribble_font_add_from_info(argc=7)
ret.v

:[4]
exit.i

:[5]
push.i [function]gml_Script___scribble_font_add_from_bundle
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pop.v.v self.__scribble_font_add_from_bundle
popz.v

:[end]