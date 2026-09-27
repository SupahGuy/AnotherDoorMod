:[0]
b [9]

> gml_Script_scribble_external_font_exists (locals=1, argc=1)
:[1]
isstaticok.e
bt [3]

:[2]
setstatic.e
call.i gml_Script___scribble_system(argc=0)
pushi.e -9
push.v [stacktop]self.__font_data_map
pop.v.v static._font_data_map

:[3]
push.v arg.argument0
push.v static._font_data_map
call.i ds_map_exists(argc=2)
conv.v.b
not.b
bf [5]

:[4]
pushi.e 0
conv.b.v
ret.v

:[5]
push.v arg.argument0
push.v static._font_data_map
call.i ds_map_find_value(argc=2)
pop.v.v local._font_data
pushloc.v local._font_data
pushi.e -9
push.v [stacktop]self.__from_bundle
conv.v.b
bf [7]

:[6]
pushi.e 0
conv.b.v
ret.v

:[7]
pushi.e 1
conv.b.v
ret.v

:[8]
exit.i

:[9]
push.i [function]gml_Script_scribble_external_font_exists
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pop.v.v self.scribble_external_font_exists
popz.v

:[end]