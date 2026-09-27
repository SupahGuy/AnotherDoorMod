:[0]
b [7]

> gml_Script___scribble_sprite_get_material (locals=2, argc=2)
:[1]
isstaticok.e
bt [3]

:[2]
setstatic.e
call.i gml_Script___scribble_system(argc=0)
pushi.e -9
push.v [stacktop]self.__sprite_texture_material_map
pop.v.v static._sprite_texture_material_map

:[3]
push.v arg.argument1
push.v arg.argument0
call.i gml_Script___scribble_sprite_get_texture_index(argc=2)
pop.v.v local._texture_index
pushloc.v local._texture_index
push.v static._sprite_texture_material_map
call.i ds_map_find_value(argc=2)
pop.v.v local._material
pushloc.v local._material
pushbltn.v builtin.undefined
cmp.v.v EQ
bf [5]

:[4]
pushbltn.v builtin.undefined
pushbltn.v builtin.undefined
pushbltn.v builtin.undefined
pushi.e 0
conv.i.v
pushloc.v local._texture_index
push.v arg.argument0
call.i sprite_get_name(argc=1)
call.i gml_Script___scribble_get_material(argc=6)
pop.v.v local._material
pushloc.v local._material
pushloc.v local._texture_index
push.v static._sprite_texture_material_map
call.i ds_map_set(argc=3)
popz.v

:[5]
pushloc.v local._material
ret.v

:[6]
exit.i

:[7]
push.i [function]gml_Script___scribble_sprite_get_material
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pop.v.v self.__scribble_sprite_get_material
popz.v

:[end]