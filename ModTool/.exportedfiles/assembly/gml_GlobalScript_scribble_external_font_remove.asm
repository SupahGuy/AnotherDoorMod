:[0]
b [8]

> gml_Script_scribble_external_font_remove (locals=1, argc=1)
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
push.v arg.argument0
push.s "Warning! Font \"{0}\" has already been removed"@7790
conv.s.v
call.i @@string@@(argc=2)
call.i gml_Script___scribble_trace(argc=1)
popz.v
exit.i

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
push.v arg.argument0
push.s "Cannot remove font \"{0}\"\nIt was not added using `scribble_external_font_add()`"@7791
conv.s.v
call.i @@string@@(argc=2)
call.i gml_Script___scribble_error(argc=1)
popz.v
exit.i

:[7]
pushloc.v local._font_data
dup.v 0 8
dup.v 0
push.v stacktop.__destroy
callv.v 0
popz.v
call.i gml_Script_scribble_refresh_everything(argc=0)
popz.v
exit.i

:[8]
push.i [function]gml_Script_scribble_external_font_remove
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pop.v.v self.scribble_external_font_remove
popz.v

:[end]