:[0]
b [6]

> gml_Script_scribble_font_delete (locals=0, argc=1)
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
exit.i

:[5]
push.v arg.argument0
push.v static._font_data_map
call.i ds_map_find_value(argc=2)
dup.v 0 8
dup.v 0
push.v stacktop.__destroy
callv.v 0
popz.v
push.v arg.argument0
push.v static._font_data_map
call.i ds_map_delete(argc=2)
popz.v
exit.i

:[6]
push.i [function]gml_Script_scribble_font_delete
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pop.v.v self.scribble_font_delete
popz.v

:[end]