:[0]
b [11]

> gml_Script___scribble_sprite_get_texture_index (locals=5, argc=2)
:[1]
isstaticok.e
bt [3]

:[2]
setstatic.e
call.i gml_Script___scribble_system(argc=0)
pushi.e -9
push.v [stacktop]self.__sprite_texture_index_map
pop.v.v static._sprite_texture_index_map

:[3]
push.v arg.argument0
call.i sprite_exists(argc=1)
conv.v.b
not.b
bf [5]

:[4]
pushi.e -1
conv.i.v
ret.v

:[5]
push.v arg.argument0
call.i sprite_get_number(argc=1)
pop.v.v local._count
push.v arg.argument0
push.v static._sprite_texture_index_map
call.i ds_map_find_value(argc=2)
pop.v.v local._array
pushloc.v local._array
call.i is_array(argc=1)
conv.v.b
not.b
bf [9]

:[6]
pushloc.v local._count
call.i array_create(argc=1)
pop.v.v local._array
pushloc.v local._array
push.v arg.argument0
push.v static._sprite_texture_index_map
call.i ds_map_set(argc=3)
popz.v
push.v arg.argument0
call.i sprite_get_info(argc=1)
pop.v.v local._sprite_info
pushloc.v local._sprite_info
pushi.e -9
push.v [stacktop]self.frames
pop.v.v local._frame_array
pushi.e 0
pop.v.i local._i
pushloc.v local._count
conv.v.i
dup.i 0
push.i 0
cmp.i.i LTE
bt [8]

:[7]
pushi.e -7
pushloc.v local._i
conv.v.i
push.v [array]self._frame_array
pushi.e -9
push.v [stacktop]self.texture
pushi.e -7
pushloc.v local._i
conv.v.i
pop.v.v [array]self._array
push.v local._i
push.e 1
add.i.v
pop.v.v local._i
pushi.e 1
sub.i.i
dup.i 0
bt [7]

:[8]
popz.i

:[9]
push.v arg.argument1
pushloc.v local._count
push.v arg.argument1
pushloc.v local._count
div.v.v
call.i floor(argc=1)
mul.v.v
sub.v.v
pop.v.v arg.argument1
pushi.e -7
push.v arg.argument1
conv.v.i
push.v [array]self._array
ret.v

:[10]
exit.i

:[11]
push.i [function]gml_Script___scribble_sprite_get_texture_index
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pop.v.v self.__scribble_sprite_get_texture_index
popz.v

:[end]