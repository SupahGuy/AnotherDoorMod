:[0]
b [97]

> gml_Script___scribble_font_add_from_info (locals=49, argc=7)
:[1]
pushbltn.v builtin.argument4
pushbltn.v builtin.undefined
cmp.v.v EQ
bf [3]

:[2]
pushbltn.v builtin.undefined
pop.v.v builtin.argument4

:[3]
isstaticok.e
bt [5]

:[4]
setstatic.e
call.i gml_Script___scribble_system(argc=0)
pushi.e -9
push.v [stacktop]self.__font_data_map
pop.v.v static._font_data_map

:[5]
push.v arg.argument0
push.v static._font_data_map
call.i ds_map_exists(argc=2)
conv.v.b
bf [7]

:[6]
push.s "\" has already been added. Destroying the old font and creating a new one"@3162
conv.s.v
push.v arg.argument0
push.s "Warning! A font for \""@3163
conv.s.v
call.i gml_Script___scribble_trace(argc=3)
popz.v
push.v arg.argument0
push.v static._font_data_map
call.i ds_map_find_value(argc=2)
dup.v 0 8
dup.v 0
push.v stacktop.__destroy
callv.v 0
popz.v

:[7]
call.i gml_Script___scribble_system(argc=0)
pushi.e -9
push.v [stacktop]self.__state
pop.v.v local._scribble_state
pushloc.v local._scribble_state
pushi.e -9
push.v [stacktop]self.__default_font
pushbltn.v builtin.undefined
cmp.v.v EQ
bf [9]

:[8]
push.v arg.argument0
pushloc.v local._scribble_state
pushi.e -9
pop.v.v [stacktop]self.__default_font

:[9]
push.i 5356
conv.i.v
push.i 5256
conv.i.v
call.i @@try_hook@@(argc=2)
popz.v
call.i gml_Script___scribble_system(argc=0)
pushi.e -9
push.v [stacktop]self.__glyph_data
pushi.e -9
push.v [stacktop]self.__bidi_map
pop.v.v local._global_glyph_bidi_map
push.v arg.argument3
pushi.e -9
push.v [stacktop]self.texture
pop.v.v local._texture_index
push.v arg.argument3
pushi.e -9
push.v [stacktop]self.glyphs
pop.v.v local._info_glyphs_dict
push.v arg.argument3
pushi.e -9
push.v [stacktop]self.ascenderOffset
pop.v.v local._ascender_offset
call.i @@NewGMLArray@@(argc=0)
pop.v.v local._info_glyphs_array
pushloc.v local._info_glyphs_dict
call.i variable_struct_get_names(argc=1)
pop.v.v local._info_glyph_names
pushi.e 0
pop.v.i local._i
pushloc.v local._info_glyph_names
call.i array_length(argc=1)
conv.v.i
dup.i 0
push.i 0
cmp.i.i LTE
bt [14]

:[10]
pushi.e -7
pushloc.v local._i
conv.v.i
push.v [array]self._info_glyph_names
pop.v.v local._glyph
pushloc.v local._glyph
pushloc.v local._info_glyphs_dict
call.i variable_struct_get(argc=2)
pop.v.v local._struct
pushloc.v local._struct
call.i is_struct(argc=1)
conv.v.b
bf [12]

:[11]
pushloc.v local._struct
pushloc.v local._info_glyphs_array
call.i array_push(argc=2)
popz.v
b [13]

:[12]
push.v arg.argument0
pushloc.v local._glyph
push.s "Warning! Failed to access glyph data for char \"{0}\" in font \"{1}\""@3175
conv.s.v
call.i @@string@@(argc=3)
call.i gml_Script___scribble_trace(argc=1)
popz.v

:[13]
push.v local._i
push.e 1
add.i.v
pop.v.v local._i
pushi.e 1
sub.i.i
dup.i 0
bt [10]

:[14]
popz.i
pushloc.v local._info_glyphs_array
call.i array_length(argc=1)
pop.v.v local._size
pushi.e 1
pop.v.b local._texels_valid
push.v arg.argument1
pushbltn.v builtin.undefined
cmp.v.v NEQ
bf [16]

:[15]
push.v arg.argument1
call.i gml_Script___scribble_texture_group_get_ready(argc=1)
conv.v.b
not.b
b [17]

:[16]
push.e 0

:[17]
bf [25]

:[18]
pushloc.v local._texture_index
call.i texture_get_width(argc=1)
pushi.e 1
cmp.i.v EQ
bt [22]

:[19]
pushloc.v local._texture_index
call.i texture_get_height(argc=1)
pushi.e 1
cmp.i.v EQ
bt [22]

:[20]
pushloc.v local._texture_index
call.i texture_get_texel_width(argc=1)
pushi.e 1
cmp.i.v EQ
bt [22]

:[21]
pushloc.v local._texture_index
call.i texture_get_texel_height(argc=1)
pushi.e 1
cmp.i.v EQ
b [23]

:[22]
push.e 1

:[23]
bf [25]

:[24]
pushi.e 0
pop.v.b local._texels_valid
push.s "Font \""@3182
push.v arg.argument0
add.v.s
push.s "\" texture not ready, possibly a dynamic texture"@3183
add.s.v
call.i gml_Script___scribble_trace(argc=1)
popz.v

:[25]
pushloc.v local._texels_valid
conv.v.b
bf [27]

:[26]
pushloc.v local._texture_index
call.i texture_get_texel_width(argc=1)
pop.v.v local._texture_tw
pushloc.v local._texture_index
call.i texture_get_texel_height(argc=1)
pop.v.v local._texture_th
pushi.e -15
pushi.e 2
push.v [array]self.argument2
pushi.e -15
pushi.e 0
push.v [array]self.argument2
sub.v.v
pushloc.v local._texture_tw
div.v.v
pop.v.v local._texture_w
pushi.e -15
pushi.e 3
push.v [array]self.argument2
pushi.e -15
pushi.e 1
push.v [array]self.argument2
sub.v.v
pushloc.v local._texture_th
div.v.v
pop.v.v local._texture_h
pushi.e -15
pushi.e 0
push.v [array]self.argument2
pushloc.v local._texture_tw
div.v.v
call.i round(argc=1)
pop.v.v local._texture_l
pushi.e -15
pushi.e 1
push.v [array]self.argument2
pushloc.v local._texture_th
div.v.v
call.i round(argc=1)
pop.v.v local._texture_t
b [28]

:[27]
pushi.e 1
pop.v.i local._texture_tw
pushi.e 1
pop.v.i local._texture_th
pushi.e 0
pop.v.i local._texture_l
pushi.e 0
pop.v.i local._texture_t

:[28]
push.v arg.argument3
pushi.e -9
push.v [stacktop]self.sdfEnabled
pop.v.v local._sdf
pushloc.v local._sdf
conv.v.b
bf [30]

:[29]
pushi.e 2
push.v arg.argument3
pushi.e -9
push.v [stacktop]self.sdfSpread
mul.v.i
pop.v.v local._sdf_pxrange
pushi.e 0
pop.v.i local._sdf_thickness_offset
pushloc.v local._sdf_pxrange
neg.v
pop.v.v local._sdf_offset
pushloc.v local._sdf_pxrange
neg.v
pushi.e 2
add.i.v
pop.v.v local._sdf_height_offset
b [31]

:[30]
pushbltn.v builtin.undefined
pop.v.v local._sdf_pxrange
pushbltn.v builtin.undefined
pop.v.v local._sdf_thickness_offset
pushi.e 0
pop.v.i local._sdf_offset
pushi.e 0
pop.v.i local._sdf_height_offset

:[31]
pushloc.v local._texels_valid
push.v arg.argument6
pushloc.v local._sdf
conv.v.b
bf [33]

:[32]
pushi.e 2
conv.i.v
b [34]

:[33]
pushi.e 0
conv.i.v

:[34]
pushloc.v local._size
push.v arg.argument0
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
pushloc.v local._font_data
pushi.e -9
push.v [stacktop]self.__kerning_map
pop.v.v local._font_kerning_map
push.v arg.argument5
conv.v.b
bf [36]

:[35]
pushi.e 1
pushloc.v local._font_data
pushi.e -9
pop.v.b [stacktop]self.__is_krutidev

:[36]
pushloc.v local._font_data
pushi.e -9
push.v [stacktop]self.__bilinear
pushloc.v local._sdf_thickness_offset
pushloc.v local._sdf_pxrange
pushloc.v local._sdf
conv.v.b
bf [38]

:[37]
pushi.e 2
conv.i.v
b [39]

:[38]
pushi.e 0
conv.i.v

:[39]
pushloc.v local._texture_index
push.v arg.argument0
call.i gml_Script___scribble_get_material(argc=6)
pop.v.v local._material
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
pushloc.v local._material
push.l 11
conv.l.v
pushloc.v local._size
pushi.e 1
sub.i.v
push.l 11
conv.l.v
pushi.e 0
conv.i.v
pushloc.v local._font_glyph_data_grid
call.i ds_grid_set_region(argc=6)
popz.v
pushloc.v local._texels_valid
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
pushi.e 0
pop.v.i local._i
pushloc.v local._size
conv.v.i
dup.i 0
push.i 0
cmp.i.i LTE
bt [87]

:[40]
pushi.e -7
pushloc.v local._i
conv.v.i
push.v [array]self._info_glyphs_array
pop.v.v local._glyph_dict
pushloc.v local._glyph_dict
pushi.e -9
push.v [stacktop]self.char
pop.v.v local._unicode
pushloc.v local._unicode
pushi.e 12288
cmp.i.v GTE
bf [42]

:[41]
pushloc.v local._unicode
pushi.e 12351
cmp.i.v LTE
b [43]

:[42]
push.e 0

:[43]
bf [45]

:[44]
push.l 1
pop.v.l local._bidi
b [72]

:[45]
pushloc.v local._unicode
pushi.e 12352
cmp.i.v GTE
bf [47]

:[46]
pushloc.v local._unicode
pushi.e 12543
cmp.i.v LTE
b [48]

:[47]
push.e 0

:[48]
bf [50]

:[49]
push.l 3
pop.v.l local._bidi
b [72]

:[50]
pushloc.v local._unicode
pushi.e 19968
cmp.i.v GTE
bf [52]

:[51]
pushloc.v local._unicode
push.i 40959
cmp.i.v LTE
b [53]

:[52]
push.e 0

:[53]
bf [55]

:[54]
push.l 3
pop.v.l local._bidi
b [72]

:[55]
pushloc.v local._unicode
push.i 65280
cmp.i.v GTE
bf [57]

:[56]
pushloc.v local._unicode
push.i 65295
cmp.i.v LTE
b [58]

:[57]
push.e 0

:[58]
bf [60]

:[59]
push.l 1
pop.v.l local._bidi
b [72]

:[60]
pushloc.v local._unicode
push.i 65306
cmp.i.v GTE
bf [62]

:[61]
pushloc.v local._unicode
push.i 65311
cmp.i.v LTE
b [63]

:[62]
push.e 0

:[63]
bf [65]

:[64]
push.l 1
pop.v.l local._bidi
b [72]

:[65]
pushloc.v local._unicode
push.i 65371
cmp.i.v GTE
bf [67]

:[66]
pushloc.v local._unicode
push.i 65380
cmp.i.v LTE
b [68]

:[67]
push.e 0

:[68]
bf [70]

:[69]
push.l 1
pop.v.l local._bidi
b [72]

:[70]
pushloc.v local._unicode
pushloc.v local._global_glyph_bidi_map
call.i ds_map_find_value(argc=2)
pop.v.v local._bidi
pushloc.v local._bidi
pushbltn.v builtin.undefined
cmp.v.v EQ
bf [72]

:[71]
push.l 4
pop.v.l local._bidi

:[72]
push.v arg.argument5
conv.v.b
bf [75]

:[73]
pushloc.v local._bidi
push.l 0
cmp.l.v NEQ
bf [75]

:[74]
push.l 5
pop.v.l local._bidi
push.v local._unicode
push.i 65535
add.i.v
pop.v.v local._unicode

:[75]
push.i [variable]kerning
conv.i.v
pushloc.v local._glyph_dict
call.i struct_get_from_hash(argc=2)
pop.v.v local._kerning_array
pushloc.v local._kerning_array
call.i is_array(argc=1)
conv.v.b
bf [81]

:[76]
pushi.e 0
pop.v.i local._j
pushloc.v local._kerning_array
call.i array_length(argc=1)
pushi.e 2
rem.i.v
conv.v.i
dup.i 0
push.i 0
cmp.i.i LTE
bt [80]

:[77]
pushi.e -7
pushloc.v local._j
conv.v.i
push.v [array]self._kerning_array
pop.v.v local._first
pushloc.v local._first
pushi.e 0
cmp.i.v GT
bf [79]

:[78]
pushi.e -7
pushloc.v local._j
pushi.e 1
add.i.v
conv.v.i
push.v [array]self._kerning_array
pushloc.v local._unicode
conv.v.l
push.i 65535
and.i.l
pushi.e 16
conv.i.l
shl.l.l
pushloc.v local._first
conv.v.l
push.i 65535
and.i.l
or.l.l
conv.l.v
pushloc.v local._font_kerning_map
call.i ds_map_set(argc=3)
popz.v

:[79]
push.v local._j
pushi.e 2
add.i.v
pop.v.v local._j
pushi.e 1
sub.i.i
dup.i 0
bt [77]

:[80]
popz.i

:[81]
pushloc.v local._unicode
call.i chr(argc=1)
pop.v.v local._char
push.i [variable]x
conv.i.v
pushloc.v local._glyph_dict
call.i struct_get_from_hash(argc=2)
pop.v.v local._x
push.i [variable]y
conv.i.v
pushloc.v local._glyph_dict
call.i struct_get_from_hash(argc=2)
pop.v.v local._y
pushloc.v local._glyph_dict
pushi.e -9
push.v [stacktop]self.w
pop.v.v local._w
pushloc.v local._glyph_dict
pushi.e -9
push.v [stacktop]self.h
pop.v.v local._h
pushloc.v local._glyph_dict
pushi.e -9
push.v [stacktop]self.offset
push.d 0.5
pushloc.v local._sdf_offset
mul.v.d
add.v.v
pop.v.v local._xoffset
push.d 0.5
pushloc.v local._sdf_offset
mul.v.d
pop.v.v local._yoffset
pushloc.v local._sdf
conv.v.b
bf [83]

:[82]
pushi.e 0
b [84]

:[83]
push.e 0

:[84]
bf [86]

:[85]
push.v local._x
pushi.e 0
add.i.v
pop.v.v local._x
push.v local._y
pushi.e 0
add.i.v
pop.v.v local._y
push.v local._w
pushi.e 0
sub.i.v
pop.v.v local._w
push.v local._h
pushi.e 0
sub.i.v
pop.v.v local._h
push.v local._xoffset
pushi.e 0
add.i.v
pop.v.v local._xoffset
push.v local._yoffset
pushi.e 0
add.i.v
pop.v.v local._yoffset

:[86]
pushloc.v local._x
pushloc.v local._texture_tw
mul.v.v
pop.v.v local._u0
pushloc.v local._y
pushloc.v local._texture_th
mul.v.v
pop.v.v local._v0
pushloc.v local._u0
pushloc.v local._w
pushloc.v local._texture_tw
mul.v.v
add.v.v
pop.v.v local._u1
pushloc.v local._v0
pushloc.v local._h
pushloc.v local._texture_th
mul.v.v
add.v.v
pop.v.v local._v1
pushloc.v local._char
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
pushloc.v local._xoffset
push.l 3
conv.l.v
pushloc.v local._i
pushloc.v local._font_glyph_data_grid
call.i ds_grid_set(argc=4)
popz.v
pushloc.v local._yoffset
pushloc.v local._ascender_offset
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
pushloc.v local._h
pushloc.v local._sdf_height_offset
add.v.v
push.l 7
conv.l.v
pushloc.v local._i
pushloc.v local._font_glyph_data_grid
call.i ds_grid_set(argc=4)
popz.v
pushloc.v local._glyph_dict
pushi.e -9
push.v [stacktop]self.shift
push.l 8
conv.l.v
pushloc.v local._i
pushloc.v local._font_glyph_data_grid
call.i ds_grid_set(argc=4)
popz.v
pushloc.v local._glyph_dict
pushi.e -9
push.v [stacktop]self.offset
neg.v
push.l 9
conv.l.v
pushloc.v local._i
pushloc.v local._font_glyph_data_grid
call.i ds_grid_set(argc=4)
popz.v
pushloc.v local._u0
push.l 12
conv.l.v
pushloc.v local._i
pushloc.v local._font_glyph_data_grid
call.i ds_grid_set(argc=4)
popz.v
pushloc.v local._u1
push.l 13
conv.l.v
pushloc.v local._i
pushloc.v local._font_glyph_data_grid
call.i ds_grid_set(argc=4)
popz.v
pushloc.v local._v0
push.l 14
conv.l.v
pushloc.v local._i
pushloc.v local._font_glyph_data_grid
call.i ds_grid_set(argc=4)
popz.v
pushloc.v local._v1
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
push.v local._i
push.e 1
add.i.v
pop.v.v local._i
pushi.e 1
sub.i.i
dup.i 0
bt [40]

:[87]
popz.i
pushi.e 32
conv.i.v
pushloc.v local._font_glyphs_map
call.i ds_map_find_value(argc=2)
pop.v.v local._space_index
push.v arg.argument4
pushbltn.v builtin.undefined
cmp.v.v EQ
bf [89]

:[88]
push.l 6
conv.l.v
pushloc.v local._space_index
pushloc.v local._font_glyph_data_grid
call.i ds_grid_get(argc=3)
pop.v.v arg.argument4

:[89]
push.v arg.argument3
pushi.e -9
push.v [stacktop]self.ascender
pop.v.v local._ascender
pushloc.v local._ascender
pushi.e 0
cmp.i.v LTE
bf [91]

:[90]
push.v arg.argument3
pushi.e -9
push.v [stacktop]self.size
push.d 1.3333333333333333
mul.d.v
call.i floor(argc=1)
pop.v.v local._ascender
pushloc.v local._ascender
push.s "\" has an invalid ascender (value is less than or equal to 0). Estimated a value of "@3226
conv.s.v
push.v arg.argument0
push.s "Warning! Font \""@3227
conv.s.v
call.i gml_Script___scribble_trace(argc=4)
popz.v

:[91]
push.v arg.argument4
pushloc.v local._font_data
pushi.e -9
pop.v.v [stacktop]self.__height
pushloc.v local._ascender
pushloc.v local._font_data
pushi.e -9
pop.v.v [stacktop]self.__ascender
push.v arg.argument3
pushi.e -9
push.v [stacktop]self.ascenderOffset
pushloc.v local._font_data
pushi.e -9
pop.v.v [stacktop]self.__ascender_offset
push.v arg.argument3
pushi.e -9
push.v [stacktop]self.size
push.l 6
conv.l.v
pushloc.v local._space_index
pushloc.v local._font_glyph_data_grid
call.i ds_grid_get(argc=3)
div.v.v
pop.v.v local._GM_scaling
pushloc.v local._GM_scaling
pushi.e 1
cmp.i.v GT
bf [93]

:[92]
push.s "). Check that the font is rendering correctly. If it is not, try setting SCRIBBLE_ATTEMPT_FONT_SCALING_FIX to <false>"@3229
conv.s.v
pushloc.v local._GM_scaling
push.s ", scaling factor = "@3230
conv.s.v
push.l 6
conv.l.v
pushi.e 32
conv.i.v
pushloc.v local._font_glyphs_map
call.i ds_map_find_value(argc=2)
pushloc.v local._font_glyph_data_grid
call.i ds_grid_get(argc=3)
push.s ", space height = "@3231
conv.s.v
push.v arg.argument3
pushi.e -9
push.v [stacktop]self.size
push.s "\" may have been scaled during compilation (font size = "@3232
conv.s.v
push.v arg.argument0
push.s "Warning! Font \""@3227
conv.s.v
call.i gml_Script___scribble_trace(argc=9)
popz.v
pushloc.v local._GM_scaling
call.i ceil(argc=1)
push.v arg.argument0
call.i gml_Script_scribble_font_scale(argc=2)
popz.v

:[93]
b [95]

:[94]
pop.v.v local._error
call.i @@try_unhook@@(argc=0)
popz.v
pushloc.v local._error
call.i gml_Script___scribble_trace(argc=1)
popz.v
push.s "\"\nPlease reimport the font into GameMaker and reset character ranges\nIf this issue persists, please report it"@3235
conv.s.v
push.v arg.argument0
push.s "There was an error whilst reading \""@3236
conv.s.v
call.i gml_Script___scribble_error(argc=3)
popz.v
call.i @@finish_catch@@(argc=0)
popz.v
b [96]

:[95]
call.i @@try_unhook@@(argc=0)
popz.v

:[96]
exit.i

:[97]
push.i [function]gml_Script___scribble_font_add_from_info
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pop.v.v self.__scribble_font_add_from_info
popz.v

:[end]