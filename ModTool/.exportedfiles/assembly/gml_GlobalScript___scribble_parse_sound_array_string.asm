:[0]
b [18]

> gml_Script___scribble_parse_sound_array_string (locals=6, argc=1)
:[1]
isstaticok.e
bt [3]

:[2]
setstatic.e
call.i gml_Script___scribble_system(argc=0)
pop.v.v static._system
push.v static._system
pushi.e -9
push.v [stacktop]self.__external_sound_map
pop.v.v static._external_sound_map

:[3]
push.v arg.argument0
call.i string_trim_start(argc=1)
pop.v.v local._sound_array_string
pushi.e 1
conv.i.v
pushloc.v local._sound_array_string
call.i string_char_at(argc=2)
push.s "["@572
cmp.s.v EQ
bf [16]

:[4]
push.i 268
conv.i.v
push.i 188
conv.i.v
call.i @@try_hook@@(argc=2)
popz.v
pushloc.v local._sound_array_string
call.i json_parse(argc=1)
pop.v.v local._sound_array
b [6]

:[5]
pop.v.v local._error
call.i @@try_unhook@@(argc=0)
popz.v
push.v arg.argument0
call.i gml_Script___scribble_trace(argc=1)
popz.v
push.s "Could not parse sound array string (please check the debug log)"@4065
conv.s.v
call.i gml_Script___scribble_error(argc=1)
popz.v
call.i @@finish_catch@@(argc=0)
popz.v
b [7]

:[6]
call.i @@try_unhook@@(argc=0)
popz.v

:[7]
pushloc.v local._sound_array
call.i array_length(argc=1)
pushi.e 1
sub.i.v
pop.v.v local._i
pushloc.v local._sound_array
call.i array_length(argc=1)
conv.v.i
dup.i 0
push.i 0
cmp.i.i LTE
bt [14]

:[8]
pushi.e -7
pushloc.v local._i
conv.v.i
push.v [array]self._sound_array
pop.v.v local._sound_name
pushloc.v local._sound_name
push.v static._external_sound_map
call.i ds_map_find_value(argc=2)
chknullish.e
bf [10]

:[9]
popz.v
pushloc.v local._sound_name
call.i asset_get_index(argc=1)

:[10]
pop.v.v local._sound
pushloc.v local._sound
call.i audio_exists(argc=1)
conv.v.b
bf [12]

:[11]
pushloc.v local._sound
pushi.e -7
pushloc.v local._i
conv.v.i
pop.v.v [array]self._sound_array
b [13]

:[12]
pushi.e 1
conv.i.v
pushloc.v local._i
pushloc.v local._sound_array
call.i array_delete(argc=3)
popz.v

:[13]
push.v local._i
push.e 1
sub.i.v
pop.v.v local._i
pushi.e 1
sub.i.i
dup.i 0
bt [8]

:[14]
popz.i
pushloc.v local._sound_array
ret.v

:[15]
b [17]

:[16]
push.v arg.argument0
call.i asset_get_index(argc=1)
ret.v

:[17]
exit.i

:[18]
push.i [function]gml_Script___scribble_parse_sound_array_string
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pop.v.v self.__scribble_parse_sound_array_string
popz.v

:[end]