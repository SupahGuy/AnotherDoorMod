:[0]
b [6]

> gml_Script_scribble_font_duplicate (locals=2, argc=2)
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
pop.v.v local._old_font_data
push.v arg.argument1
push.v static._font_data_map
call.i ds_map_exists(argc=2)
conv.v.b
bf [5]

:[4]
push.s "\" already exists"@6636
conv.s.v
push.v arg.argument1
push.s "Font \""@3182
conv.s.v
call.i gml_Script___scribble_error(argc=3)
popz.v

:[5]
pushloc.v local._old_font_data
pushi.e -9
push.v [stacktop]self.__texels_valid
pushi.e 0
conv.b.v
pushloc.v local._old_font_data
pushi.e -9
push.v [stacktop]self.__render_type
pushloc.v local._old_font_data
pushi.e -9
push.v [stacktop]self.__glyph_data_grid
call.i ds_grid_width(argc=1)
push.v arg.argument1
push.i [function]gml_Script___scribble_class_font
conv.i.v
call.i @@NewGMLObject@@(argc=6)
pop.v.v local._new_font_data
pushi.e 1
pushloc.v local._new_font_data
pushi.e -9
pop.v.b [stacktop]self.__runtime
pushloc.v local._old_font_data
pushi.e 1
conv.b.v
pushloc.v local._new_font_data
dup.v 2 8
dup.v 0
push.v stacktop.__copy_to
callv.v 2
popz.v
exit.i

:[6]
push.i [function]gml_Script_scribble_font_duplicate
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pop.v.v self.scribble_font_duplicate
popz.v

:[end]