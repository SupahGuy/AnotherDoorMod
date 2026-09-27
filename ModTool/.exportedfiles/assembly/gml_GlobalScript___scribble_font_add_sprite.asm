:[0]
b [3]

> gml_Script___scribble_font_add_sprite (locals=1, argc=4)
:[1]
push.v arg.argument3
push.v arg.argument2
push.v arg.argument1
push.v arg.argument0
call.i font_add_sprite(argc=4)
pop.v.v local._spritefont
push.v arg.argument3
push.v arg.argument2
pushloc.v local._spritefont
push.v arg.argument0
call.i gml_Script___scribble_font_add_sprite_common(argc=4)
popz.v
pushloc.v local._spritefont
ret.v

:[2]
exit.i

:[3]
push.i [function]gml_Script___scribble_font_add_sprite
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pop.v.v self.__scribble_font_add_sprite
popz.v
b [6]

> gml_Script___scribble_font_add_sprite_ext (locals=1, argc=4)
:[4]
push.v arg.argument3
push.v arg.argument2
push.v arg.argument1
push.v arg.argument0
call.i font_add_sprite_ext(argc=4)
pop.v.v local._spritefont
push.v arg.argument3
push.v arg.argument2
pushloc.v local._spritefont
push.v arg.argument0
call.i gml_Script___scribble_font_add_sprite_common(argc=4)
popz.v
pushloc.v local._spritefont
ret.v

:[5]
exit.i

:[6]
push.i [function]gml_Script___scribble_font_add_sprite_ext
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pop.v.v self.__scribble_font_add_sprite_ext
popz.v
b [66]

> gml_Script___scribble_font_add_sprite_common (locals=31, argc=4)
:[7]
isstaticok.e
bt [9]

:[8]
setstatic.e
call.i gml_Script___scribble_system(argc=0)
pushi.e -9
push.v [stacktop]self.__font_data_map
pop.v.v static._font_data_map

:[9]
push.v arg.argument1
call.i font_get_info(argc=1)
pop.v.v local._font_info
push.v arg.argument0
call.i sprite_get_name(argc=1)
pop.v.v local._sprite_name
pushloc.v local._sprite_name
push.v static._font_data_map
call.i ds_map_exists(argc=2)
conv.v.b
bf [11]

:[10]
push.s "\" has already been added. Destroying the old spritefont and creating a new one"@3248
conv.s.v
pushloc.v local._sprite_name
push.s "Warning! A spritefont for \""@3249
conv.s.v
call.i gml_Script___scribble_trace(argc=3)
popz.v
pushloc.v local._sprite_name
push.v static._font_data_map
call.i ds_map_find_value(argc=2)
dup.v 0 8
dup.v 0
push.v stacktop.__destroy
callv.v 0
popz.v

:[11]
pushi.e 1
conv.i.v
push.v arg.argument0
call.i gml_Script___scribble_asset_is_krutidev(argc=2)
pop.v.v local._is_krutidev
call.i gml_Script___scribble_system(argc=0)
pushi.e -9
push.v [stacktop]self.__glyph_data
pushi.e -9
push.v [stacktop]self.__bidi_map
pop.v.v local._global_glyph_bidi_map
call.i gml_Script___scribble_system(argc=0)
pushi.e -9
push.v [stacktop]self.__state
pop.v.v local._scribble_state
pushloc.v local._scribble_state
pushi.e -9
push.v [stacktop]self.__default_font
pushbltn.v builtin.undefined
cmp.v.v EQ
bf [13]

:[12]
pushloc.v local._sprite_name
pushloc.v local._scribble_state
pushi.e -9
pop.v.v [stacktop]self.__default_font

:[13]
push.v arg.argument0
call.i sprite_get_width(argc=1)
pop.v.v local._sprite_width
push.v arg.argument0
call.i sprite_get_height(argc=1)
pop.v.v local._sprite_height
push.v arg.argument0
call.i sprite_get_info(argc=1)
pop.v.v local._sprite_info
pushloc.v local._sprite_info
pushi.e -9
push.v [stacktop]self.frames
pop.v.v local._sprite_frames
pushi.e 0
pop.v.i local._sprite_x_offset
pushi.e 0
pop.v.i local._sprite_y_offset
push.v local._sprite_x_offset
push.v arg.argument0
call.i sprite_get_xoffset(argc=1)
add.v.v
pop.v.v local._sprite_x_offset
push.v local._sprite_y_offset
push.v arg.argument0
call.i sprite_get_yoffset(argc=1)
add.v.v
pop.v.v local._sprite_y_offset
pushloc.v local._font_info
pushi.e -9
push.v [stacktop]self.glyphs
pop.v.v local._info_glyphs_dict
pushloc.v local._info_glyphs_dict
call.i variable_struct_get_names(argc=1)
pop.v.v local._info_glyph_names
pushloc.v local._info_glyph_names
call.i array_length(argc=1)
pop.v.v local._size
pushi.e 1
conv.b.v
pushbltn.v builtin.undefined
pushi.e 0
conv.i.v
pushloc.v local._size
pushloc.v local._sprite_name
push.i [function]gml_Script___scribble_class_font
conv.i.v
call.i @@NewGMLObject@@(argc=6)
pop.v.v local._font_data
pushloc.v local._font_data
pushi.e -9
push.v [stacktop]self.__glyphs_map
pop.v.v local._font_glyphs_map
pushloc.v local._font_data
pushi.e -9
push.v [stacktop]self.__glyph_data_grid
pop.v.v local._font_glyph_data_grid
pushloc.v local._is_krutidev
conv.v.b
bf [15]

:[14]
pushi.e 1
pushloc.v local._font_data
pushi.e -9
pop.v.b [stacktop]self.__is_krutidev

:[15]
pushi.e 1
conv.i.v
push.l 10
conv.l.v
pushloc.v local._size
pushi.e 1
sub.i.v
push.l 10
conv.l.v
pushi.e 0
conv.i.v
pushloc.v local._font_glyph_data_grid
call.i ds_grid_set_region(argc=6)
popz.v
pushi.e 1
conv.b.v
push.l 16
conv.l.v
pushloc.v local._size
pushi.e 1
sub.i.v
push.l 16
conv.l.v
pushi.e 0
conv.i.v
pushloc.v local._font_glyph_data_grid
call.i ds_grid_set_region(argc=6)
popz.v
pushloc.v local._font_data
push.v arg.argument1
call.i font_get_name(argc=1)
push.v static._font_data_map
call.i ds_map_set(argc=3)
popz.v
pushi.e 0
pop.v.i local._i
pushloc.v local._size
conv.v.i
dup.i 0
push.i 0
cmp.i.i LTE
bt [64]

:[16]
pushi.e -7
pushloc.v local._i
conv.v.i
push.v [array]self._info_glyph_names
pop.v.v local._glyph
pushloc.v local._glyph
call.i ord(argc=1)
pop.v.v local._unicode
pushloc.v local._glyph
pushloc.v local._info_glyphs_dict
call.i variable_struct_get(argc=2)
pushi.e -9
push.v [stacktop]self.char
pop.v.v local._image
pushloc.v local._image
push.v arg.argument0
call.i sprite_get_uvs(argc=2)
pop.v.v local._uvs
pushloc.v local._unicode
pushi.e 32
cmp.i.v EQ
bf [24]

:[17]
push.v arg.argument2
conv.v.b
bf [22]

:[18]
pushloc.v local._image
pushloc.v local._sprite_frames
call.i array_length(argc=1)
cmp.v.v GTE
bf [20]

:[19]
pushi.e 1
push.v arg.argument0
call.i sprite_get_bbox_right(argc=1)
add.v.i
push.v arg.argument0
call.i sprite_get_bbox_left(argc=1)
sub.v.v
push.v arg.argument3
add.v.v
pop.v.v local._space_width
b [21]

:[20]
pushi.e -7
pushloc.v local._image
conv.v.i
push.v [array]self._sprite_frames
pushi.e -9
push.v [stacktop]self.crop_width
push.v arg.argument3
add.v.v
pop.v.v local._space_width

:[21]
b [23]

:[22]
pushloc.v local._sprite_width
push.v arg.argument3
add.v.v
pop.v.v local._space_width

:[23]
pushloc.v local._glyph
push.l 0
conv.l.v
pushloc.v local._i
pushloc.v local._font_glyph_data_grid
call.i ds_grid_set(argc=4)
popz.v
pushloc.v local._unicode
push.l 1
conv.l.v
pushloc.v local._i
pushloc.v local._font_glyph_data_grid
call.i ds_grid_set(argc=4)
popz.v
push.l 0
conv.l.v
push.l 2
conv.l.v
pushloc.v local._i
pushloc.v local._font_glyph_data_grid
call.i ds_grid_set(argc=4)
popz.v
pushloc.v local._sprite_x_offset
neg.v
push.l 3
conv.l.v
pushloc.v local._i
pushloc.v local._font_glyph_data_grid
call.i ds_grid_set(argc=4)
popz.v
pushloc.v local._sprite_y_offset
neg.v
push.l 4
conv.l.v
pushloc.v local._i
pushloc.v local._font_glyph_data_grid
call.i ds_grid_set(argc=4)
popz.v
pushloc.v local._space_width
push.l 5
conv.l.v
pushloc.v local._i
pushloc.v local._font_glyph_data_grid
call.i ds_grid_set(argc=4)
popz.v
pushloc.v local._sprite_height
push.l 6
conv.l.v
pushloc.v local._i
pushloc.v local._font_glyph_data_grid
call.i ds_grid_set(argc=4)
popz.v
pushloc.v local._sprite_height
push.l 7
conv.l.v
pushloc.v local._i
pushloc.v local._font_glyph_data_grid
call.i ds_grid_set(argc=4)
popz.v
pushloc.v local._space_width
push.l 8
conv.l.v
pushloc.v local._i
pushloc.v local._font_glyph_data_grid
call.i ds_grid_set(argc=4)
popz.v
pushi.e 0
conv.i.v
push.l 9
conv.l.v
pushloc.v local._i
pushloc.v local._font_glyph_data_grid
call.i ds_grid_set(argc=4)
popz.v
pushi.e 0
conv.i.v
push.v arg.argument0
call.i gml_Script___scribble_sprite_get_material(argc=2)
push.l 11
conv.l.v
pushloc.v local._i
pushloc.v local._font_glyph_data_grid
call.i ds_grid_set(argc=4)
popz.v
pushi.e 0
conv.i.v
push.l 12
conv.l.v
pushloc.v local._i
pushloc.v local._font_glyph_data_grid
call.i ds_grid_set(argc=4)
popz.v
pushi.e 0
conv.i.v
push.l 14
conv.l.v
pushloc.v local._i
pushloc.v local._font_glyph_data_grid
call.i ds_grid_set(argc=4)
popz.v
pushi.e 0
conv.i.v
push.l 13
conv.l.v
pushloc.v local._i
pushloc.v local._font_glyph_data_grid
call.i ds_grid_set(argc=4)
popz.v
pushi.e 0
conv.i.v
push.l 15
conv.l.v
pushloc.v local._i
pushloc.v local._font_glyph_data_grid
call.i ds_grid_set(argc=4)
popz.v
pushloc.v local._i
pushloc.v local._unicode
pushloc.v local._font_glyphs_map
call.i ds_map_set(argc=3)
popz.v
b [63]

:[24]
pushi.e -7
pushloc.v local._image
conv.v.i
push.v [array]self._sprite_frames
pop.v.v local._image_info
pushloc.v local._image
push.v arg.argument0
call.i gml_Script___scribble_sprite_get_material(argc=2)
pop.v.v local._material
push.v arg.argument2
conv.v.b
bf [26]

:[25]
pushi.e 0
pop.v.i local._x_offset
pushloc.v local._image_info
pushi.e -9
push.v [stacktop]self.crop_width
push.v arg.argument3
add.v.v
pop.v.v local._glyph_separation
b [27]

:[26]
pushloc.v local._image_info
pushi.e -9
push.v [stacktop]self.x_offset
pop.v.v local._x_offset
pushloc.v local._sprite_width
push.v arg.argument3
add.v.v
pop.v.v local._glyph_separation

:[27]
pushloc.v local._unicode
pushi.e 12288
cmp.i.v GTE
bf [29]

:[28]
pushloc.v local._unicode
pushi.e 12351
cmp.i.v LTE
b [30]

:[29]
push.e 0

:[30]
bf [32]

:[31]
push.l 1
pop.v.l local._bidi
b [59]

:[32]
pushloc.v local._unicode
pushi.e 12352
cmp.i.v GTE
bf [34]

:[33]
pushloc.v local._unicode
pushi.e 12543
cmp.i.v LTE
b [35]

:[34]
push.e 0

:[35]
bf [37]

:[36]
push.l 3
pop.v.l local._bidi
b [59]

:[37]
pushloc.v local._unicode
pushi.e 19968
cmp.i.v GTE
bf [39]

:[38]
pushloc.v local._unicode
push.i 40959
cmp.i.v LTE
b [40]

:[39]
push.e 0

:[40]
bf [42]

:[41]
push.l 3
pop.v.l local._bidi
b [59]

:[42]
pushloc.v local._unicode
push.i 65280
cmp.i.v GTE
bf [44]

:[43]
pushloc.v local._unicode
push.i 65295
cmp.i.v LTE
b [45]

:[44]
push.e 0

:[45]
bf [47]

:[46]
push.l 1
pop.v.l local._bidi
b [59]

:[47]
pushloc.v local._unicode
push.i 65306
cmp.i.v GTE
bf [49]

:[48]
pushloc.v local._unicode
push.i 65311
cmp.i.v LTE
b [50]

:[49]
push.e 0

:[50]
bf [52]

:[51]
push.l 1
pop.v.l local._bidi
b [59]

:[52]
pushloc.v local._unicode
push.i 65371
cmp.i.v GTE
bf [54]

:[53]
pushloc.v local._unicode
push.i 65380
cmp.i.v LTE
b [55]

:[54]
push.e 0

:[55]
bf [57]

:[56]
push.l 1
pop.v.l local._bidi
b [59]

:[57]
pushloc.v local._unicode
pushloc.v local._global_glyph_bidi_map
call.i ds_map_find_value(argc=2)
pop.v.v local._bidi
pushloc.v local._bidi
pushbltn.v builtin.undefined
cmp.v.v EQ
bf [59]

:[58]
push.l 4
pop.v.l local._bidi

:[59]
pushloc.v local._is_krutidev
conv.v.b
bf [62]

:[60]
pushloc.v local._bidi
push.l 0
cmp.l.v NEQ
bf [62]

:[61]
push.l 5
pop.v.l local._bidi
push.v local._unicode
push.i 65535
add.i.v
pop.v.v local._unicode

:[62]
pushloc.v local._image_info
pushi.e -9
push.v [stacktop]self.crop_width
pop.v.v local._w
pushloc.v local._image_info
pushi.e -9
push.v [stacktop]self.crop_height
pop.v.v local._h
pushloc.v local._glyph
push.l 0
conv.l.v
pushloc.v local._i
pushloc.v local._font_glyph_data_grid
call.i ds_grid_set(argc=4)
popz.v
pushloc.v local._unicode
push.l 1
conv.l.v
pushloc.v local._i
pushloc.v local._font_glyph_data_grid
call.i ds_grid_set(argc=4)
popz.v
pushloc.v local._bidi
push.l 2
conv.l.v
pushloc.v local._i
pushloc.v local._font_glyph_data_grid
call.i ds_grid_set(argc=4)
popz.v
pushloc.v local._x_offset
pushloc.v local._sprite_x_offset
sub.v.v
push.l 3
conv.l.v
pushloc.v local._i
pushloc.v local._font_glyph_data_grid
call.i ds_grid_set(argc=4)
popz.v
pushloc.v local._image_info
pushi.e -9
push.v [stacktop]self.y_offset
pushloc.v local._sprite_y_offset
sub.v.v
push.l 4
conv.l.v
pushloc.v local._i
pushloc.v local._font_glyph_data_grid
call.i ds_grid_set(argc=4)
popz.v
pushloc.v local._w
push.l 5
conv.l.v
pushloc.v local._i
pushloc.v local._font_glyph_data_grid
call.i ds_grid_set(argc=4)
popz.v
pushloc.v local._h
push.l 6
conv.l.v
pushloc.v local._i
pushloc.v local._font_glyph_data_grid
call.i ds_grid_set(argc=4)
popz.v
pushloc.v local._sprite_height
push.l 7
conv.l.v
pushloc.v local._i
pushloc.v local._font_glyph_data_grid
call.i ds_grid_set(argc=4)
popz.v
pushloc.v local._glyph_separation
push.l 8
conv.l.v
pushloc.v local._i
pushloc.v local._font_glyph_data_grid
call.i ds_grid_set(argc=4)
popz.v
pushloc.v local._x_offset
neg.v
push.l 9
conv.l.v
pushloc.v local._i
pushloc.v local._font_glyph_data_grid
call.i ds_grid_set(argc=4)
popz.v
pushloc.v local._material
push.l 11
conv.l.v
pushloc.v local._i
pushloc.v local._font_glyph_data_grid
call.i ds_grid_set(argc=4)
popz.v
pushi.e -7
pushi.e 0
push.v [array]self._uvs
push.l 12
conv.l.v
pushloc.v local._i
pushloc.v local._font_glyph_data_grid
call.i ds_grid_set(argc=4)
popz.v
pushi.e -7
pushi.e 1
push.v [array]self._uvs
push.l 14
conv.l.v
pushloc.v local._i
pushloc.v local._font_glyph_data_grid
call.i ds_grid_set(argc=4)
popz.v
pushi.e -7
pushi.e 2
push.v [array]self._uvs
push.l 13
conv.l.v
pushloc.v local._i
pushloc.v local._font_glyph_data_grid
call.i ds_grid_set(argc=4)
popz.v
pushi.e -7
pushi.e 3
push.v [array]self._uvs
push.l 15
conv.l.v
pushloc.v local._i
pushloc.v local._font_glyph_data_grid
call.i ds_grid_set(argc=4)
popz.v
pushloc.v local._i
pushloc.v local._unicode
pushloc.v local._font_glyphs_map
call.i ds_map_set(argc=3)
popz.v

:[63]
push.v local._i
push.e 1
add.i.v
pop.v.v local._i
pushi.e 1
sub.i.i
dup.i 0
bt [16]

:[64]
popz.i
pushi.e 32
conv.i.v
pushloc.v local._font_glyphs_map
call.i ds_map_find_value(argc=2)
pop.v.v local._space_index
push.l 6
conv.l.v
pushloc.v local._space_index
pushloc.v local._font_glyph_data_grid
call.i ds_grid_get(argc=3)
pushloc.v local._font_data
pushi.e -9
pop.v.v [stacktop]self.__height
pushloc.v local._font_data
pushi.e -9
push.v [stacktop]self.__height
pushloc.v local._font_data
pushi.e -9
pop.v.v [stacktop]self.__ascender
pushi.e 0
pushloc.v local._font_data
pushi.e -9
pop.v.i [stacktop]self.__ascender_offset
push.v arg.argument1
ret.v

:[65]
exit.i

:[66]
push.i [function]gml_Script___scribble_font_add_sprite_common
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pop.v.v self.__scribble_font_add_sprite_common
popz.v

:[end]