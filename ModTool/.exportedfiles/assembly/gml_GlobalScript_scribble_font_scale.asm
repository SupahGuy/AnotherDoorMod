:[0]
b [2]

> gml_Script_scribble_font_scale (locals=2, argc=2)
:[1]
push.v arg.argument0
call.i gml_Script___scribble_get_font_data(argc=1)
pop.v.v local._font_data
pushloc.v local._font_data
pushi.e -9
push.v [stacktop]self.__glyph_data_grid
pop.v.v local._grid
push.v arg.argument1
push.l 10
conv.l.v
pushloc.v local._grid
call.i ds_grid_width(argc=1)
pushi.e 1
sub.i.v
push.l 3
conv.l.v
pushi.e 0
conv.i.v
pushloc.v local._grid
call.i ds_grid_multiply_region(argc=6)
popz.v
pushloc.v local._font_data
pushi.e -9
dup.i 4
push.v [stacktop]self.__scale
push.v arg.argument1
mul.v.v
pop.i.v [stacktop]self.__scale
pushloc.v local._font_data
pushi.e -9
dup.i 4
push.v [stacktop]self.__height
push.v arg.argument1
mul.v.v
pop.i.v [stacktop]self.__height
pushloc.v local._font_data
pushi.e -9
dup.i 4
push.v [stacktop]self.__ascender
push.v arg.argument1
mul.v.v
pop.i.v [stacktop]self.__ascender
pushloc.v local._font_data
pushi.e -9
dup.i 4
push.v [stacktop]self.__ascender_offset
push.v arg.argument1
mul.v.v
pop.i.v [stacktop]self.__ascender_offset
exit.i

:[2]
push.i [function]gml_Script_scribble_font_scale
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pop.v.v self.scribble_font_scale
popz.v

:[end]