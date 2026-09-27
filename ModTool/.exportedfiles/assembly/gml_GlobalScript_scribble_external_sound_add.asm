:[0]
b [8]

> gml_Script_scribble_external_sound_add (locals=0, argc=2)
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
push.v arg.argument1
push.v static._external_sound_map
call.i ds_map_exists(argc=2)
conv.v.b
bf [5]

:[4]
push.s "\" already exists"@6636
conv.s.v
push.v arg.argument1
push.s "External sound alias \""@7794
conv.s.v
call.i gml_Script___scribble_error(argc=3)
popz.v

:[5]
push.v arg.argument0
call.i audio_exists(argc=1)
conv.v.b
not.b
bf [7]

:[6]
push.s " could not be found"@7795
conv.s.v
push.v arg.argument0
push.s "Audio asset "@7796
conv.s.v
call.i gml_Script___scribble_error(argc=3)
popz.v

:[7]
push.v arg.argument0
push.v arg.argument1
push.v static._external_sound_map
call.i ds_map_set(argc=3)
popz.v
exit.i

:[8]
push.i [function]gml_Script_scribble_external_sound_add
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pop.v.v self.scribble_external_sound_add
popz.v

:[end]