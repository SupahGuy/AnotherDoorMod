:[0]
b [7]

> gml_Script___scribble_get_material (locals=2, argc=6)
:[1]
isstaticok.e
bt [3]

:[2]
setstatic.e
call.i gml_Script___scribble_system(argc=0)
pushi.e -9
push.v [stacktop]self.__material_map
pop.v.v static._material_map

:[3]
push.v arg.argument5
push.v arg.argument4
push.v arg.argument3
push.v arg.argument2
push.v arg.argument1
call.i gml_Script___scribble_make_material_key(argc=5)
pop.v.v local._key
pushloc.v local._key
push.v static._material_map
call.i ds_map_find_value(argc=2)
pop.v.v local._material
pushloc.v local._material
pushbltn.v builtin.undefined
cmp.v.v EQ
bf [5]

:[4]
push.v arg.argument5
push.v arg.argument4
push.v arg.argument3
push.v arg.argument2
push.v arg.argument1
push.v arg.argument0
pushloc.v local._key
push.i [function]gml_Script___scribble_class_material
conv.i.v
call.i @@NewGMLObject@@(argc=8)
pop.v.v local._material
pushloc.v local._material
pushloc.v local._key
push.v static._material_map
call.i ds_map_set(argc=3)
popz.v

:[5]
pushloc.v local._material
ret.v

:[6]
exit.i

:[7]
push.i [function]gml_Script___scribble_get_material
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pop.v.v self.__scribble_get_material
popz.v

:[end]