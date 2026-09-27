:[0]
b [22]

> gml_Script___scribble_play_sound (locals=1, argc=3)
:[1]
isstaticok.e
bt [3]

:[2]
setstatic.e
call.i gml_Script___scribble_system(argc=0)
pushi.e -9
push.v [stacktop]self.__state
pushi.e -9
push.v [stacktop]self.__sound_whitelist_map
pop.v.v static._sound_whitelist_map
call.i gml_Script___scribble_system(argc=0)
pushi.e -9
push.v [stacktop]self.__external_sound_map
pop.v.v static._external_sound_map

:[3]
push.v arg.argument0
call.i is_string(argc=1)
conv.v.b
bf [7]

:[4]
push.v arg.argument0
push.v static._external_sound_map
call.i ds_map_find_value(argc=2)
chknullish.e
bf [6]

:[5]
popz.v
push.v arg.argument0
call.i asset_get_index(argc=1)

:[6]
pop.v.v arg.argument0

:[7]
push.v arg.argument0
call.i audio_exists(argc=1)
conv.v.b
not.b
bf [9]

:[8]
pushi.e -1
conv.i.v
ret.v

:[9]
pushi.e 1
conv.i.b
bt [13]

:[10]
push.v arg.argument0
push.v static._sound_whitelist_map
call.i ds_map_find_value(argc=2)
chknullish.e
bf [12]

:[11]
popz.v
pushi.e 0
conv.b.v

:[12]
conv.v.b
b [14]

:[13]
push.e 1

:[14]
bf [20]

:[15]
push.i [function]audio_play_sound
pop.v.i local._func
pushloc.v local._func
call.i is_callable(argc=1)
conv.v.b
bf [18]

:[16]
push.v arg.argument2
pushi.e 0
conv.i.v
push.v arg.argument1
pushi.e 0
conv.b.v
pushi.e 1
conv.i.v
push.v arg.argument0
call.i @@This@@(argc=0)
pushloc.v local._func
callv.v 6
ret.v

:[17]
b [19]

:[18]
pushi.e -1
conv.i.v
ret.v

:[19]
b [21]

:[20]
pushi.e -1
conv.i.v
ret.v

:[21]
exit.i

:[22]
push.i [function]gml_Script___scribble_play_sound
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pop.v.v self.__scribble_play_sound
popz.v

:[end]