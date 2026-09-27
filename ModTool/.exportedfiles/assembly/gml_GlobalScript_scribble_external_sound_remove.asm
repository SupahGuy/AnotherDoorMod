:[0]
b [4]

> gml_Script_scribble_external_sound_remove (locals=0, argc=1)
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
call.i ds_map_delete(argc=2)
popz.v
exit.i

:[4]
push.i [function]gml_Script_scribble_external_sound_remove
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pop.v.v self.scribble_external_sound_remove
popz.v

:[end]