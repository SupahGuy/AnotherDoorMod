:[0]
b [50]

> gml_Script_scribble_glyph_set (locals=6, argc=5)
:[1]
pushbltn.v builtin.argument4
pushbltn.v builtin.undefined
cmp.v.v EQ
bf [3]

:[2]
pushi.e 0
pop.v.b builtin.argument4

:[3]
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
pushi.e -3
cmp.i.v EQ
bt [5]

:[4]
push.v arg.argument1
push.s "all"@7923
cmp.s.v EQ
b [6]

:[5]
push.e 1

:[6]
bf [26]

:[7]
push.v arg.argument4
conv.v.b
bf [9]

:[8]
push.v arg.argument3
push.v arg.argument2
pushloc.v local._grid
call.i ds_grid_width(argc=1)
pushi.e 1
sub.i.v
push.v arg.argument2
pushi.e 0
conv.i.v
pushloc.v local._grid
call.i ds_grid_add_region(argc=6)
popz.v
b [10]

:[9]
push.v arg.argument3
push.v arg.argument2
pushloc.v local._grid
call.i ds_grid_width(argc=1)
pushi.e 1
sub.i.v
push.v arg.argument2
pushi.e 0
conv.i.v
pushloc.v local._grid
call.i ds_grid_set_region(argc=6)
popz.v

:[10]
pushi.e 32
conv.i.v
pushloc.v local._map
call.i ds_map_find_value(argc=2)
pop.v.v local._glyph_index
pushloc.v local._glyph_index
pushbltn.v builtin.undefined
cmp.v.v EQ
bf [12]

:[11]
push.s "\""@1193
conv.s.v
push.v arg.argument0
push.s "Space character not found for font \""@7924
conv.s.v
call.i gml_Script___scribble_error(argc=3)
popz.v
exit.i

:[12]
push.v arg.argument2
push.l 8
cmp.l.v EQ
bf [14]

:[13]
push.l 8
conv.l.v
pushloc.v local._glyph_index
pushloc.v local._grid
call.i ds_grid_get(argc=3)
push.l 5
conv.l.v
pushloc.v local._glyph_index
pushloc.v local._grid
call.i ds_grid_set(argc=4)
popz.v

:[14]
push.v arg.argument2
push.l 5
cmp.l.v EQ
bf [16]

:[15]
push.l 5
conv.l.v
pushloc.v local._glyph_index
pushloc.v local._grid
call.i ds_grid_get(argc=3)
push.l 8
conv.l.v
pushloc.v local._glyph_index
pushloc.v local._grid
call.i ds_grid_set(argc=4)
popz.v

:[16]
push.v arg.argument2
push.l 6
cmp.l.v EQ
bf [18]

:[17]
push.l 6
conv.l.v
pushloc.v local._glyph_index
pushloc.v local._grid
call.i ds_grid_get(argc=3)
push.l 7
conv.l.v
pushloc.v local._glyph_index
pushloc.v local._grid
call.i ds_grid_set(argc=4)
popz.v

:[18]
push.v arg.argument2
push.l 7
cmp.l.v EQ
bf [20]

:[19]
push.l 7
conv.l.v
pushloc.v local._glyph_index
pushloc.v local._grid
call.i ds_grid_get(argc=3)
push.l 6
conv.l.v
pushloc.v local._glyph_index
pushloc.v local._grid
call.i ds_grid_set(argc=4)
popz.v

:[20]
push.v arg.argument2
push.l 6
cmp.l.v EQ
bt [22]

:[21]
push.v arg.argument2
push.l 7
cmp.l.v EQ
b [23]

:[22]
push.e 1

:[23]
bf [25]

:[24]
push.l 7
conv.l.v
pushloc.v local._glyph_index
pushloc.v local._grid
call.i ds_grid_get(argc=3)
push.l 7
conv.l.v
pushloc.v local._grid
call.i ds_grid_width(argc=1)
pushi.e 1
sub.i.v
push.l 7
conv.l.v
pushi.e 0
conv.i.v
pushloc.v local._grid
call.i ds_grid_set_region(argc=6)
popz.v
push.l 7
conv.l.v
pushloc.v local._glyph_index
pushloc.v local._grid
call.i ds_grid_get(argc=3)
pushloc.v local._font_data
pushi.e -9
pop.v.v [stacktop]self.__height

:[25]
b [49]

:[26]
push.v arg.argument1
call.i is_real(argc=1)
conv.v.b
bf [28]

:[27]
push.v arg.argument1
b [29]

:[28]
push.v arg.argument1
call.i ord(argc=1)

:[29]
pop.v.v local._unicode
pushloc.v local._unicode
pushloc.v local._map
call.i ds_map_find_value(argc=2)
pop.v.v local._glyph_index
pushloc.v local._glyph_index
pushbltn.v builtin.undefined
cmp.v.v EQ
bf [31]

:[30]
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
exit.i

:[31]
push.v arg.argument4
conv.v.b
bf [33]

:[32]
push.v arg.argument2
pushloc.v local._glyph_index
pushloc.v local._grid
call.i ds_grid_get(argc=3)
push.v arg.argument3
add.v.v
b [34]

:[33]
push.v arg.argument3

:[34]
pop.v.v local._new_value
pushloc.v local._new_value
push.v arg.argument2
pushloc.v local._glyph_index
pushloc.v local._grid
call.i ds_grid_set(argc=4)
popz.v
pushloc.v local._unicode
pushi.e 32
cmp.i.v EQ
bf [48]

:[35]
push.v arg.argument2
push.l 8
cmp.l.v EQ
bf [37]

:[36]
pushloc.v local._new_value
push.l 5
conv.l.v
pushloc.v local._glyph_index
pushloc.v local._grid
call.i ds_grid_set(argc=4)
popz.v

:[37]
push.v arg.argument2
push.l 5
cmp.l.v EQ
bf [39]

:[38]
pushloc.v local._new_value
push.l 8
conv.l.v
pushloc.v local._glyph_index
pushloc.v local._grid
call.i ds_grid_set(argc=4)
popz.v

:[39]
push.v arg.argument2
push.l 6
cmp.l.v EQ
bf [41]

:[40]
pushloc.v local._new_value
push.l 7
conv.l.v
pushloc.v local._glyph_index
pushloc.v local._grid
call.i ds_grid_set(argc=4)
popz.v

:[41]
push.v arg.argument2
push.l 7
cmp.l.v EQ
bf [43]

:[42]
pushloc.v local._new_value
push.l 6
conv.l.v
pushloc.v local._glyph_index
pushloc.v local._grid
call.i ds_grid_set(argc=4)
popz.v

:[43]
push.v arg.argument2
push.l 6
cmp.l.v EQ
bt [45]

:[44]
push.v arg.argument2
push.l 7
cmp.l.v EQ
b [46]

:[45]
push.e 1

:[46]
bf [48]

:[47]
pushloc.v local._new_value
push.l 7
conv.l.v
pushloc.v local._grid
call.i ds_grid_width(argc=1)
pushi.e 1
sub.i.v
push.l 7
conv.l.v
pushi.e 0
conv.i.v
pushloc.v local._grid
call.i ds_grid_set_region(argc=6)
popz.v
pushloc.v local._new_value
pushloc.v local._font_data
pushi.e -9
pop.v.v [stacktop]self.__height

:[48]
pushloc.v local._new_value
ret.v

:[49]
exit.i

:[50]
push.i [function]gml_Script_scribble_glyph_set
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pop.v.v self.scribble_glyph_set
popz.v

:[end]