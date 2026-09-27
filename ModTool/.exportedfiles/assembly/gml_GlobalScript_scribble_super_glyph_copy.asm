:[0]
b [8]

> gml_Script_scribble_super_glyph_copy (locals=11, argc=3)
:[1]
push.v arg.argument0
call.i gml_Script___scribble_get_font_data(argc=1)
pop.v.v local._target_font_data
push.v arg.argument1
call.i gml_Script___scribble_get_font_data(argc=1)
pop.v.v local._source_font_data
pushloc.v local._target_font_data
pushi.e -9
push.v [stacktop]self.__glyphs_map
pop.v.v local._target_glyphs_map
pushloc.v local._target_font_data
pushi.e -9
push.v [stacktop]self.__glyph_data_grid
pop.v.v local._target_glyph_data_grid
pushloc.v local._source_font_data
pushi.e -9
push.v [stacktop]self.__glyphs_map
pop.v.v local._source_glyphs_map
pushloc.v local._source_font_data
pushi.e -9
push.v [stacktop]self.__glyph_data_grid
pop.v.v local._source_glyphs_data_grid
pushbltn.v builtin.argument_count
pushi.e 3
sub.i.v
call.i array_create(argc=1)
pop.v.v local._glyphs_array
pushi.e 0
pop.v.i local._i
pushbltn.v builtin.argument_count
pushi.e 3
sub.i.v
conv.v.i
dup.i 0
push.i 0
cmp.i.i LTE
bt [3]

:[2]
pushi.e -15
pushloc.v local._i
pushi.e 3
add.i.v
conv.v.i
push.v [array]self.argument
pushi.e -7
pushloc.v local._i
conv.v.i
pop.v.v [array]self._glyphs_array
push.v local._i
push.e 1
add.i.v
pop.v.v local._i
pushi.e 1
sub.i.i
dup.i 0
bt [2]

:[3]
popz.i
pushloc.v local._glyphs_array
call.i gml_Script___scribble_prepare_super_work_array(argc=1)
pop.v.v local._work_array
pushi.e 0
pop.v.i local._i
pushloc.v local._work_array
call.i array_length(argc=1)
conv.v.i
dup.i 0
push.i 0
cmp.i.i LTE
bt [7]

:[4]
pushi.e -7
pushloc.v local._i
conv.v.i
push.v [array]self._work_array
pop.v.v local._glyph_range_array
pushi.e -7
pushi.e 0
push.v [array]self._glyph_range_array
pop.v.v local._unicode
pushi.e 1
pushi.e -7
pushi.e 1
push.v [array]self._glyph_range_array
add.v.i
pushloc.v local._unicode
sub.v.v
conv.v.i
dup.i 0
push.i 0
cmp.i.i LTE
bt [6]

:[5]
push.v arg.argument2
pushloc.v local._unicode
pushloc.v local._target_glyph_data_grid
pushloc.v local._target_glyphs_map
pushloc.v local._source_glyphs_data_grid
pushloc.v local._source_glyphs_map
call.i gml_Script___scribble_glyph_duplicate(argc=6)
popz.v
push.v local._unicode
push.e 1
add.i.v
pop.v.v local._unicode
pushi.e 1
sub.i.i
dup.i 0
bt [5]

:[6]
popz.i
push.v local._i
push.e 1
add.i.v
pop.v.v local._i
pushi.e 1
sub.i.i
dup.i 0
bt [4]

:[7]
popz.i
pushloc.v local._source_font_data
pushi.e -9
push.v [stacktop]self.__height
pushloc.v local._target_font_data
pushi.e -9
push.v [stacktop]self.__height
call.i max(argc=2)
push.l 7
conv.l.v
pushloc.v local._target_glyph_data_grid
call.i ds_grid_width(argc=1)
push.l 7
conv.l.v
pushi.e 0
conv.i.v
pushloc.v local._target_glyph_data_grid
call.i ds_grid_set_region(argc=6)
popz.v
exit.i

:[8]
push.i [function]gml_Script_scribble_super_glyph_copy
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pop.v.v self.scribble_super_glyph_copy
popz.v
b [21]

> gml_Script___scribble_prepare_super_work_array (locals=5, argc=1)
:[9]
call.i @@NewGMLArray@@(argc=0)
pop.v.v local._output_array
pushi.e 0
pop.v.i local._i
push.v arg.argument0
call.i array_length(argc=1)
conv.v.i
dup.i 0
push.i 0
cmp.i.i LTE
bt [19]

:[10]
pushi.e -15
pushloc.v local._i
conv.v.i
push.v [array]self.argument0
pop.v.v local._glyph_to_copy
pushloc.v local._glyph_to_copy
call.i is_string(argc=1)
conv.v.b
bf [14]

:[11]
pushi.e 1
pop.v.i local._j
pushloc.v local._glyph_to_copy
call.i string_length(argc=1)
conv.v.i
dup.i 0
push.i 0
cmp.i.i LTE
bt [13]

:[12]
pushloc.v local._j
pushloc.v local._glyph_to_copy
call.i string_char_at(argc=2)
call.i ord(argc=1)
pop.v.v local._unicode
pushloc.v local._unicode
pushloc.v local._unicode
call.i @@NewGMLArray@@(argc=2)
pushloc.v local._output_array
call.i array_push(argc=2)
popz.v
push.v local._j
push.e 1
add.i.v
pop.v.v local._j
pushi.e 1
sub.i.i
dup.i 0
bt [12]

:[13]
popz.i
pushbltn.v builtin.undefined
pop.v.v local._glyph_to_copy

:[14]
pushloc.v local._glyph_to_copy
call.i is_numeric(argc=1)
conv.v.b
bf [16]

:[15]
pushloc.v local._glyph_to_copy
pushloc.v local._glyph_to_copy
call.i @@NewGMLArray@@(argc=2)
pop.v.v local._glyph_to_copy

:[16]
pushloc.v local._glyph_to_copy
call.i is_array(argc=1)
conv.v.b
bf [18]

:[17]
pushloc.v local._glyph_to_copy
pushloc.v local._output_array
call.i array_push(argc=2)
popz.v

:[18]
push.v local._i
push.e 1
add.i.v
pop.v.v local._i
pushi.e 1
sub.i.i
dup.i 0
bt [10]

:[19]
popz.i
pushloc.v local._output_array
ret.v

:[20]
exit.i

:[21]
push.i [function]gml_Script___scribble_prepare_super_work_array
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pop.v.v self.__scribble_prepare_super_work_array
popz.v
b [29]

> gml_Script___scribble_glyph_duplicate (locals=2, argc=6)
:[22]
push.v arg.argument4
push.v arg.argument0
call.i ds_map_find_value(argc=2)
pop.v.v local._source_x
pushloc.v local._source_x
pushbltn.v builtin.undefined
cmp.v.v EQ
bf [24]

:[23]
push.s ") not found in source font"@8092
conv.s.v
push.v arg.argument4
call.i chr(argc=1)
push.s " ("@3593
conv.s.v
push.v arg.argument4
push.s "Warning! Glyph "@8093
conv.s.v
call.i gml_Script___scribble_trace(argc=5)
popz.v
exit.i

:[24]
push.v arg.argument4
push.v arg.argument2
call.i ds_map_find_value(argc=2)
pop.v.v local._target_x
pushloc.v local._target_x
pushbltn.v builtin.undefined
cmp.v.v EQ
bf [26]

:[25]
push.v arg.argument3
call.i ds_grid_width(argc=1)
pop.v.v local._target_x
pushloc.v local._target_x
push.v arg.argument4
push.v arg.argument2
call.i ds_map_set(argc=3)
popz.v
push.l 17
conv.l.v
pushloc.v local._target_x
pushi.e 1
add.i.v
push.v arg.argument3
call.i ds_grid_resize(argc=3)
popz.v
b [28]

:[26]
push.v arg.argument5
conv.v.b
not.b
bf [28]

:[27]
exit.i

:[28]
pushi.e 0
conv.i.v
pushloc.v local._target_x
push.l 17
conv.l.v
pushloc.v local._source_x
pushi.e 0
conv.i.v
pushloc.v local._source_x
push.v arg.argument1
push.v arg.argument3
call.i ds_grid_set_grid_region(argc=8)
popz.v
exit.i

:[29]
push.i [function]gml_Script___scribble_glyph_duplicate
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pop.v.v self.__scribble_glyph_duplicate
popz.v

:[end]