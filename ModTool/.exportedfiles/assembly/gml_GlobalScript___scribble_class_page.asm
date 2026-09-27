:[0]
b [89]

> gml_Script___scribble_class_page (locals=0, argc=0)
:[1]
call.i @@SetStatic@@(argc=0)
isstaticok.e
bt [88]

:[2]
setstatic.e
call.i gml_Script___scribble_system(argc=0)
pushi.e -9
push.v [stacktop]self.__state
pop.v.v static.__scribble_state
call.i gml_Script___scribble_system(argc=0)
pushi.e -9
push.v [stacktop]self.__cache_state
pushi.e -9
push.v [stacktop]self.__gc_vbuff_refs
pop.v.v static.__gc_vbuff_refs
call.i gml_Script___scribble_system(argc=0)
pushi.e -9
push.v [stacktop]self.__cache_state
pushi.e -9
push.v [stacktop]self.__gc_vbuff_ids
pop.v.v static.__gc_vbuff_ids
call.i gml_Script___scribble_system(argc=0)
pushi.e -9
push.v [stacktop]self.__cache_state
pushi.e -9
push.v [stacktop]self.__gc_grid_refs
pop.v.v static.__gc_grid_refs
call.i gml_Script___scribble_system(argc=0)
pushi.e -9
push.v [stacktop]self.__cache_state
pushi.e -9
push.v [stacktop]self.__gc_grid_ids
pop.v.v static.__gc_grid_ids
b [31]

> gml_Script___submit@anon@1332@__scribble_class_page@__scribble_class_page (locals=5, argc=1)
:[3]
isstaticok.e
bt [5]

:[4]
setstatic.e
push.s "u_vTexel"@2857
conv.s.v
pushref.i 134217739
call.i shader_get_uniform(argc=2)
pop.v.v static._u_vTexel
push.s "u_fSDFRange"@2859
conv.s.v
pushref.i 134217739
call.i shader_get_uniform(argc=2)
pop.v.v static._u_fSDFRange
push.s "u_fSDFThicknessOffset"@2861
conv.s.v
pushref.i 134217739
call.i shader_get_uniform(argc=2)
pop.v.v static._u_fSDFThicknessOffset
push.s "u_fSecondDraw"@2863
conv.s.v
pushref.i 134217739
call.i shader_get_uniform(argc=2)
pop.v.v static._u_fSecondDraw
push.s "u_fRenderType"@2865
conv.s.v
pushref.i 134217739
call.i shader_get_uniform(argc=2)
pop.v.v static._u_fRenderType

:[5]
pushi.e 1
bf [8]

:[6]
push.v builtin.__frozen
conv.v.b
not.b
bf [8]

:[7]
push.v builtin.__created_frame
push.v builtin.__scribble_state
pushi.e -9
push.v [stacktop]self.__frames
cmp.v.v LT
b [9]

:[8]
push.e 0

:[9]
bf [11]

:[10]
call.i @@This@@(argc=0)
push.v builtin.__freeze
callv.v 0
popz.v

:[11]
pushi.e 0
pop.v.i local._i
push.v builtin.__vertex_buffer_array
call.i array_length(argc=1)
conv.v.i
dup.i 0
push.i 0
cmp.i.i LTE
bt [30]

:[12]
pushi.e -6
pushloc.v local._i
conv.v.i
push.v [array]self.__vertex_buffer_array
pop.v.v local._data
pushloc.v local._data
pushi.e -9
push.v [stacktop]self.__material
pop.v.v local._material
pushloc.v local._material
pushi.e -9
push.v [stacktop]self.__bilinear
pop.v.v local._bilinear
pushloc.v local._bilinear
pushbltn.v builtin.undefined
cmp.v.v NEQ
bf [14]

:[13]
call.i gpu_get_tex_filter(argc=0)
pop.v.v local._old_tex_filter
pushloc.v local._bilinear
call.i gpu_set_tex_filter(argc=1)
popz.v

:[14]
pushloc.v local._material
pushi.e -9
push.v [stacktop]self.__render_type
pushi.e 0
cmp.i.v EQ
bf [16]

:[15]
pushi.e 0
conv.i.v
push.v static._u_fRenderType
call.i shader_set_uniform_f(argc=2)
popz.v
pushloc.v local._material
pushi.e -9
push.v [stacktop]self.__texture
pushi.e 4
conv.i.v
pushloc.v local._data
pushi.e -9
push.v [stacktop]self.__vertex_buffer
call.i vertex_submit(argc=3)
popz.v
b [27]

:[16]
pushloc.v local._material
pushi.e -9
push.v [stacktop]self.__render_type
pushi.e 2
cmp.i.v EQ
bf [24]

:[17]
pushi.e 2
conv.i.v
push.v static._u_fRenderType
call.i shader_set_uniform_f(argc=2)
popz.v
pushloc.v local._material
pushi.e -9
push.v [stacktop]self.__texel_height
pushloc.v local._material
pushi.e -9
push.v [stacktop]self.__texel_width
push.v static._u_vTexel
call.i shader_set_uniform_f(argc=3)
popz.v
pushloc.v local._material
pushi.e -9
push.v [stacktop]self.__sdf_pxrange
chknullish.e
bf [19]

:[18]
popz.v
pushi.e 0
conv.i.v

:[19]
push.v static._u_fSDFRange
call.i shader_set_uniform_f(argc=2)
popz.v
push.v builtin.__scribble_state
pushi.e -9
push.v [stacktop]self.__sdf_thickness_offset
pushloc.v local._material
pushi.e -9
push.v [stacktop]self.__sdf_thickness_offset
chknullish.e
bf [21]

:[20]
popz.v
pushi.e 0
conv.i.v

:[21]
add.v.v
push.v static._u_fSDFThicknessOffset
call.i shader_set_uniform_f(argc=2)
popz.v
pushloc.v local._material
pushi.e -9
push.v [stacktop]self.__texture
pushi.e 4
conv.i.v
pushloc.v local._data
pushi.e -9
push.v [stacktop]self.__vertex_buffer
call.i vertex_submit(argc=3)
popz.v
push.v arg.argument0
conv.v.b
bf [23]

:[22]
pushi.e 1
conv.i.v
push.v static._u_fSecondDraw
call.i shader_set_uniform_f(argc=2)
popz.v
pushloc.v local._material
pushi.e -9
push.v [stacktop]self.__texture
pushi.e 4
conv.i.v
pushloc.v local._data
pushi.e -9
push.v [stacktop]self.__vertex_buffer
call.i vertex_submit(argc=3)
popz.v
pushi.e 0
conv.i.v
push.v static._u_fSecondDraw
call.i shader_set_uniform_f(argc=2)
popz.v

:[23]
b [27]

:[24]
pushloc.v local._material
pushi.e -9
push.v [stacktop]self.__render_type
pushi.e 1
cmp.i.v EQ
bf [27]

:[25]
pushi.e 1
conv.i.v
push.v static._u_fRenderType
call.i shader_set_uniform_f(argc=2)
popz.v
pushloc.v local._material
pushi.e -9
push.v [stacktop]self.__texture
pushi.e 4
conv.i.v
pushloc.v local._data
pushi.e -9
push.v [stacktop]self.__vertex_buffer
call.i vertex_submit(argc=3)
popz.v
push.v arg.argument0
conv.v.b
bf [27]

:[26]
pushi.e 1
conv.i.v
push.v static._u_fSecondDraw
call.i shader_set_uniform_f(argc=2)
popz.v
pushloc.v local._material
pushi.e -9
push.v [stacktop]self.__texture
pushi.e 4
conv.i.v
pushloc.v local._data
pushi.e -9
push.v [stacktop]self.__vertex_buffer
call.i vertex_submit(argc=3)
popz.v
pushi.e 0
conv.i.v
push.v static._u_fSecondDraw
call.i shader_set_uniform_f(argc=2)
popz.v

:[27]
pushloc.v local._bilinear
pushbltn.v builtin.undefined
cmp.v.v NEQ
bf [29]

:[28]
pushloc.v local._old_tex_filter
call.i gpu_set_tex_filter(argc=1)
popz.v

:[29]
push.v local._i
push.e 1
add.i.v
pop.v.v local._i
pushi.e 1
sub.i.i
dup.i 0
bt [12]

:[30]
popz.i
exit.i

:[31]
push.i [function]gml_Script___submit@anon@1332@__scribble_class_page@__scribble_class_page
conv.i.v
pushi.e -16
conv.i.v
call.i method(argc=2)
pop.v.v static.__submit
b [37]

> gml_Script___freeze@anon@4607@__scribble_class_page@__scribble_class_page (locals=1, argc=0)
:[32]
push.v builtin.__frozen
conv.v.b
not.b
bf [36]

:[33]
pushi.e 0
pop.v.i local._i
push.v builtin.__vertex_buffer_array
call.i array_length(argc=1)
conv.v.i
dup.i 0
push.i 0
cmp.i.i LTE
bt [35]

:[34]
pushi.e -1
pushloc.v local._i
conv.v.i
push.v [array]self.__vertex_buffer_array
pushi.e -9
push.v [stacktop]self.__vertex_buffer
call.i vertex_freeze(argc=1)
popz.v
push.v local._i
push.e 1
add.i.v
pop.v.v local._i
pushi.e 1
sub.i.i
dup.i 0
bt [34]

:[35]
popz.i
pushi.e 1
pop.v.b builtin.__frozen

:[36]
exit.i

:[37]
push.i [function]gml_Script___freeze@anon@4607@__scribble_class_page@__scribble_class_page
conv.i.v
pushi.e -16
conv.i.v
call.i method(argc=2)
pop.v.v static.__freeze
b [40]

> gml_Script___get_line_data@anon@5289@__scribble_class_page@__scribble_class_page (locals=0, argc=1)
:[38]
pushi.e -6
push.v builtin.__line_count
pushi.e 1
sub.i.v
pushi.e 0
conv.i.v
push.v arg.argument0
call.i clamp(argc=3)
conv.v.i
push.v [array]self.__line_data_array
ret.v

:[39]
exit.i

:[40]
push.i [function]gml_Script___get_line_data@anon@5289@__scribble_class_page@__scribble_class_page
conv.i.v
pushi.e -16
conv.i.v
call.i method(argc=2)
pop.v.v static.__get_line_data
b [55]

> gml_Script___get_glyph_data@anon@5426@__scribble_class_page@__scribble_class_page (locals=0, argc=1)
:[41]
push.v arg.argument0
pushi.e 0
cmp.i.v LT
bf [46]

:[42]
push.l 5
conv.l.v
pushi.e 0
conv.i.v
push.v builtin.__glyph_grid
call.i ds_grid_get(argc=3)
push.l 4
conv.l.v
pushi.e 0
conv.i.v
push.v builtin.__glyph_grid
call.i ds_grid_get(argc=3)
push.l 1
conv.l.v
pushi.e 0
conv.i.v
push.v builtin.__glyph_grid
call.i ds_grid_get(argc=3)
push.l 2
conv.l.v
pushi.e 0
conv.i.v
push.v builtin.__glyph_grid
call.i ds_grid_get(argc=3)
push.l 1
conv.l.v
pushi.e 0
conv.i.v
push.v builtin.__glyph_grid
call.i ds_grid_get(argc=3)
b [44]

> gml_Script____struct___41@__get_glyph_data@anon@5426@__scribble_class_page@__scribble_class_page (locals=0, argc=0)
:[43]
call.i @@SetStatic@@(argc=0)
pushi.e 0
pop.v.i self.unicode
pushi.e -15
pushi.e 0
push.v [array]self.argument
pop.v.v self.left
pushi.e -15
pushi.e 1
push.v [array]self.argument
pop.v.v self.top
pushi.e -15
pushi.e 2
push.v [array]self.argument
pop.v.v self.right
pushi.e -15
pushi.e 3
push.v [array]self.argument
pop.v.v self.bottom
pushi.e -15
pushi.e 4
push.v [array]self.argument
pop.v.v self.y_offset
exit.i

:[44]
push.i [function]gml_Script____struct___41@__get_glyph_data@anon@5426@__scribble_class_page@__scribble_class_page
conv.i.v
call.i @@NullObject@@(argc=0)
call.i method(argc=2)
dup.v 0
pop.v.v global.___struct___41
call.i @@NewGMLObject@@(argc=6)
ret.v

:[45]
b [54]

:[46]
push.v arg.argument0
push.v builtin.__glyph_count
pushi.e 1
sub.i.v
cmp.v.v GTE
bf [51]

:[47]
push.v builtin.__glyph_count
pushi.e 2
sub.i.v
pop.v.v arg.argument0
push.l 5
conv.l.v
push.v arg.argument0
push.v builtin.__glyph_grid
call.i ds_grid_get(argc=3)
push.l 4
conv.l.v
push.v arg.argument0
push.v builtin.__glyph_grid
call.i ds_grid_get(argc=3)
push.l 3
conv.l.v
push.v arg.argument0
push.v builtin.__glyph_grid
call.i ds_grid_get(argc=3)
push.l 2
conv.l.v
push.v arg.argument0
push.v builtin.__glyph_grid
call.i ds_grid_get(argc=3)
push.l 3
conv.l.v
push.v arg.argument0
push.v builtin.__glyph_grid
call.i ds_grid_get(argc=3)
b [49]

> gml_Script____struct___42@__get_glyph_data@anon@5426@__scribble_class_page@__scribble_class_page (locals=0, argc=0)
:[48]
call.i @@SetStatic@@(argc=0)
pushi.e 0
pop.v.i self.unicode
pushi.e -15
pushi.e 0
push.v [array]self.argument
pop.v.v self.left
pushi.e -15
pushi.e 1
push.v [array]self.argument
pop.v.v self.top
pushi.e -15
pushi.e 2
push.v [array]self.argument
pop.v.v self.right
pushi.e -15
pushi.e 3
push.v [array]self.argument
pop.v.v self.bottom
pushi.e -15
pushi.e 4
push.v [array]self.argument
pop.v.v self.y_offset
exit.i

:[49]
push.i [function]gml_Script____struct___42@__get_glyph_data@anon@5426@__scribble_class_page@__scribble_class_page
conv.i.v
call.i @@NullObject@@(argc=0)
call.i method(argc=2)
dup.v 0
pop.v.v global.___struct___42
call.i @@NewGMLObject@@(argc=6)
ret.v

:[50]
b [54]

:[51]
push.l 5
conv.l.v
push.v arg.argument0
push.v builtin.__glyph_grid
call.i ds_grid_get(argc=3)
push.l 4
conv.l.v
push.v arg.argument0
push.v builtin.__glyph_grid
call.i ds_grid_get(argc=3)
push.l 3
conv.l.v
push.v arg.argument0
push.v builtin.__glyph_grid
call.i ds_grid_get(argc=3)
push.l 2
conv.l.v
push.v arg.argument0
push.v builtin.__glyph_grid
call.i ds_grid_get(argc=3)
push.l 1
conv.l.v
push.v arg.argument0
push.v builtin.__glyph_grid
call.i ds_grid_get(argc=3)
push.l 0
conv.l.v
push.v arg.argument0
push.v builtin.__glyph_grid
call.i ds_grid_get(argc=3)
b [53]

> gml_Script____struct___43@__get_glyph_data@anon@5426@__scribble_class_page@__scribble_class_page (locals=0, argc=0)
:[52]
call.i @@SetStatic@@(argc=0)
pushi.e -15
pushi.e 0
push.v [array]self.argument
pop.v.v self.unicode
pushi.e -15
pushi.e 1
push.v [array]self.argument
pop.v.v self.left
pushi.e -15
pushi.e 2
push.v [array]self.argument
pop.v.v self.top
pushi.e -15
pushi.e 3
push.v [array]self.argument
pop.v.v self.right
pushi.e -15
pushi.e 4
push.v [array]self.argument
pop.v.v self.bottom
pushi.e -15
pushi.e 5
push.v [array]self.argument
pop.v.v self.y_offset
exit.i

:[53]
push.i [function]gml_Script____struct___43@__get_glyph_data@anon@5426@__scribble_class_page@__scribble_class_page
conv.i.v
call.i @@NullObject@@(argc=0)
call.i method(argc=2)
dup.v 0
pop.v.v global.___struct___43
call.i @@NewGMLObject@@(argc=7)
ret.v

:[54]
exit.i

:[55]
push.i [function]gml_Script___get_glyph_data@anon@5426@__scribble_class_page@__scribble_class_page
conv.i.v
pushi.e -16
conv.i.v
call.i method(argc=2)
pop.v.v static.__get_glyph_data
b [66]

> gml_Script___get_vertex_buffer@anon@7303@__scribble_class_page@__scribble_class_page (locals=2, argc=1)
:[56]
isstaticok.e
bt [58]

:[57]
setstatic.e
pushbltn.v builtin.undefined
pop.v.v static._vertex_format

:[58]
push.v arg.argument0
pushi.e -9
push.v [stacktop]self.__key
push.v builtin.__texture_to_vertex_buffer_dict
call.i variable_struct_get(argc=2)
pop.v.v local._data
pushloc.v local._data
pushbltn.v builtin.undefined
cmp.v.v NEQ
bf [60]

:[59]
pushloc.v local._data
pushi.e -9
push.v [stacktop]self.__vertex_buffer
ret.v

:[60]
push.v static._vertex_format
pushbltn.v builtin.undefined
cmp.v.v EQ
bf [62]

:[61]
call.i vertex_format_begin(argc=0)
popz.v
call.i vertex_format_add_position_3d(argc=0)
popz.v
call.i vertex_format_add_normal(argc=0)
popz.v
call.i vertex_format_add_colour(argc=0)
popz.v
call.i vertex_format_add_texcoord(argc=0)
popz.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
call.i vertex_format_add_custom(argc=2)
popz.v
call.i vertex_format_end(argc=0)
pop.v.v static._vertex_format

:[62]
call.i vertex_create_buffer(argc=0)
pop.v.v local._vbuff
push.v static._vertex_format
pushloc.v local._vbuff
call.i vertex_begin(argc=2)
popz.v
call.i @@This@@(argc=0)
call.i weak_ref_create(argc=1)
push.v builtin.__gc_vbuff_refs
call.i array_push(argc=2)
popz.v
pushloc.v local._vbuff
push.v builtin.__gc_vbuff_ids
call.i array_push(argc=2)
popz.v
push.v arg.argument0
pushloc.v local._vbuff
b [64]

> gml_Script____struct___44@__get_vertex_buffer@anon@7303@__scribble_class_page@__scribble_class_page (locals=0, argc=0)
:[63]
call.i @@SetStatic@@(argc=0)
pushi.e -15
pushi.e 0
push.v [array]self.argument
pop.v.v self.__vertex_buffer
pushi.e -15
pushi.e 1
push.v [array]self.argument
pop.v.v self.__material
exit.i

:[64]
push.i [function]gml_Script____struct___44@__get_vertex_buffer@anon@7303@__scribble_class_page@__scribble_class_page
conv.i.v
call.i @@NullObject@@(argc=0)
call.i method(argc=2)
dup.v 0
pop.v.v global.___struct___44
call.i @@NewGMLObject@@(argc=3)
pop.v.v local._data
pushloc.v local._data
push.v builtin.__vertex_buffer_array
call.i array_push(argc=2)
popz.v
pushloc.v local._data
push.v arg.argument0
pushi.e -9
push.v [stacktop]self.__key
push.v builtin.__texture_to_vertex_buffer_dict
call.i variable_struct_set(argc=3)
popz.v
pushloc.v local._vbuff
ret.v

:[65]
exit.i

:[66]
push.i [function]gml_Script___get_vertex_buffer@anon@7303@__scribble_class_page@__scribble_class_page
conv.i.v
pushi.e -16
conv.i.v
call.i method(argc=2)
pop.v.v static.__get_vertex_buffer
b [71]

> gml_Script___ensure_glyph_grid@anon@9206@__scribble_class_page@__scribble_class_page (locals=0, argc=0)
:[67]
push.v builtin.__glyph_grid
pushbltn.v builtin.undefined
cmp.v.v EQ
bf [69]

:[68]
push.l 6
conv.l.v
push.v builtin.__glyph_count
call.i ds_grid_create(argc=2)
pop.v.v builtin.__glyph_grid
call.i @@This@@(argc=0)
call.i weak_ref_create(argc=1)
push.v builtin.__gc_grid_refs
call.i array_push(argc=2)
popz.v
push.v builtin.__glyph_grid
push.v builtin.__gc_grid_ids
call.i array_push(argc=2)
popz.v

:[69]
push.v builtin.__glyph_grid
ret.v

:[70]
exit.i

:[71]
push.i [function]gml_Script___ensure_glyph_grid@anon@9206@__scribble_class_page@__scribble_class_page
conv.i.v
pushi.e -16
conv.i.v
call.i method(argc=2)
pop.v.v static.__ensure_glyph_grid
b [77]

> gml_Script___finalize_vertex_buffers@anon@9712@__scribble_class_page@__scribble_class_page (locals=2, argc=1)
:[72]
pushi.e 0
pop.v.i local._i
push.v builtin.__vertex_buffer_array
call.i array_length(argc=1)
conv.v.i
dup.i 0
push.i 0
cmp.i.i LTE
bt [76]

:[73]
pushi.e -1
pushloc.v local._i
conv.v.i
push.v [array]self.__vertex_buffer_array
pushi.e -9
push.v [stacktop]self.__vertex_buffer
pop.v.v local._vbuff
pushloc.v local._vbuff
call.i vertex_end(argc=1)
popz.v
push.v arg.argument0
conv.v.b
bf [75]

:[74]
pushloc.v local._vbuff
call.i vertex_freeze(argc=1)
popz.v

:[75]
push.v local._i
push.e 1
add.i.v
pop.v.v local._i
pushi.e 1
sub.i.i
dup.i 0
bt [73]

:[76]
popz.i
push.v arg.argument0
pop.v.v builtin.__frozen
exit.i

:[77]
push.i [function]gml_Script___finalize_vertex_buffers@anon@9712@__scribble_class_page@__scribble_class_page
conv.i.v
pushi.e -16
conv.i.v
call.i method(argc=2)
pop.v.v static.__finalize_vertex_buffers
b [87]

> gml_Script___flush@anon@10091@__scribble_class_page@__scribble_class_page (locals=3, argc=0)
:[78]
pushi.e 0
pop.v.i local._i
push.v builtin.__vertex_buffer_array
call.i array_length(argc=1)
conv.v.i
dup.i 0
push.i 0
cmp.i.i LTE
bt [82]

:[79]
pushi.e -1
pushloc.v local._i
conv.v.i
push.v [array]self.__vertex_buffer_array
pushi.e -9
push.v [stacktop]self.__vertex_buffer
pop.v.v local._vbuff
pushloc.v local._vbuff
call.i vertex_delete_buffer(argc=1)
popz.v
pushloc.v local._vbuff
push.v builtin.__gc_vbuff_ids
call.i gml_Script___scribble_array_find_index(argc=2)
pop.v.v local._index
pushloc.v local._index
pushi.e 0
cmp.i.v GTE
bf [81]

:[80]
pushi.e 1
conv.i.v
pushloc.v local._index
push.v builtin.__gc_vbuff_refs
call.i array_delete(argc=3)
popz.v
pushi.e 1
conv.i.v
pushloc.v local._index
push.v builtin.__gc_vbuff_ids
call.i array_delete(argc=3)
popz.v

:[81]
push.v local._i
push.e 1
add.i.v
pop.v.v local._i
pushi.e 1
sub.i.i
dup.i 0
bt [79]

:[82]
popz.i
call.i @@NewGMLObject@@(argc=0)
pop.v.v builtin.__texture_to_vertex_buffer_dict
pushi.e 0
conv.i.v
push.v builtin.__vertex_buffer_array
call.i array_resize(argc=2)
popz.v
push.v builtin.__glyph_grid
pushbltn.v builtin.undefined
cmp.v.v NEQ
bf [86]

:[83]
push.v builtin.__glyph_grid
push.v builtin.__gc_grid_ids
call.i gml_Script___scribble_array_find_index(argc=2)
pop.v.v local._index
pushloc.v local._index
pushi.e 0
cmp.i.v GTE
bf [85]

:[84]
pushi.e 1
conv.i.v
pushloc.v local._index
push.v builtin.__gc_grid_refs
call.i array_delete(argc=3)
popz.v
pushi.e 1
conv.i.v
pushloc.v local._index
push.v builtin.__gc_grid_ids
call.i array_delete(argc=3)
popz.v

:[85]
push.v builtin.__glyph_grid
call.i ds_grid_destroy(argc=1)
popz.v
pushbltn.v builtin.undefined
pop.v.v builtin.__glyph_grid

:[86]
exit.i

:[87]
push.i [function]gml_Script___flush@anon@10091@__scribble_class_page@__scribble_class_page
conv.i.v
pushi.e -16
conv.i.v
call.i method(argc=2)
pop.v.v static.__flush

:[88]
push.s ""@61
pop.v.s builtin.__text
pushbltn.v builtin.undefined
pop.v.v builtin.__glyph_grid
push.v static.__scribble_state
pushi.e -9
push.v [stacktop]self.__frames
pop.v.v builtin.__created_frame
pushbltn.v builtin.undefined
pop.v.v builtin.__frozen
pushi.e 0
pop.v.i builtin.__character_count
pushbltn.v builtin.undefined
pop.v.v builtin.__glyph_start
pushbltn.v builtin.undefined
pop.v.v builtin.__glyph_end
pushi.e 0
pop.v.i builtin.__glyph_count
pushbltn.v builtin.undefined
pop.v.v builtin.__line_start
pushbltn.v builtin.undefined
pop.v.v builtin.__line_end
pushi.e 0
pop.v.i builtin.__line_count
pushbltn.v builtin.undefined
pop.v.v builtin.__line_data_array
pushi.e 0
pop.v.i builtin.__width
pushi.e 0
pop.v.i builtin.__height
pushi.e 0
pop.v.i builtin.__min_x
pushi.e 0
pop.v.i builtin.__min_y
pushi.e 0
pop.v.i builtin.__max_x
pushi.e 0
pop.v.i builtin.__max_y
call.i @@NewGMLArray@@(argc=0)
pop.v.v builtin.__vertex_buffer_array
call.i @@NewGMLObject@@(argc=0)
pop.v.v builtin.__texture_to_vertex_buffer_dict
call.i @@NewGMLObject@@(argc=0)
pop.v.v builtin.__char_events
call.i @@NewGMLObject@@(argc=0)
pop.v.v builtin.__line_events
call.i @@NewGMLArray@@(argc=0)
pop.v.v builtin.__region_array
exit.i

:[89]
push.i [function]gml_Script___scribble_class_page
conv.i.v
call.i @@NullObject@@(argc=0)
call.i method(argc=2)
dup.v 0
pop.v.v self.__scribble_class_page
popz.v

:[end]