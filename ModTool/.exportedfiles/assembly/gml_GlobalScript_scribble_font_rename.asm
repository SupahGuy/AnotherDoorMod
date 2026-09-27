:[0]
b [6]

> gml_Script_scribble_font_rename (locals=2, argc=2)
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
call.i gml_Script___scribble_get_font_data(argc=1)
pop.v.v local._data
pushloc.v local._data
push.v arg.argument1
push.v static._font_data_map
call.i ds_map_set(argc=3)
popz.v
push.v arg.argument0
push.v static._font_data_map
call.i ds_map_delete(argc=2)
popz.v
call.i gml_Script___scribble_system(argc=0)
pushi.e -9
push.v [stacktop]self.__state
pop.v.v local._scribble_state
pushloc.v local._scribble_state
pushi.e -9
push.v [stacktop]self.__default_font
push.v arg.argument0
cmp.v.v EQ
bf [5]

:[4]
push.v arg.argument1
pushloc.v local._scribble_state
pushi.e -9
pop.v.v [stacktop]self.__default_font

:[5]
exit.i

:[6]
push.i [function]gml_Script_scribble_font_rename
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pop.v.v self.scribble_font_rename
popz.v

:[end]