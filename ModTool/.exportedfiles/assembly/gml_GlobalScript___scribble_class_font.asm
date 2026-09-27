:[0]
b [60]

> gml_Script___scribble_class_font (locals=0, argc=5)
:[1]
call.i @@SetStatic@@(argc=0)
isstaticok.e
bt [56]

:[2]
setstatic.e
call.i gml_Script___scribble_system(argc=0)
pushi.e -9
push.v [stacktop]self.__font_data_map
pop.v.v static._font_data_map
b [24]

> gml_Script___copy_to@anon@2001@__scribble_class_font@__scribble_class_font (locals=3, argc=2)
:[3]
call.i @@This@@(argc=0)
call.i variable_struct_get_names(argc=1)
pop.v.v local._names
pushi.e 0
pop.v.i local._i
pushloc.v local._names
call.i array_length(argc=1)
conv.v.i
dup.i 0
push.i 0
cmp.i.i LTE
bt [23]

:[4]
pushi.e -7
pushloc.v local._i
conv.v.i
push.v [array]self._names
pop.v.v local._name
pushloc.v local._name
push.s "__glyphs_map"@2580
cmp.s.v EQ
bf [6]

:[5]
push.v builtin.__glyphs_map
push.v arg.argument0
pushi.e -9
push.v [stacktop]self.__glyphs_map
call.i ds_map_copy(argc=2)
popz.v
b [22]

:[6]
pushloc.v local._name
push.s "__glyph_data_grid"@2582
cmp.s.v EQ
bf [8]

:[7]
push.v builtin.__glyph_data_grid
push.v arg.argument0
pushi.e -9
push.v [stacktop]self.__glyph_data_grid
call.i ds_grid_copy(argc=2)
popz.v
b [22]

:[8]
pushloc.v local._name
push.s "__name"@2584
cmp.s.v NEQ
bf [19]

:[9]
pushloc.v local._name
push.s "__from_bundle"@2585
cmp.s.v NEQ
bf [19]

:[10]
push.v arg.argument1
conv.v.b
bt [17]

:[11]
pushloc.v local._name
push.s "__style_regular"@2586
cmp.s.v NEQ
bf [15]

:[12]
pushloc.v local._name
push.s "__style_bold"@2587
cmp.s.v NEQ
bf [15]

:[13]
pushloc.v local._name
push.s "__style_italic"@2588
cmp.s.v NEQ
bf [15]

:[14]
pushloc.v local._name
push.s "__style_bold_italic"@2589
cmp.s.v NEQ
b [16]

:[15]
push.e 0

:[16]
b [18]

:[17]
push.e 1

:[18]
b [20]

:[19]
push.e 0

:[20]
bf [22]

:[21]
pushloc.v local._name
call.i @@This@@(argc=0)
call.i variable_struct_get(argc=2)
pushloc.v local._name
push.v arg.argument0
call.i variable_struct_set(argc=3)
popz.v

:[22]
push.v local._i
push.e 1
add.i.v
pop.v.v local._i
pushi.e 1
sub.i.i
dup.i 0
bt [4]

:[23]
popz.i
exit.i

:[24]
push.i [function]gml_Script___copy_to@anon@2001@__scribble_class_font@__scribble_class_font
conv.i.v
pushi.e -16
conv.i.v
call.i method(argc=2)
pop.v.v static.__copy_to
b [28]

> gml_Script___clear@anon@2955@__scribble_class_font@__scribble_class_font (locals=0, argc=0)
:[25]
push.v builtin.__superfont
conv.v.b
not.b
bf [27]

:[26]
push.s "Cannot clear non-superfont fonts"@2593
conv.s.v
call.i gml_Script___scribble_error(argc=1)
popz.v

:[27]
push.v builtin.__glyphs_map
call.i ds_map_clear(argc=1)
popz.v
pushi.e 0
pop.v.i builtin.__height
pushi.e 0
pop.v.b builtin.__texels_valid
exit.i

:[28]
push.i [function]gml_Script___clear@anon@2955@__scribble_class_font@__scribble_class_font
conv.i.v
pushi.e -16
conv.i.v
call.i method(argc=2)
pop.v.v static.__clear
b [34]

> gml_Script___ensure_material_textures_fetched@anon@3229@__scribble_class_font@__scribble_class_font (locals=5, argc=0)
:[29]
push.v builtin.__glyph_data_grid
pop.v.v local._glyph_data_grid
pushloc.v local._glyph_data_grid
call.i ds_grid_width(argc=1)
pop.v.v local._glyph_count
pushi.e 0
pop.v.i local._i
pushloc.v local._glyph_count
conv.v.i
dup.i 0
push.i 0
cmp.i.i LTE
bt [33]

:[30]
push.l 11
conv.l.v
pushloc.v local._i
pushloc.v local._glyph_data_grid
call.i ds_grid_get(argc=3)
pop.v.v local._material
pushloc.v local._material
pushi.e -9
push.v [stacktop]self.__texture
pop.v.v local._texture_index
pushloc.v local._texture_index
pushbltn.v builtin.undefined
cmp.v.v NEQ
bf [32]

:[31]
pushloc.v local._texture_index
call.i texture_prefetch(argc=1)
popz.v

:[32]
push.v local._i
push.e 1
add.i.v
pop.v.v local._i
pushi.e 1
sub.i.i
dup.i 0
bt [30]

:[33]
popz.i
exit.i

:[34]
push.i [function]gml_Script___ensure_material_textures_fetched@anon@3229@__scribble_class_font@__scribble_class_font
conv.i.v
pushi.e -16
conv.i.v
call.i method(argc=2)
pop.v.v static.__ensure_material_textures_fetched
b [51]

> gml_Script___ensure_texel_data@anon@3985@__scribble_class_font@__scribble_class_font (locals=8, argc=0)
:[35]
push.v builtin.__texels_valid
conv.v.b
bf [37]

:[36]
exit.i

:[37]
push.v builtin.__glyph_data_grid
pop.v.v local._glyph_data_grid
pushloc.v local._glyph_data_grid
call.i ds_grid_width(argc=1)
pop.v.v local._glyph_count
pushi.e 0
conv.b.v
push.l 16
conv.l.v
pushloc.v local._glyph_count
pushi.e 1
sub.i.v
push.l 16
conv.l.v
pushi.e 0
conv.i.v
pushloc.v local._glyph_data_grid
call.i ds_grid_value_exists(argc=6)
conv.v.b
not.b
bf [39]

:[38]
pushi.e 1
pop.v.b builtin.__texels_valid
exit.i

:[39]
pushi.e 1
pop.v.b local._all_ready
pushi.e 0
pop.v.i local._i
pushloc.v local._glyph_count
conv.v.i
dup.i 0
push.i 0
cmp.i.i LTE
bt [48]

:[40]
push.l 16
conv.l.v
pushloc.v local._i
pushloc.v local._glyph_data_grid
call.i ds_grid_get(argc=3)
conv.v.b
not.b
bf [47]

:[41]
push.l 11
conv.l.v
pushloc.v local._i
pushloc.v local._glyph_data_grid
call.i ds_grid_get(argc=3)
pop.v.v local._material
pushloc.v local._material
pushi.e -9
push.v [stacktop]self.__texture
pop.v.v local._texture_index
pushloc.v local._texture_index
pushbltn.v builtin.undefined
cmp.v.v NEQ
bf [43]

:[42]
pushloc.v local._texture_index
call.i texture_is_ready(argc=1)
conv.v.b
b [44]

:[43]
push.e 0

:[44]
bf [46]

:[45]
pushi.e 1
conv.b.v
push.l 16
conv.l.v
pushloc.v local._i
pushloc.v local._glyph_data_grid
call.i ds_grid_set(argc=4)
popz.v
pushloc.v local._texture_index
call.i texture_get_texel_width(argc=1)
pop.v.v local._texel_w
pushloc.v local._texture_index
call.i texture_get_texel_height(argc=1)
pop.v.v local._texel_h
push.l 12
conv.l.v
pushloc.v local._i
pushloc.v local._glyph_data_grid
call.i ds_grid_get(argc=3)
pushloc.v local._texel_w
mul.v.v
push.l 12
conv.l.v
pushloc.v local._i
pushloc.v local._glyph_data_grid
call.i ds_grid_set(argc=4)
popz.v
push.l 14
conv.l.v
pushloc.v local._i
pushloc.v local._glyph_data_grid
call.i ds_grid_get(argc=3)
pushloc.v local._texel_h
mul.v.v
push.l 14
conv.l.v
pushloc.v local._i
pushloc.v local._glyph_data_grid
call.i ds_grid_set(argc=4)
popz.v
push.l 13
conv.l.v
pushloc.v local._i
pushloc.v local._glyph_data_grid
call.i ds_grid_get(argc=3)
pushloc.v local._texel_w
mul.v.v
push.l 13
conv.l.v
pushloc.v local._i
pushloc.v local._glyph_data_grid
call.i ds_grid_set(argc=4)
popz.v
push.l 15
conv.l.v
pushloc.v local._i
pushloc.v local._glyph_data_grid
call.i ds_grid_get(argc=3)
pushloc.v local._texel_h
mul.v.v
push.l 15
conv.l.v
pushloc.v local._i
pushloc.v local._glyph_data_grid
call.i ds_grid_set(argc=4)
popz.v
b [47]

:[46]
pushi.e 0
pop.v.b local._all_ready

:[47]
push.v local._i
push.e 1
add.i.v
pop.v.v local._i
pushi.e 1
sub.i.i
dup.i 0
bt [40]

:[48]
popz.i
pushloc.v local._all_ready
conv.v.b
bf [50]

:[49]
pushi.e 1
pop.v.b builtin.__texels_valid

:[50]
exit.i

:[51]
push.i [function]gml_Script___ensure_texel_data@anon@3985@__scribble_class_font@__scribble_class_font
conv.i.v
pushi.e -16
conv.i.v
call.i method(argc=2)
pop.v.v static.__ensure_texel_data
b [55]

> gml_Script___destroy@anon@5939@__scribble_class_font@__scribble_class_font (locals=0, argc=0)
:[52]
push.v builtin.__glyphs_map
call.i ds_map_destroy(argc=1)
popz.v
push.v builtin.__glyph_data_grid
call.i ds_grid_destroy(argc=1)
popz.v
push.v builtin.__name
push.v builtin._font_data_map
call.i ds_map_delete(argc=2)
popz.v
push.v builtin.__source_sprite
pushbltn.v builtin.undefined
cmp.v.v NEQ
bf [54]

:[53]
push.v builtin.__source_sprite
call.i sprite_delete(argc=1)
popz.v
pushbltn.v builtin.undefined
pop.v.v builtin.__source_sprite

:[54]
exit.i

:[55]
push.i [function]gml_Script___destroy@anon@5939@__scribble_class_font@__scribble_class_font
conv.i.v
pushi.e -16
conv.i.v
call.i method(argc=2)
pop.v.v static.__destroy

:[56]
push.v arg.argument0
pop.v.v builtin.__name
push.v arg.argument2
pop.v.v builtin.__render_type
push.v arg.argument3
pop.v.v builtin.__from_bundle
push.v arg.argument4
pop.v.v builtin.__texels_valid
call.i @@This@@(argc=0)
push.v arg.argument0
push.v static._font_data_map
call.i ds_map_set(argc=3)
popz.v
push.l 17
conv.l.v
push.v arg.argument1
call.i ds_grid_create(argc=2)
pop.v.v builtin.__glyph_data_grid
call.i ds_map_create(argc=0)
pop.v.v builtin.__glyphs_map
call.i ds_map_create(argc=0)
pop.v.v builtin.__kerning_map
pushi.e 0
pop.v.b builtin.__is_krutidev
push.v builtin.__render_type
pushi.e 2
cmp.i.v EQ
bf [58]

:[57]
pushi.e 1
conv.b.v
b [59]

:[58]
pushbltn.v builtin.undefined

:[59]
pop.v.v builtin.__bilinear
pushi.e 0
pop.v.b builtin.__superfont
pushi.e 0
pop.v.b builtin.__runtime
pushbltn.v builtin.undefined
pop.v.v builtin.__source_sprite
pushbltn.v builtin.undefined
pop.v.v builtin.__remap
pushi.e 1
pop.v.i builtin.__scale
pushi.e 0
pop.v.i builtin.__height
pushi.e 0
pop.v.i builtin.__ascender
pushi.e 0
pop.v.i builtin.__ascender_offset
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i @@NewGMLArray@@(argc=7)
pop.v.v builtin.__halign_offset_array
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i @@NewGMLArray@@(argc=6)
pop.v.v builtin.__valign_offset_array
pushbltn.v builtin.undefined
pop.v.v builtin.__style_regular
pushbltn.v builtin.undefined
pop.v.v builtin.__style_bold
pushbltn.v builtin.undefined
pop.v.v builtin.__style_italic
pushbltn.v builtin.undefined
pop.v.v builtin.__style_bold_italic
exit.i

:[60]
push.i [function]gml_Script___scribble_class_font
conv.i.v
call.i @@NullObject@@(argc=0)
call.i method(argc=2)
dup.v 0
pop.v.v self.__scribble_class_font
popz.v

:[end]