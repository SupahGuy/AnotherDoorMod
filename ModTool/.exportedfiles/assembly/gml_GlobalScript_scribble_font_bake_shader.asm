:[0]
b [44]

> gml_Script_scribble_font_bake_shader (locals=37, argc=12)
:[1]
pushbltn.v builtin.argument10
pushbltn.v builtin.undefined
cmp.v.v EQ
bf [3]

:[2]
pushi.e 2048
pop.v.i builtin.argument10

:[3]
pushbltn.v builtin.argument11
pushbltn.v builtin.undefined
cmp.v.v EQ
bf [5]

:[4]
pushi.e 0
pop.v.b builtin.argument11

:[5]
isstaticok.e
bt [7]

:[6]
setstatic.e
call.i gml_Script___scribble_system(argc=0)
pushi.e -9
push.v [stacktop]self.__font_data_map
pop.v.v static._font_data_map
pushbltn.v builtin.undefined
pop.v.v static._vertex_format

:[7]
push.v arg.argument0
call.i is_string(argc=1)
conv.v.b
not.b
bf [9]

:[8]
push.s "Fonts should be specified using their name as a string.\n(Input was an invalid datatype)"@7831
conv.s.v
call.i gml_Script___scribble_error(argc=1)
popz.v
exit.i

:[9]
push.v arg.argument1
call.i is_string(argc=1)
conv.v.b
not.b
bf [11]

:[10]
push.s "Fonts should be specified using their name as a string.\n(Input was an invalid datatype)"@7831
conv.s.v
call.i gml_Script___scribble_error(argc=1)
popz.v
exit.i

:[11]
push.v arg.argument0
push.v arg.argument1
cmp.v.v EQ
bf [13]

:[12]
push.s "Source font and new font cannot share the same name"@7832
conv.s.v
call.i gml_Script___scribble_error(argc=1)
popz.v
exit.i

:[13]
push.v arg.argument0
push.v static._font_data_map
call.i ds_map_find_value(argc=2)
pop.v.v local._src_font_data
pushloc.v local._src_font_data
call.i is_struct(argc=1)
conv.v.b
not.b
bf [15]

:[14]
push.s "\" will not be available"@7834
conv.s.v
push.v arg.argument1
push.s "\" not found\n\""@7835
conv.s.v
push.v arg.argument0
push.s "Source font \""@7836
conv.s.v
call.i gml_Script___scribble_error(argc=5)
popz.v
exit.i

:[15]
pushloc.v local._src_font_data
pushi.e -9
push.v [stacktop]self.__render_type
pushi.e 1
cmp.i.v EQ
bf [17]

:[16]
push.s "Source font cannot already have effects baked into it"@7837
conv.s.v
call.i gml_Script___scribble_error(argc=1)
popz.v
exit.i

:[17]
pushloc.v local._src_font_data
pushi.e -9
push.v [stacktop]self.__render_type
pushi.e 2
cmp.i.v EQ
bf [19]

:[18]
push.s "Source font cannot be an SDF font"@7838
conv.s.v
call.i gml_Script___scribble_error(argc=1)
popz.v
exit.i

:[19]
push.v arg.argument1
call.i gml_Script_scribble_font_exists(argc=1)
conv.v.b
bf [21]

:[20]
push.v arg.argument1
push.s "A font called \"{0}\" already exists"@7839
conv.s.v
call.i @@string@@(argc=2)
call.i gml_Script___scribble_error(argc=1)
popz.v
exit.i

:[21]
pushloc.v local._src_font_data
dup.v 0 8
dup.v 0
push.v stacktop.__ensure_material_textures_fetched
callv.v 0
popz.v
pushloc.v local._src_font_data
dup.v 0 8
dup.v 0
push.v stacktop.__ensure_texel_data
callv.v 0
popz.v
pushloc.v local._src_font_data
pushi.e -9
push.v [stacktop]self.__glyph_data_grid
pop.v.v local._src_glyph_grid
pushloc.v local._src_glyph_grid
call.i ds_grid_width(argc=1)
pop.v.v local._glyph_count
pushi.e 1
conv.b.v
pushi.e 0
conv.b.v
pushbltn.v builtin.undefined
pushloc.v local._glyph_count
push.v arg.argument1
push.i [function]gml_Script___scribble_class_font
conv.i.v
call.i @@NewGMLObject@@(argc=6)
pop.v.v local._new_font_data
push.v arg.argument9
pushloc.v local._new_font_data
pushi.e -9
pop.v.v [stacktop]self.__bilinear
pushi.e 1
pushloc.v local._new_font_data
pushi.e -9
pop.v.b [stacktop]self.__runtime
pushloc.v local._new_font_data
pushi.e -9
push.v [stacktop]self.__glyph_data_grid
pop.v.v local._new_glyphs_grid
pushloc.v local._src_font_data
pushi.e 0
conv.b.v
pushloc.v local._new_font_data
dup.v 2 8
dup.v 0
push.v stacktop.__copy_to
callv.v 2
popz.v
push.v arg.argument11
conv.v.b
bf [23]

:[22]
pushi.e 1
pushloc.v local._new_font_data
pushi.e -9
pop.v.i [stacktop]self.__render_type

:[23]
call.i ds_map_create(argc=0)
pop.v.v local._vbuff_data_map
pushi.e 0
pop.v.i local._line_x
pushi.e 0
pop.v.i local._line_y
pushi.e 0
pop.v.i local._line_height
pushi.e 0
pop.v.i local._i
pushloc.v local._glyph_count
conv.v.i
dup.i 0
push.i 0
cmp.i.i LTE
bt [41]

:[24]
push.l 11
conv.l.v
pushloc.v local._i
pushloc.v local._src_glyph_grid
call.i ds_grid_get(argc=3)
pop.v.v local._material
pushloc.v local._material
pushi.e -9
push.v [stacktop]self.__texture
pop.v.v local._texture
pushloc.v local._texture
call.i texture_is_ready(argc=1)
conv.v.b
not.b
bf [26]

:[25]
pushloc.v local._material
pushi.e -9
push.v [stacktop]self.__key
pushloc.v local._material
pushi.e -9
push.v [stacktop]self.__debug_font_name
pushloc.v local._texture
call.i string(argc=1)
push.v arg.argument0
push.s "Font \"{0}\" texture {1} not ready.\nIs the source graphic in an unloaded or unfetched dynamic texture group?\nMaterial debug name:\"{2}\"\nMaterial key:\"{3}\""@7845
conv.s.v
call.i @@string@@(argc=5)
call.i gml_Script___scribble_error(argc=1)
popz.v

:[26]
pushloc.v local._texture
pushbltn.v builtin.undefined
cmp.v.v EQ
bf [28]

:[27]
push.v local._i
push.e 1
add.i.v
pop.v.v local._i
b [40]

:[28]
push.l 5
conv.l.v
pushloc.v local._i
pushloc.v local._src_glyph_grid
call.i ds_grid_get(argc=3)
pop.v.v local._width
push.l 6
conv.l.v
pushloc.v local._i
pushloc.v local._src_glyph_grid
call.i ds_grid_get(argc=3)
pop.v.v local._height
push.l 12
conv.l.v
pushloc.v local._i
pushloc.v local._src_glyph_grid
call.i ds_grid_get(argc=3)
pop.v.v local._u0
push.l 14
conv.l.v
pushloc.v local._i
pushloc.v local._src_glyph_grid
call.i ds_grid_get(argc=3)
pop.v.v local._v0
push.l 13
conv.l.v
pushloc.v local._i
pushloc.v local._src_glyph_grid
call.i ds_grid_get(argc=3)
pop.v.v local._u1
push.l 15
conv.l.v
pushloc.v local._i
pushloc.v local._src_glyph_grid
call.i ds_grid_get(argc=3)
pop.v.v local._v1
pushloc.v local._width
push.v arg.argument3
add.v.v
push.v arg.argument4
add.v.v
push.v arg.argument6
add.v.v
pop.v.v local._width_ext
pushloc.v local._height
push.v arg.argument3
add.v.v
push.v arg.argument5
add.v.v
push.v arg.argument7
add.v.v
pop.v.v local._height_ext
pushloc.v local._line_y
pushloc.v local._height_ext
add.v.v
push.v arg.argument10
cmp.v.v GTE
bf [30]

:[29]
push.s " texture page\nPlease increase the size of the texture page"@7850
conv.s.v
push.v arg.argument10
push.s "x"@256
conv.s.v
push.v arg.argument10
push.s "No space left on "@7851
conv.s.v
call.i gml_Script___scribble_error(argc=5)
popz.v
pushloc.v local._vbuff
call.i vertex_end(argc=1)
popz.v
pushloc.v local._vbuff
call.i vertex_delete_buffer(argc=1)
popz.v
popz.i
exit.i

:[30]
pushloc.v local._line_x
pushloc.v local._width_ext
add.v.v
push.v arg.argument10
cmp.v.v GTE
bf [32]

:[31]
pushi.e 0
pop.v.i local._line_x
push.v local._line_y
pushloc.v local._line_height
add.v.v
pop.v.v local._line_y
pushi.e 0
pop.v.i local._line_height

:[32]
pushloc.v local._texture
call.i string(argc=1)
pushloc.v local._vbuff_data_map
call.i ds_map_find_value(argc=2)
pop.v.v local._vbuff_data
pushloc.v local._vbuff_data
pushbltn.v builtin.undefined
cmp.v.v EQ
bf [38]

:[33]
push.v static._vertex_format
pushbltn.v builtin.undefined
cmp.v.v EQ
bf [35]

:[34]
call.i vertex_format_begin(argc=0)
popz.v
call.i vertex_format_add_position(argc=0)
popz.v
call.i vertex_format_add_color(argc=0)
popz.v
call.i vertex_format_add_texcoord(argc=0)
popz.v
call.i vertex_format_end(argc=0)
pop.v.v static._vertex_format

:[35]
call.i vertex_create_buffer(argc=0)
pop.v.v local._vbuff
push.v static._vertex_format
pushloc.v local._vbuff
call.i vertex_begin(argc=2)
popz.v
pushloc.v local._texture
pushloc.v local._vbuff
b [37]

> gml_Script____struct___308@scribble_font_bake_shader@scribble_font_bake_shader (locals=0, argc=0)
:[36]
call.i @@SetStatic@@(argc=0)
pushi.e -15
pushi.e 0
push.v [array]self.argument
pop.v.v self.__vertex_buffer
pushi.e -15
pushi.e 1
push.v [array]self.argument
pop.v.v self.__texture
exit.i

:[37]
push.i [function]gml_Script____struct___308@scribble_font_bake_shader@scribble_font_bake_shader
conv.i.v
call.i @@NullObject@@(argc=0)
call.i method(argc=2)
dup.v 0
pop.v.v global.___struct___308
call.i @@NewGMLObject@@(argc=3)
pushloc.v local._texture
call.i string(argc=1)
pushloc.v local._vbuff_data_map
call.i ds_map_set(argc=3)
popz.v
b [39]

:[38]
pushloc.v local._vbuff_data
pushi.e -9
push.v [stacktop]self.__vertex_buffer
pop.v.v local._vbuff

:[39]
push.v arg.argument4
pushloc.v local._line_x
add.v.v
pop.v.v local._l
push.v arg.argument5
pushloc.v local._line_y
add.v.v
pop.v.v local._t
pushloc.v local._l
pushloc.v local._width
add.v.v
pop.v.v local._r
pushloc.v local._t
pushloc.v local._height
add.v.v
pop.v.v local._b
pushloc.v local._t
pushloc.v local._l
pushloc.v local._vbuff
call.i vertex_position(argc=3)
popz.v
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
pushloc.v local._vbuff
call.i vertex_color(argc=3)
popz.v
pushloc.v local._v0
pushloc.v local._u0
pushloc.v local._vbuff
call.i vertex_texcoord(argc=3)
popz.v
pushloc.v local._t
pushloc.v local._r
pushloc.v local._vbuff
call.i vertex_position(argc=3)
popz.v
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
pushloc.v local._vbuff
call.i vertex_color(argc=3)
popz.v
pushloc.v local._v0
pushloc.v local._u1
pushloc.v local._vbuff
call.i vertex_texcoord(argc=3)
popz.v
pushloc.v local._b
pushloc.v local._l
pushloc.v local._vbuff
call.i vertex_position(argc=3)
popz.v
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
pushloc.v local._vbuff
call.i vertex_color(argc=3)
popz.v
pushloc.v local._v1
pushloc.v local._u0
pushloc.v local._vbuff
call.i vertex_texcoord(argc=3)
popz.v
pushloc.v local._t
pushloc.v local._r
pushloc.v local._vbuff
call.i vertex_position(argc=3)
popz.v
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
pushloc.v local._vbuff
call.i vertex_color(argc=3)
popz.v
pushloc.v local._v0
pushloc.v local._u1
pushloc.v local._vbuff
call.i vertex_texcoord(argc=3)
popz.v
pushloc.v local._b
pushloc.v local._r
pushloc.v local._vbuff
call.i vertex_position(argc=3)
popz.v
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
pushloc.v local._vbuff
call.i vertex_color(argc=3)
popz.v
pushloc.v local._v1
pushloc.v local._u1
pushloc.v local._vbuff
call.i vertex_texcoord(argc=3)
popz.v
pushloc.v local._b
pushloc.v local._l
pushloc.v local._vbuff
call.i vertex_position(argc=3)
popz.v
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
pushloc.v local._vbuff
call.i vertex_color(argc=3)
popz.v
pushloc.v local._v1
pushloc.v local._u0
pushloc.v local._vbuff
call.i vertex_texcoord(argc=3)
popz.v
pushloc.v local._line_x
push.l 12
conv.l.v
pushloc.v local._i
pushloc.v local._new_glyphs_grid
call.i ds_grid_set(argc=4)
popz.v
pushloc.v local._line_y
push.l 14
conv.l.v
pushloc.v local._i
pushloc.v local._new_glyphs_grid
call.i ds_grid_set(argc=4)
popz.v
pushloc.v local._line_x
pushloc.v local._width
add.v.v
push.v arg.argument4
add.v.v
push.v arg.argument6
add.v.v
push.l 13
conv.l.v
pushloc.v local._i
pushloc.v local._new_glyphs_grid
call.i ds_grid_set(argc=4)
popz.v
pushloc.v local._line_y
pushloc.v local._height
add.v.v
push.v arg.argument5
add.v.v
push.v arg.argument7
add.v.v
push.l 15
conv.l.v
pushloc.v local._i
pushloc.v local._new_glyphs_grid
call.i ds_grid_set(argc=4)
popz.v
push.v local._line_x
pushloc.v local._width_ext
add.v.v
pop.v.v local._line_x
pushloc.v local._height_ext
pushloc.v local._line_height
call.i max(argc=2)
pop.v.v local._line_height
push.v local._i
push.e 1
add.i.v
pop.v.v local._i

:[40]
pushi.e 1
sub.i.i
dup.i 0
bt [24]

:[41]
popz.i
push.v arg.argument10
push.v arg.argument10
call.i surface_create(argc=2)
pop.v.v local._surface_0
pushloc.v local._surface_0
call.i surface_set_target(argc=1)
popz.v
pushi.e 0
conv.i.v
push.i 16777215
conv.i.v
call.i draw_clear_alpha(argc=2)
popz.v
pushi.e 0
conv.b.v
call.i gpu_set_blendenable(argc=1)
popz.v
pushloc.v local._vbuff_data_map
call.i ds_map_values_to_array(argc=1)
pop.v.v local._vbuff_data_array
pushi.e 0
pop.v.i local._i
pushloc.v local._vbuff_data_array
call.i array_length(argc=1)
conv.v.i
dup.i 0
push.i 0
cmp.i.i LTE
bt [43]

:[42]
pushi.e -7
pushloc.v local._i
conv.v.i
push.v [array]self._vbuff_data_array
pop.v.v local._vbuff_data
pushloc.v local._vbuff_data
pushi.e -9
push.v [stacktop]self.__vertex_buffer
pop.v.v local._vbuff
pushloc.v local._vbuff
call.i vertex_end(argc=1)
popz.v
pushloc.v local._vbuff_data
pushi.e -9
push.v [stacktop]self.__texture
pushi.e 4
conv.i.v
pushloc.v local._vbuff
call.i vertex_submit(argc=3)
popz.v
pushloc.v local._vbuff
call.i vertex_delete_buffer(argc=1)
popz.v
push.v local._i
push.e 1
add.i.v
pop.v.v local._i
pushi.e 1
sub.i.i
dup.i 0
bt [42]

:[43]
popz.i
pushloc.v local._vbuff_data_map
call.i ds_map_destroy(argc=1)
popz.v
push.v arg.argument10
push.v arg.argument10
call.i surface_create(argc=2)
pop.v.v local._surface_1
pushi.e 1
conv.b.v
call.i gpu_set_blendenable(argc=1)
popz.v
call.i surface_reset_target(argc=0)
popz.v
pushloc.v local._surface_0
call.i surface_get_texture(argc=1)
pop.v.v local._texture
pushloc.v local._surface_1
call.i surface_set_target(argc=1)
popz.v
pushi.e 0
conv.i.v
push.i 16777215
conv.i.v
call.i draw_clear_alpha(argc=2)
popz.v
call.i gpu_get_tex_filter(argc=0)
pop.v.v local._old_filter
push.v arg.argument9
call.i gpu_set_tex_filter(argc=1)
popz.v
pushi.e 0
conv.b.v
call.i gpu_set_blendenable(argc=1)
popz.v
push.v arg.argument2
call.i shader_set(argc=1)
popz.v
pushloc.v local._texture
call.i texture_get_texel_height(argc=1)
pushloc.v local._texture
call.i texture_get_texel_width(argc=1)
push.s "u_vTexel"@2857
conv.s.v
push.v arg.argument2
call.i shader_get_uniform(argc=2)
call.i shader_set_uniform_f(argc=3)
popz.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushloc.v local._surface_0
call.i draw_surface(argc=3)
popz.v
call.i shader_reset(argc=0)
popz.v
pushloc.v local._old_filter
call.i gpu_set_tex_filter(argc=1)
popz.v
pushi.e 1
conv.b.v
call.i gpu_set_blendenable(argc=1)
popz.v
call.i surface_reset_target(argc=0)
popz.v
pushloc.v local._surface_0
call.i surface_free(argc=1)
popz.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.b.v
pushi.e 0
conv.b.v
push.v arg.argument10
push.v arg.argument10
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushloc.v local._surface_1
call.i sprite_create_from_surface(argc=9)
pop.v.v local._sprite
pushloc.v local._sprite
pushloc.v local._new_font_data
pushi.e -9
pop.v.v [stacktop]self.__source_sprite
pushloc.v local._surface_1
call.i surface_free(argc=1)
popz.v
pushloc.v local._new_font_data
pushi.e -9
push.v [stacktop]self.__bilinear
pushbltn.v builtin.undefined
pushbltn.v builtin.undefined
pushloc.v local._new_font_data
pushi.e -9
push.v [stacktop]self.__render_type
pushi.e 0
conv.i.v
pushloc.v local._sprite
call.i gml_Script___scribble_sprite_get_texture_index(argc=2)
push.v arg.argument1
call.i gml_Script___scribble_get_material(argc=6)
pop.v.v local._new_material
push.v arg.argument4
neg.v
push.l 3
conv.l.v
pushloc.v local._glyph_count
pushi.e 1
sub.i.v
push.l 3
conv.l.v
pushi.e 0
conv.i.v
pushloc.v local._new_glyphs_grid
call.i ds_grid_add_region(argc=6)
popz.v
push.v arg.argument5
neg.v
push.l 4
conv.l.v
pushloc.v local._glyph_count
pushi.e 1
sub.i.v
push.l 4
conv.l.v
pushi.e 0
conv.i.v
pushloc.v local._new_glyphs_grid
call.i ds_grid_add_region(argc=6)
popz.v
push.v arg.argument4
push.v arg.argument6
add.v.v
push.l 5
conv.l.v
pushloc.v local._glyph_count
pushi.e 1
sub.i.v
push.l 5
conv.l.v
pushi.e 0
conv.i.v
pushloc.v local._new_glyphs_grid
call.i ds_grid_add_region(argc=6)
popz.v
push.v arg.argument5
push.v arg.argument7
add.v.v
push.l 6
conv.l.v
pushloc.v local._glyph_count
pushi.e 1
sub.i.v
push.l 6
conv.l.v
pushi.e 0
conv.i.v
pushloc.v local._new_glyphs_grid
call.i ds_grid_add_region(argc=6)
popz.v
push.v arg.argument5
push.v arg.argument7
add.v.v
push.l 7
conv.l.v
pushloc.v local._glyph_count
pushi.e 1
sub.i.v
push.l 7
conv.l.v
pushi.e 0
conv.i.v
pushloc.v local._new_glyphs_grid
call.i ds_grid_add_region(argc=6)
popz.v
push.v arg.argument8
push.l 8
conv.l.v
pushloc.v local._glyph_count
pushi.e 1
sub.i.v
push.l 8
conv.l.v
pushi.e 0
conv.i.v
pushloc.v local._new_glyphs_grid
call.i ds_grid_add_region(argc=6)
popz.v
pushloc.v local._new_material
push.l 11
conv.l.v
pushloc.v local._glyph_count
pushi.e 1
sub.i.v
push.l 11
conv.l.v
pushi.e 0
conv.i.v
pushloc.v local._new_glyphs_grid
call.i ds_grid_set_region(argc=6)
popz.v
pushi.e 0
conv.i.v
pushloc.v local._sprite
call.i sprite_get_uvs(argc=2)
pop.v.v local._sprite_uvs
pushi.e -7
pushi.e 0
push.v [array]self._sprite_uvs
pop.v.v local._sprite_u0
pushi.e -7
pushi.e 1
push.v [array]self._sprite_uvs
pop.v.v local._sprite_v0
pushi.e -7
pushi.e 2
push.v [array]self._sprite_uvs
pop.v.v local._sprite_u1
pushi.e -7
pushi.e 3
push.v [array]self._sprite_uvs
pop.v.v local._sprite_v1
pushi.e 1
conv.i.d
push.v arg.argument10
div.v.d
push.l 15
conv.l.v
pushloc.v local._glyph_count
pushi.e 1
sub.i.v
push.l 12
conv.l.v
pushi.e 0
conv.i.v
pushloc.v local._new_glyphs_grid
call.i ds_grid_multiply_region(argc=6)
popz.v
pushloc.v local._sprite_u1
pushloc.v local._sprite_u0
sub.v.v
push.l 13
conv.l.v
pushloc.v local._glyph_count
pushi.e 1
sub.i.v
push.l 12
conv.l.v
pushi.e 0
conv.i.v
pushloc.v local._new_glyphs_grid
call.i ds_grid_multiply_region(argc=6)
popz.v
pushloc.v local._sprite_v1
pushloc.v local._sprite_v0
sub.v.v
push.l 15
conv.l.v
pushloc.v local._glyph_count
pushi.e 1
sub.i.v
push.l 14
conv.l.v
pushi.e 0
conv.i.v
pushloc.v local._new_glyphs_grid
call.i ds_grid_multiply_region(argc=6)
popz.v
pushloc.v local._sprite_u0
push.l 13
conv.l.v
pushloc.v local._glyph_count
pushi.e 1
sub.i.v
push.l 12
conv.l.v
pushi.e 0
conv.i.v
pushloc.v local._new_glyphs_grid
call.i ds_grid_add_region(argc=6)
popz.v
pushloc.v local._sprite_v0
push.l 15
conv.l.v
pushloc.v local._glyph_count
pushi.e 1
sub.i.v
push.l 14
conv.l.v
pushi.e 0
conv.i.v
pushloc.v local._new_glyphs_grid
call.i ds_grid_add_region(argc=6)
popz.v
pushi.e 1
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
pushloc.v local._new_glyphs_grid
call.i ds_grid_set_region(argc=6)
popz.v
exit.i

:[44]
push.i [function]gml_Script_scribble_font_bake_shader
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pop.v.v self.scribble_font_bake_shader
popz.v

:[end]