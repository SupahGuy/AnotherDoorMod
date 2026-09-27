:[0]
b [8]

> gml_Script_scribble_glyph_get (locals=5, argc=3)
:[1]
push.v arg.argument0
call.i gml_Script___scribble_get_font_data(argc=1)
pop.v.v local._font_data
pushloc.v local._font_data
pushi.e -9
push.v [stacktop]self.__glyph_data_grid
pop.v.v local._grid
pushloc.v local._font_data
pushi.e -9
push.v [stacktop]self.__glyphs_map
pop.v.v local._map
push.v arg.argument1
call.i is_real(argc=1)
conv.v.b
bf [3]

:[2]
push.v arg.argument1
b [4]

:[3]
push.v arg.argument1
call.i ord(argc=1)

:[4]
pop.v.v local._unicode
pushloc.v local._unicode
pushloc.v local._map
call.i ds_map_find_value(argc=2)
pop.v.v local._glyph_index
pushloc.v local._glyph_index
pushbltn.v builtin.undefined
cmp.v.v EQ
bf [6]

:[5]
push.s "\""@1193
conv.s.v
push.v arg.argument0
push.s "\" not found for font \""@7919
conv.s.v
push.v arg.argument1
push.s "Character \""@7920
conv.s.v
call.i gml_Script___scribble_error(argc=5)
popz.v
pushbltn.v builtin.undefined
ret.v

:[6]
push.v arg.argument2
pushloc.v local._glyph_index
pushloc.v local._grid
call.i ds_grid_get(argc=3)
ret.v

:[7]
exit.i

:[8]
push.i [function]gml_Script_scribble_glyph_get
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pop.v.v self.scribble_glyph_get
popz.v

:[end]