:[0]
b [5]

> gml_Script_scribble_external_sound_exists (locals=0, argc=1)
:[1]
isstaticok.e
bt [3]

:[2]
setstatic.e
call.i gml_Script___scribble_system(argc=0)
pushi.e -9
push.v [stacktop]self.__external_sound_map
pop.v.v static._external_sound_map

:[3]
push.v arg.argument0
push.v static._external_sound_map
call.i ds_map_exists(argc=2)
ret.v

:[4]
exit.i

:[5]
push.i [function]gml_Script_scribble_external_sound_exists
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pop.v.v self.scribble_external_sound_exists
popz.v

:[end]