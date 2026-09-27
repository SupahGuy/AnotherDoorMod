:[0]
b [4]

> gml_Script_scribble_super_glyph_copy_all (locals=8, argc=3)
:[1]
push.v arg.argument0
call.i gml_Script___scribble_get_font_data(argc=1)
pop.v.v local._target_font_data
push.v arg.argument1
call.i gml_Script___scribble_get_font_data(argc=1)
pop.v.v local._source_font_data
pushloc.v local._source_font_data
pushi.e -9
push.v [stacktop]self.__glyphs_map
pop.v.v local._source_glyphs_map
pushloc.v local._source_font_data
pushi.e -9
push.v [stacktop]self.__glyph_data_grid
pop.v.v local._source_glyphs_data_grid
pushloc.v local._target_font_data
pushi.e -9
push.v [stacktop]self.__glyphs_map
pop.v.v local._target_glyphs_map
pushloc.v local._target_font_data
pushi.e -9
push.v [stacktop]self.__glyph_data_grid
pop.v.v local._target_glyph_data_grid
pushloc.v local._source_glyphs_map
call.i ds_map_keys_to_array(argc=1)
pop.v.v local._keys_array
pushi.e 0
pop.v.i local._i
pushloc.v local._keys_array
call.i array_length(argc=1)
conv.v.i
dup.i 0
push.i 0
cmp.i.i LTE
bt [3]

:[2]
push.v arg.argument2
pushi.e -7
pushloc.v local._i
conv.v.i
push.v [array]self._keys_array
pushloc.v local._target_glyph_data_grid
pushloc.v local._target_glyphs_map
pushloc.v local._source_glyphs_data_grid
pushloc.v local._source_glyphs_map
call.i gml_Script___scribble_glyph_duplicate(argc=6)
popz.v
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
pushloc.v local._source_font_data
pushi.e -9
push.v [stacktop]self.__height
pushloc.v local._target_font_data
pushi.e -9
push.v [stacktop]self.__height
call.i max(argc=2)
pushloc.v local._target_font_data
pushi.e -9
pop.v.v [stacktop]self.__height
pushloc.v local._source_font_data
pushi.e -9
push.v [stacktop]self.__ascender
pushloc.v local._target_font_data
pushi.e -9
push.v [stacktop]self.__ascender
call.i max(argc=2)
pushloc.v local._target_font_data
pushi.e -9
pop.v.v [stacktop]self.__ascender
pushloc.v local._source_font_data
pushi.e -9
push.v [stacktop]self.__ascender_offset
pushloc.v local._target_font_data
pushi.e -9
push.v [stacktop]self.__ascender_offset
call.i max(argc=2)
pushloc.v local._target_font_data
pushi.e -9
pop.v.v [stacktop]self.__ascender_offset
pushloc.v local._target_font_data
pushi.e -9
push.v [stacktop]self.__height
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

:[4]
push.i [function]gml_Script_scribble_super_glyph_copy_all
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pop.v.v self.scribble_super_glyph_copy_all
popz.v

:[end]