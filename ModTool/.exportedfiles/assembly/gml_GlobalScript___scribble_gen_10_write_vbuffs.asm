:[0]
b [149]

> gml_Script___scribble_gen_10_write_vbuffs (locals=64, argc=0)
:[1]
isstaticok.e
bt [3]

:[2]
setstatic.e
call.i gml_Script___scribble_system(argc=0)
pushi.e -9
push.v [stacktop]self.__buffer_a
pop.v.v static._string_buffer
call.i gml_Script___scribble_system(argc=0)
pushi.e -9
push.v [stacktop]self.__effects_map
pop.v.v static._effects_map
call.i gml_Script___scribble_system(argc=0)
pushi.e -9
push.v [stacktop]self.__generator_state
pop.v.v static._generator_state
call.i @@NewGMLObject@@(argc=0)
pop.v.v static._html5_sprite_height_workaround_dict

:[3]
push.v static._generator_state
pushi.e -9
pushenv [5]

:[4]
push.v builtin.__glyph_grid
pop.v.v local._glyph_grid
push.v builtin.__control_grid
pop.v.v local._control_grid
push.v builtin.__vbuff_pos_grid
pop.v.v local._vbuff_pos_grid
push.v builtin.__element
pop.v.v local._element
push.v builtin.__glyph_count
pop.v.v local._glyph_count
push.v builtin.__element
pushi.e -9
push.v [stacktop]self.__allow_text_getter
pop.v.v local._text_getter
push.v builtin.__element
pushi.e -9
push.v [stacktop]self.__allow_glyph_data_getter
pop.v.v local._glyph_data_getter

:[5]
popenv [4]
push.l 0
conv.l.v
pushi.e 0
conv.i.v
push.l 3
conv.l.v
pushloc.v local._glyph_count
pushi.e 1
sub.i.v
push.l 2
conv.l.v
pushi.e 0
conv.i.v
pushloc.v local._glyph_grid
pushloc.v local._vbuff_pos_grid
call.i ds_grid_set_grid_region(argc=8)
popz.v
push.l 2
conv.l.v
pushi.e 0
conv.i.v
push.l 3
conv.l.v
pushloc.v local._glyph_count
pushi.e 1
sub.i.v
push.l 2
conv.l.v
pushi.e 0
conv.i.v
pushloc.v local._glyph_grid
pushloc.v local._vbuff_pos_grid
call.i ds_grid_set_grid_region(argc=8)
popz.v
push.l 2
conv.l.v
pushi.e 0
conv.i.v
push.l 4
conv.l.v
pushloc.v local._glyph_count
pushi.e 1
sub.i.v
push.l 4
conv.l.v
pushi.e 0
conv.i.v
pushloc.v local._glyph_grid
pushloc.v local._vbuff_pos_grid
call.i ds_grid_add_grid_region(argc=8)
popz.v
push.l 3
conv.l.v
pushi.e 0
conv.i.v
push.l 5
conv.l.v
pushloc.v local._glyph_count
pushi.e 1
sub.i.v
push.l 5
conv.l.v
pushi.e 0
conv.i.v
pushloc.v local._glyph_grid
pushloc.v local._vbuff_pos_grid
call.i ds_grid_add_grid_region(argc=8)
popz.v
push.v static._generator_state
pushi.e -9
push.v [stacktop]self.__bezier_lengths_array
call.i is_array(argc=1)
conv.v.b
bf [7]

:[6]
pushi.e 1
pop.v.b local._bezier_do
push.v static._generator_state
pushi.e -9
push.v [stacktop]self.__bezier_lengths_array
pop.v.v local._bezier_lengths
pushi.e 0
pop.v.i local._bezier_search_index
pushi.e 0
pop.v.i local._bezier_search_d0
pushi.e -7
pushi.e 1
push.v [array]self._bezier_lengths
pop.v.v local._bezier_search_d1
pushbltn.v builtin.infinity
neg.v
pop.v.v local._bezier_prev_cy
push.d 0.05263157894736842
pop.v.d local._bezier_param_increment
b [8]

:[7]
pushi.e 0
pop.v.b local._bezier_do

:[8]
push.l 4294967295
pop.v.l local._glyph_colour
pushi.e 0
pop.v.i local._glyph_cycle
pushi.e 0
pop.v.i local._glyph_effect_flags
pushi.e 0
pop.v.i local._glyph_sprite_data
push.l 4294967295
pop.v.l local._write_colour
pushi.e 0
pop.v.i local._control_index
pushbltn.v builtin.undefined
pop.v.v local._region_name
pushbltn.v builtin.undefined
pop.v.v local._region_start
b [23]

> gml_Script_anon@8603@__scribble_gen_10_write_vbuffs@__scribble_gen_10_write_vbuffs (locals=7, argc=4)
:[9]
isstaticok.e
bt [11]

:[10]
setstatic.e
call.i gml_Script___scribble_system(argc=0)
pushi.e -9
push.v [stacktop]self.__generator_state
pop.v.v static._generator_state

:[11]
push.v arg.argument2
push.v arg.argument3
cmp.v.v GT
bf [13]

:[12]
exit.i

:[13]
call.i @@NewGMLArray@@(argc=0)
pop.v.v local._region_bbox_array
push.v static._generator_state
pushi.e -9
push.v [stacktop]self.__vbuff_pos_grid
pop.v.v local._vbuff_pos_grid
push.v static._generator_state
pushi.e -9
push.v [stacktop]self.__line_grid
pop.v.v local._line_grid
push.v static._generator_state
pushi.e -9
push.v [stacktop]self.__word_grid
pop.v.v local._word_grid
pushi.e 0
pop.v.i local._line
push.v arg.argument2
pop.v.v local._region_bbox_start
push.v arg.argument2
pushi.e 1
sub.i.v
pop.v.v local._region_bbox_end

:[14]
push.v arg.argument3
pushloc.v local._region_bbox_start
cmp.v.v GTE
bf [20]

:[15]
push.l 3
conv.l.v
push.l 3
conv.l.v
pushloc.v local._line
pushloc.v local._line_grid
call.i ds_grid_get(argc=3)
pushloc.v local._word_grid
call.i ds_grid_get(argc=3)
push.v arg.argument3
call.i min(argc=2)
pop.v.v local._region_bbox_end
pushloc.v local._region_bbox_start
pushloc.v local._region_bbox_end
cmp.v.v LTE
bf [19]

:[16]
push.l 3
conv.l.v
pushloc.v local._region_bbox_end
push.l 3
conv.l.v
pushloc.v local._region_bbox_start
pushloc.v local._vbuff_pos_grid
call.i ds_grid_get_max(argc=5)
push.l 2
conv.l.v
pushloc.v local._region_bbox_end
push.l 2
conv.l.v
pushloc.v local._region_bbox_start
pushloc.v local._vbuff_pos_grid
call.i ds_grid_get_max(argc=5)
push.l 1
conv.l.v
pushloc.v local._region_bbox_end
push.l 1
conv.l.v
pushloc.v local._region_bbox_start
pushloc.v local._vbuff_pos_grid
call.i ds_grid_get_min(argc=5)
push.l 0
conv.l.v
pushloc.v local._region_bbox_end
push.l 0
conv.l.v
pushloc.v local._region_bbox_start
pushloc.v local._vbuff_pos_grid
call.i ds_grid_get_min(argc=5)
b [18]

> gml_Script____struct___50@anon@8603@__scribble_gen_10_write_vbuffs@__scribble_gen_10_write_vbuffs (locals=0, argc=0)
:[17]
call.i @@SetStatic@@(argc=0)
pushi.e -15
pushi.e 0
push.v [array]self.argument
pop.v.v self.x1
pushi.e -15
pushi.e 1
push.v [array]self.argument
pop.v.v self.y1
pushi.e -15
pushi.e 2
push.v [array]self.argument
pop.v.v self.x2
pushi.e -15
pushi.e 3
push.v [array]self.argument
pop.v.v self.y2
exit.i

:[18]
push.i [function]gml_Script____struct___50@anon@8603@__scribble_gen_10_write_vbuffs@__scribble_gen_10_write_vbuffs
conv.i.v
call.i @@NullObject@@(argc=0)
call.i method(argc=2)
dup.v 0
pop.v.v global.___struct___50
call.i @@NewGMLObject@@(argc=5)
pushloc.v local._region_bbox_array
call.i array_push(argc=2)
popz.v
pushloc.v local._region_bbox_end
pushi.e 1
add.i.v
pop.v.v local._region_bbox_start

:[19]
push.v local._line
push.e 1
add.i.v
pop.v.v local._line
b [14]

:[20]
push.v arg.argument3
push.v arg.argument0
pushi.e -9
push.v [stacktop]self.__glyph_start
sub.v.v
push.v arg.argument2
push.v arg.argument0
pushi.e -9
push.v [stacktop]self.__glyph_start
sub.v.v
pushloc.v local._region_bbox_array
push.v arg.argument1
b [22]

> gml_Script____struct___51@anon@8603@__scribble_gen_10_write_vbuffs@__scribble_gen_10_write_vbuffs (locals=0, argc=0)
:[21]
call.i @@SetStatic@@(argc=0)
pushi.e -15
pushi.e 0
push.v [array]self.argument
pop.v.v self.name
pushi.e -15
pushi.e 1
push.v [array]self.argument
pop.v.v self.bbox_array
pushi.e -15
pushi.e 2
push.v [array]self.argument
pop.v.v self.start_glyph
pushi.e -15
pushi.e 3
push.v [array]self.argument
pop.v.v self.end_glyph
exit.i

:[22]
push.i [function]gml_Script____struct___51@anon@8603@__scribble_gen_10_write_vbuffs@__scribble_gen_10_write_vbuffs
conv.i.v
call.i @@NullObject@@(argc=0)
call.i method(argc=2)
dup.v 0
pop.v.v global.___struct___51
call.i @@NewGMLObject@@(argc=5)
push.v arg.argument0
pushi.e -9
push.v [stacktop]self.__region_array
call.i array_push(argc=2)
popz.v
exit.i

:[23]
push.i [function]gml_Script_anon@8603@__scribble_gen_10_write_vbuffs@__scribble_gen_10_write_vbuffs
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
pop.v.v local._func_region_pop
pushi.e 0
pop.v.i local._p
push.v builtin.__pages
conv.v.i
dup.i 0
push.i 0
cmp.i.i LTE
bt [137]

:[24]
pushi.e -6
pushloc.v local._p
conv.v.i
push.v [array]self.__pages_array
pop.v.v local._page_data
pushloc.v local._page_data
pushi.e -9
push.v [stacktop]self.__char_events
pop.v.v local._page_char_events_dict
pushloc.v local._page_data
pushi.e -9
push.v [stacktop]self.__line_events
pop.v.v local._page_line_events_dict
pushbltn.v builtin.undefined
pop.v.v local._vbuff
pushbltn.v builtin.undefined
pop.v.v local._material_prev
pushi.e 0
pop.v.i local._packed_indexes
pushloc.v local._glyph_data_getter
conv.v.b
bf [28]

:[25]
pushloc.v local._page_data
pushi.e -9
pushenv [27]

:[26]
call.i @@This@@(argc=0)
push.v builtin.__ensure_glyph_grid
callv.v 0
popz.v
push.l 0
conv.l.v
pushi.e 0
conv.i.v
push.l 0
conv.l.v
push.v builtin.__glyph_end
push.l 0
conv.l.v
push.v builtin.__glyph_start
pushloc.v local._glyph_grid
push.v builtin.__glyph_grid
call.i ds_grid_set_grid_region(argc=8)
popz.v
push.l 5
conv.l.v
pushi.e 0
conv.i.v
push.l 3
conv.l.v
push.v builtin.__glyph_end
push.l 3
conv.l.v
push.v builtin.__glyph_start
pushloc.v local._glyph_grid
push.v builtin.__glyph_grid
call.i ds_grid_set_grid_region(argc=8)
popz.v
push.l 1
conv.l.v
pushi.e 0
conv.i.v
pushi.e 3
conv.i.v
push.v builtin.__glyph_end
pushi.e 0
conv.i.v
push.v builtin.__glyph_start
pushloc.v local._vbuff_pos_grid
push.v builtin.__glyph_grid
call.i ds_grid_set_grid_region(argc=8)
popz.v

:[27]
popenv [26]

:[28]
pushloc.v local._text_getter
conv.v.b
bf [30]

:[29]
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
push.v static._string_buffer
call.i buffer_seek(argc=3)
popz.v

:[30]
pushloc.v local._page_data
pushi.e -9
push.v [stacktop]self.__glyph_start
pop.v.v local._i
pushloc.v local._page_data
pushi.e -9
push.v [stacktop]self.__glyph_count
conv.v.i
dup.i 0
push.i 0
cmp.i.i LTE
bt [132]

:[31]
push.l 16
conv.l.v
pushloc.v local._i
pushloc.v local._glyph_grid
call.i ds_grid_get(argc=3)
pop.v.v local._packed_indexes
push.l 15
conv.l.v
pushloc.v local._i
pushloc.v local._glyph_grid
call.i ds_grid_get(argc=3)
pushloc.v local._control_index
sub.v.v
pop.v.v local._control_delta
pushloc.v local._control_delta
conv.v.i
dup.i 0
push.i 0
cmp.i.i LTE
bt [58]

:[32]
push.l 0
conv.l.v
pushloc.v local._control_index
pushloc.v local._control_grid
call.i ds_grid_get(argc=3)
dup.v 0
push.l 2
cmp.l.v EQ
bt [39]

:[33]
dup.v 0
push.l 3
cmp.l.v EQ
bt [40]

:[34]
dup.v 0
push.l 4
cmp.l.v EQ
bt [41]

:[35]
dup.v 0
push.l 0
cmp.l.v EQ
bt [45]

:[36]
dup.v 0
push.l 5
cmp.l.v EQ
bt [53]

:[37]
dup.v 0
push.l 6
cmp.l.v EQ
bt [56]

:[38]
b [57]

:[39]
push.l 1
conv.l.v
pushloc.v local._control_index
pushloc.v local._control_grid
call.i ds_grid_get(argc=3)
pop.v.v local._glyph_colour
pushloc.v local._glyph_colour
pop.v.v local._write_colour
b [57]

:[40]
push.l 1
conv.l.v
pushloc.v local._control_index
pushloc.v local._control_grid
call.i ds_grid_get(argc=3)
pop.v.v local._glyph_effect_flags
b [57]

:[41]
push.l 1
conv.l.v
pushloc.v local._control_index
pushloc.v local._control_grid
call.i ds_grid_get(argc=3)
pop.v.v local._glyph_cycle
pushloc.v local._glyph_cycle
pushbltn.v builtin.undefined
cmp.v.v EQ
bf [43]

:[42]
pushloc.v local._glyph_colour
pop.v.v local._write_colour
b [44]

:[43]
pushloc.v local._glyph_cycle
pop.v.v local._write_colour

:[44]
b [57]

:[45]
pushloc.v local._packed_indexes
pushi.e 1000
rem.i.v
pop.v.v local._character_index
pushloc.v local._packed_indexes
pushi.e 1000
mod.i.v
pushloc.v local._character_index
pushi.e 0
cmp.i.v GT
bf [47]

:[46]
pushi.e 1
conv.i.v
b [48]

:[47]
pushi.e 0
conv.i.v

:[48]
add.v.v
pop.v.v local._line_index
push.l 1
conv.l.v
pushloc.v local._control_index
pushloc.v local._control_grid
call.i ds_grid_get(argc=3)
pop.v.v local._event
pushloc.v local._character_index
pushloc.v local._event
pushi.e -9
pop.v.v [stacktop]self.position
pushloc.v local._character_index
pushloc.v local._event
pushi.e -9
pop.v.v [stacktop]self.character_index
pushloc.v local._line_index
pushloc.v local._event
pushi.e -9
pop.v.v [stacktop]self.line_index
pushloc.v local._character_index
pushloc.v local._page_char_events_dict
call.i variable_struct_get(argc=2)
pop.v.v local._event_array
pushloc.v local._event_array
call.i is_array(argc=1)
conv.v.b
not.b
bf [50]

:[49]
call.i @@NewGMLArray@@(argc=0)
pop.v.v local._event_array
pushloc.v local._event_array
pushloc.v local._character_index
pushloc.v local._page_char_events_dict
call.i variable_struct_set(argc=3)
popz.v

:[50]
pushloc.v local._event
pushloc.v local._event_array
call.i array_push(argc=2)
popz.v
pushloc.v local._line_index
pushloc.v local._page_line_events_dict
call.i variable_struct_get(argc=2)
pop.v.v local._event_array
pushloc.v local._event_array
call.i is_array(argc=1)
conv.v.b
not.b
bf [52]

:[51]
call.i @@NewGMLArray@@(argc=0)
pop.v.v local._event_array
pushloc.v local._event_array
pushloc.v local._line_index
pushloc.v local._page_line_events_dict
call.i variable_struct_set(argc=3)
popz.v

:[52]
pushloc.v local._event
pushloc.v local._event_array
call.i array_push(argc=2)
popz.v
b [57]

:[53]
pushloc.v local._region_name
pushbltn.v builtin.undefined
cmp.v.v NEQ
bf [55]

:[54]
pushloc.v local._i
pushi.e 1
sub.i.v
pushloc.v local._region_start
pushloc.v local._region_name
pushloc.v local._page_data
call.i @@This@@(argc=0)
pushloc.v local._func_region_pop
callv.v 4
popz.v

:[55]
push.l 1
conv.l.v
pushloc.v local._control_index
pushloc.v local._control_grid
call.i ds_grid_get(argc=3)
pop.v.v local._region_name
pushloc.v local._i
pop.v.v local._region_start
b [57]

:[56]
b [57]

:[57]
popz.v
push.v local._control_index
push.e 1
add.i.v
pop.v.v local._control_index
pushi.e 1
sub.i.i
dup.i 0
bt [32]

:[58]
popz.i
push.l 0
conv.l.v
pushloc.v local._i
pushloc.v local._glyph_grid
call.i ds_grid_get(argc=3)
pop.v.v local._glyph_ord
pushloc.v local._glyph_ord
pushi.e 0
cmp.i.v GTE
bf [81]

:[59]
pushloc.v local._text_getter
conv.v.b
bf [61]

:[60]
pushloc.v local._glyph_ord
push.v static._string_buffer
call.i gml_Script___scribble_buffer_write_unicode(argc=2)
popz.v

:[61]
pushloc.v local._glyph_ord
pushi.e 32
cmp.i.v GT
bf [64]

:[62]
pushloc.v local._glyph_ord
pushi.e 160
cmp.i.v NEQ
bf [64]

:[63]
pushloc.v local._glyph_ord
pushi.e 8203
cmp.i.v NEQ
b [65]

:[64]
push.e 0

:[65]
bf [80]

:[66]
push.l 0
conv.l.v
pushloc.v local._i
pushloc.v local._vbuff_pos_grid
call.i ds_grid_get(argc=3)
pop.v.v local._quad_l
push.l 1
conv.l.v
pushloc.v local._i
pushloc.v local._vbuff_pos_grid
call.i ds_grid_get(argc=3)
pop.v.v local._quad_t
push.l 2
conv.l.v
pushloc.v local._i
pushloc.v local._vbuff_pos_grid
call.i ds_grid_get(argc=3)
pop.v.v local._quad_r
push.l 3
conv.l.v
pushloc.v local._i
pushloc.v local._vbuff_pos_grid
call.i ds_grid_get(argc=3)
pop.v.v local._quad_b
push.l 10
conv.l.v
pushloc.v local._i
pushloc.v local._glyph_grid
call.i ds_grid_get(argc=3)
pop.v.v local._material
push.l 11
conv.l.v
pushloc.v local._i
pushloc.v local._glyph_grid
call.i ds_grid_get(argc=3)
pop.v.v local._quad_u0
push.l 13
conv.l.v
pushloc.v local._i
pushloc.v local._glyph_grid
call.i ds_grid_get(argc=3)
pop.v.v local._quad_v0
push.l 12
conv.l.v
pushloc.v local._i
pushloc.v local._glyph_grid
call.i ds_grid_get(argc=3)
pop.v.v local._quad_u1
push.l 14
conv.l.v
pushloc.v local._i
pushloc.v local._glyph_grid
call.i ds_grid_get(argc=3)
pop.v.v local._quad_v1
push.d 0.5
push.l 4
conv.l.v
pushloc.v local._i
pushloc.v local._glyph_grid
call.i ds_grid_get(argc=3)
mul.v.d
pop.v.v local._half_w
push.d 0.5
push.l 5
conv.l.v
pushloc.v local._i
pushloc.v local._glyph_grid
call.i ds_grid_get(argc=3)
mul.v.d
pop.v.v local._half_h
pushloc.v local._material
pushloc.v local._material_prev
cmp.v.v NEQ
bf [68]

:[67]
pushloc.v local._material
pop.v.v local._material_prev
pushloc.v local._page_data
pushloc.v local._material
dup.v 1 8
dup.v 0
push.v stacktop.__get_vertex_buffer
callv.v 1
pop.v.v local._vbuff

:[68]
pushloc.v local._bezier_do
conv.v.b
bf [79]

:[69]
pushloc.v local._quad_l
pushloc.v local._half_w
add.v.v
pop.v.v local._quad_cx
pushloc.v local._quad_t
pushloc.v local._half_h
add.v.v
pop.v.v local._quad_cy
pushloc.v local._quad_cy
pushloc.v local._bezier_prev_cy
cmp.v.v GT
bf [71]

:[70]
pushi.e 0
pop.v.i local._bezier_search_index
pushi.e 0
pop.v.i local._bezier_search_d0
pushi.e -7
pushi.e 1
push.v [array]self._bezier_lengths
pop.v.v local._bezier_search_d1

:[71]
pushloc.v local._quad_cy
pop.v.v local._bezier_prev_cy

:[72]
pushi.e 1
bf [78]

:[73]
pushloc.v local._quad_cx
pushloc.v local._bezier_search_d1
cmp.v.v LTE
bf [75]

:[74]
pushloc.v local._bezier_param_increment
pushloc.v local._quad_cx
pushloc.v local._bezier_search_d0
sub.v.v
pushloc.v local._bezier_search_d1
pushloc.v local._bezier_search_d0
sub.v.v
div.v.v
pushloc.v local._bezier_search_index
add.v.v
mul.v.v
pop.v.v local._bezier_param
b [78]

:[75]
push.v local._bezier_search_index
push.e 1
add.i.v
pop.v.v local._bezier_search_index
pushloc.v local._bezier_search_index
pushi.e 19
cmp.i.v GTE
bf [77]

:[76]
pushi.e 1
pop.v.i local._bezier_param
b [78]

:[77]
pushloc.v local._bezier_search_d1
pop.v.v local._bezier_search_d0
pushi.e -7
pushloc.v local._bezier_search_index
pushi.e 1
add.i.v
conv.v.i
push.v [array]self._bezier_lengths
pop.v.v local._bezier_search_d1
b [72]

:[78]
pushloc.v local._bezier_param
pop.v.v local._quad_l
pushloc.v local._bezier_param
pop.v.v local._quad_r
pushloc.v local._quad_cy
pop.v.v local._quad_t
pushloc.v local._quad_cy
pop.v.v local._quad_b

:[79]
pushloc.v local._packed_indexes
pushloc.v local._quad_t
pushloc.v local._quad_l
pushloc.v local._vbuff
call.i vertex_position_3d(argc=4)
popz.v
pushloc.v local._glyph_effect_flags
pushloc.v local._glyph_sprite_data
pushi.e 0
conv.i.v
pushloc.v local._vbuff
call.i vertex_normal(argc=4)
popz.v
pushloc.v local._write_colour
pushloc.v local._vbuff
call.i vertex_argb(argc=2)
popz.v
pushloc.v local._quad_v0
pushloc.v local._quad_u0
pushloc.v local._vbuff
call.i vertex_texcoord(argc=3)
popz.v
pushloc.v local._half_h
pushloc.v local._half_w
pushloc.v local._vbuff
call.i vertex_float2(argc=3)
popz.v
pushloc.v local._packed_indexes
pushloc.v local._quad_b
pushloc.v local._quad_r
pushloc.v local._vbuff
call.i vertex_position_3d(argc=4)
popz.v
pushloc.v local._glyph_effect_flags
pushloc.v local._glyph_sprite_data
pushi.e 0
conv.i.v
pushloc.v local._vbuff
call.i vertex_normal(argc=4)
popz.v
pushloc.v local._write_colour
pushloc.v local._vbuff
call.i vertex_argb(argc=2)
popz.v
pushloc.v local._quad_v1
pushloc.v local._quad_u1
pushloc.v local._vbuff
call.i vertex_texcoord(argc=3)
popz.v
pushloc.v local._half_h
neg.v
pushloc.v local._half_w
neg.v
pushloc.v local._vbuff
call.i vertex_float2(argc=3)
popz.v
pushloc.v local._packed_indexes
pushloc.v local._quad_b
pushloc.v local._quad_l
pushloc.v local._vbuff
call.i vertex_position_3d(argc=4)
popz.v
pushloc.v local._glyph_effect_flags
pushloc.v local._glyph_sprite_data
pushi.e 0
conv.i.v
pushloc.v local._vbuff
call.i vertex_normal(argc=4)
popz.v
pushloc.v local._write_colour
pushloc.v local._vbuff
call.i vertex_argb(argc=2)
popz.v
pushloc.v local._quad_v1
pushloc.v local._quad_u0
pushloc.v local._vbuff
call.i vertex_texcoord(argc=3)
popz.v
pushloc.v local._half_h
neg.v
pushloc.v local._half_w
pushloc.v local._vbuff
call.i vertex_float2(argc=3)
popz.v
pushloc.v local._packed_indexes
pushloc.v local._quad_b
pushloc.v local._quad_r
pushloc.v local._vbuff
call.i vertex_position_3d(argc=4)
popz.v
pushloc.v local._glyph_effect_flags
pushloc.v local._glyph_sprite_data
pushi.e 0
conv.i.v
pushloc.v local._vbuff
call.i vertex_normal(argc=4)
popz.v
pushloc.v local._write_colour
pushloc.v local._vbuff
call.i vertex_argb(argc=2)
popz.v
pushloc.v local._quad_v1
pushloc.v local._quad_u1
pushloc.v local._vbuff
call.i vertex_texcoord(argc=3)
popz.v
pushloc.v local._half_h
neg.v
pushloc.v local._half_w
neg.v
pushloc.v local._vbuff
call.i vertex_float2(argc=3)
popz.v
pushloc.v local._packed_indexes
pushloc.v local._quad_t
pushloc.v local._quad_l
pushloc.v local._vbuff
call.i vertex_position_3d(argc=4)
popz.v
pushloc.v local._glyph_effect_flags
pushloc.v local._glyph_sprite_data
pushi.e 0
conv.i.v
pushloc.v local._vbuff
call.i vertex_normal(argc=4)
popz.v
pushloc.v local._write_colour
pushloc.v local._vbuff
call.i vertex_argb(argc=2)
popz.v
pushloc.v local._quad_v0
pushloc.v local._quad_u0
pushloc.v local._vbuff
call.i vertex_texcoord(argc=3)
popz.v
pushloc.v local._half_h
pushloc.v local._half_w
pushloc.v local._vbuff
call.i vertex_float2(argc=3)
popz.v
pushloc.v local._packed_indexes
pushloc.v local._quad_t
pushloc.v local._quad_r
pushloc.v local._vbuff
call.i vertex_position_3d(argc=4)
popz.v
pushloc.v local._glyph_effect_flags
pushloc.v local._glyph_sprite_data
pushi.e 0
conv.i.v
pushloc.v local._vbuff
call.i vertex_normal(argc=4)
popz.v
pushloc.v local._write_colour
pushloc.v local._vbuff
call.i vertex_argb(argc=2)
popz.v
pushloc.v local._quad_v0
pushloc.v local._quad_u1
pushloc.v local._vbuff
call.i vertex_texcoord(argc=3)
popz.v
pushloc.v local._half_h
pushloc.v local._half_w
neg.v
pushloc.v local._vbuff
call.i vertex_float2(argc=3)
popz.v

:[80]
b [131]

:[81]
pushloc.v local._glyph_ord
pushi.e -1
cmp.i.v EQ
bf [111]

:[82]
pushloc.v local._text_getter
conv.v.b
bf [84]

:[83]
pushi.e 26
conv.i.v
pushi.e 1
conv.i.v
push.v static._string_buffer
call.i buffer_write(argc=3)
popz.v

:[84]
push.l 2
conv.l.v
pushloc.v local._i
pushloc.v local._glyph_grid
call.i ds_grid_get(argc=3)
pop.v.v local._glyph_x
push.l 3
conv.l.v
pushloc.v local._i
pushloc.v local._glyph_grid
call.i ds_grid_get(argc=3)
pop.v.v local._glyph_y
push.l 4
conv.l.v
pushloc.v local._i
pushloc.v local._glyph_grid
call.i ds_grid_get(argc=3)
pop.v.v local._glyph_width
push.l 5
conv.l.v
pushloc.v local._i
pushloc.v local._glyph_grid
call.i ds_grid_get(argc=3)
pop.v.v local._glyph_height
push.l 16
conv.l.v
pushloc.v local._i
pushloc.v local._glyph_grid
call.i ds_grid_get(argc=3)
pop.v.v local._packed_indexes
push.l 17
conv.l.v
pushloc.v local._i
pushloc.v local._glyph_grid
call.i ds_grid_get(argc=3)
pop.v.v local._sprite_index
push.l 18
conv.l.v
pushloc.v local._i
pushloc.v local._glyph_grid
call.i ds_grid_get(argc=3)
pop.v.v local._image_index
push.l 19
conv.l.v
pushloc.v local._i
pushloc.v local._glyph_grid
call.i ds_grid_get(argc=3)
pop.v.v local._image_speed
pushloc.v local._sprite_index
call.i sprite_get_width(argc=1)
pushloc.v local._glyph_width
div.v.v
pop.v.v local._glyph_xscale
pushloc.v local._sprite_index
call.i sprite_get_height(argc=1)
pushloc.v local._glyph_height
div.v.v
pop.v.v local._glyph_yscale
pushloc.v local._glyph_effect_flags
pop.v.v local._old_glyph_effect_flags
pushloc.v local._image_speed
pushi.e 0
cmp.i.v GT
bf [86]

:[85]
push.v local._glyph_effect_flags
pushi.e 1
conv.i.l
or.l.v
pop.v.v local._glyph_effect_flags

:[86]
pushloc.v local._sprite_index
call.i sprite_get_number(argc=1)
pop.v.v local._sprite_number
pushloc.v local._sprite_number
pushi.e 127
cmp.i.v GT
bf [88]

:[87]
push.s ")"@372
conv.s.v
pushloc.v local._sprite_index
call.i sprite_get_name(argc=1)
push.s "In-line sprites cannot have more than 127 frames ("@3375
conv.s.v
call.i gml_Script___scribble_trace(argc=3)
popz.v
pushi.e 127
pop.v.i local._sprite_number

:[88]
pushloc.v local._image_speed
pushi.e 2
cmp.i.v GTE
bf [90]

:[89]
push.s "Image speed cannot be more than 2.0 ("@3376
pushloc.v local._image_speed
call.i string(argc=1)
add.v.s
push.s ")"@372
add.s.v
call.i gml_Script___scribble_trace(argc=1)
popz.v
pushi.e 2
pop.v.i local._image_speed

:[90]
pushloc.v local._image_speed
pushi.e 0
cmp.i.v LT
bf [92]

:[91]
push.s "Image speed cannot be less than 0.0 ("@3377
pushloc.v local._image_speed
call.i string(argc=1)
add.v.s
push.s ")"@372
add.s.v
call.i gml_Script___scribble_trace(argc=1)
popz.v
pushi.e 0
pop.v.i local._image_speed

:[92]
pushi.e 16384
pushi.e 256
pushloc.v local._image_speed
mul.v.i
call.i floor(argc=1)
mul.v.i
pushi.e 128
pushloc.v local._sprite_number
mul.v.i
add.v.v
pushloc.v local._image_index
add.v.v
pop.v.v local._glyph_sprite_data
pushloc.v local._image_index
pop.v.v local._j
pushloc.v local._image_speed
pushi.e 0
cmp.i.v GT
bf [94]

:[93]
pushloc.v local._sprite_number
b [95]

:[94]
pushi.e 1
conv.i.v

:[95]
conv.v.i
dup.i 0
push.i 0
cmp.i.i LTE
bt [110]

:[96]
pushloc.v local._j
pushloc.v local._sprite_index
call.i gml_Script___scribble_sprite_get_material(argc=2)
pop.v.v local._material
pushloc.v local._j
pushloc.v local._sprite_index
call.i sprite_get_uvs(argc=2)
pop.v.v local._uvs
pushi.e -7
pushi.e 0
push.v [array]self._uvs
pop.v.v local._quad_u0
pushi.e -7
pushi.e 1
push.v [array]self._uvs
pop.v.v local._quad_v0
pushi.e -7
pushi.e 2
push.v [array]self._uvs
pop.v.v local._quad_u1
pushi.e -7
pushi.e 3
push.v [array]self._uvs
pop.v.v local._quad_v1
pushloc.v local._glyph_x
pushi.e -7
pushi.e 4
push.v [array]self._uvs
pushloc.v local._glyph_xscale
div.v.v
add.v.v
call.i floor(argc=1)
pop.v.v local._quad_l
pushloc.v local._glyph_y
pushi.e -7
pushi.e 5
push.v [array]self._uvs
pushloc.v local._glyph_yscale
div.v.v
add.v.v
call.i floor(argc=1)
pop.v.v local._quad_t
pushloc.v local._quad_l
pushi.e -7
pushi.e 6
push.v [array]self._uvs
pushloc.v local._glyph_width
mul.v.v
add.v.v
pop.v.v local._quad_r
pushloc.v local._quad_t
pushi.e -7
pushi.e 7
push.v [array]self._uvs
pushloc.v local._glyph_height
mul.v.v
add.v.v
pop.v.v local._quad_b
push.d 0.5
pushloc.v local._quad_r
pushloc.v local._quad_l
sub.v.v
mul.v.d
pop.v.v local._half_w
push.d 0.5
pushloc.v local._quad_b
pushloc.v local._quad_t
sub.v.v
mul.v.d
pop.v.v local._half_h
pushloc.v local._material
pushloc.v local._material_prev
cmp.v.v NEQ
bf [98]

:[97]
pushloc.v local._material
pop.v.v local._material_prev
pushloc.v local._page_data
pushloc.v local._material
dup.v 1 8
dup.v 0
push.v stacktop.__get_vertex_buffer
callv.v 1
pop.v.v local._vbuff

:[98]
pushloc.v local._bezier_do
conv.v.b
bf [109]

:[99]
pushloc.v local._quad_l
pushloc.v local._half_w
add.v.v
pop.v.v local._quad_cx
pushloc.v local._quad_t
pushloc.v local._half_h
add.v.v
pop.v.v local._quad_cy
pushloc.v local._quad_cy
pushloc.v local._bezier_prev_cy
cmp.v.v GT
bf [101]

:[100]
pushi.e 0
pop.v.i local._bezier_search_index
pushi.e 0
pop.v.i local._bezier_search_d0
pushi.e -7
pushi.e 1
push.v [array]self._bezier_lengths
pop.v.v local._bezier_search_d1

:[101]
pushloc.v local._quad_cy
pop.v.v local._bezier_prev_cy

:[102]
pushi.e 1
bf [108]

:[103]
pushloc.v local._quad_cx
pushloc.v local._bezier_search_d1
cmp.v.v LTE
bf [105]

:[104]
pushloc.v local._bezier_param_increment
pushloc.v local._quad_cx
pushloc.v local._bezier_search_d0
sub.v.v
pushloc.v local._bezier_search_d1
pushloc.v local._bezier_search_d0
sub.v.v
div.v.v
pushloc.v local._bezier_search_index
add.v.v
mul.v.v
pop.v.v local._bezier_param
b [108]

:[105]
push.v local._bezier_search_index
push.e 1
add.i.v
pop.v.v local._bezier_search_index
pushloc.v local._bezier_search_index
pushi.e 19
cmp.i.v GTE
bf [107]

:[106]
pushi.e 1
pop.v.i local._bezier_param
b [108]

:[107]
pushloc.v local._bezier_search_d1
pop.v.v local._bezier_search_d0
pushi.e -7
pushloc.v local._bezier_search_index
pushi.e 1
add.i.v
conv.v.i
push.v [array]self._bezier_lengths
pop.v.v local._bezier_search_d1
b [102]

:[108]
pushloc.v local._bezier_param
pop.v.v local._quad_l
pushloc.v local._bezier_param
pop.v.v local._quad_r
pushloc.v local._quad_cy
pop.v.v local._quad_t
pushloc.v local._quad_cy
pop.v.v local._quad_b

:[109]
pushloc.v local._packed_indexes
pushloc.v local._quad_t
pushloc.v local._quad_l
pushloc.v local._vbuff
call.i vertex_position_3d(argc=4)
popz.v
pushloc.v local._glyph_effect_flags
pushloc.v local._glyph_sprite_data
pushi.e 0
conv.i.v
pushloc.v local._vbuff
call.i vertex_normal(argc=4)
popz.v
pushloc.v local._write_colour
pushloc.v local._vbuff
call.i vertex_argb(argc=2)
popz.v
pushloc.v local._quad_v0
pushloc.v local._quad_u0
pushloc.v local._vbuff
call.i vertex_texcoord(argc=3)
popz.v
pushloc.v local._half_h
pushloc.v local._half_w
pushloc.v local._vbuff
call.i vertex_float2(argc=3)
popz.v
pushloc.v local._packed_indexes
pushloc.v local._quad_b
pushloc.v local._quad_r
pushloc.v local._vbuff
call.i vertex_position_3d(argc=4)
popz.v
pushloc.v local._glyph_effect_flags
pushloc.v local._glyph_sprite_data
pushi.e 0
conv.i.v
pushloc.v local._vbuff
call.i vertex_normal(argc=4)
popz.v
pushloc.v local._write_colour
pushloc.v local._vbuff
call.i vertex_argb(argc=2)
popz.v
pushloc.v local._quad_v1
pushloc.v local._quad_u1
pushloc.v local._vbuff
call.i vertex_texcoord(argc=3)
popz.v
pushloc.v local._half_h
neg.v
pushloc.v local._half_w
neg.v
pushloc.v local._vbuff
call.i vertex_float2(argc=3)
popz.v
pushloc.v local._packed_indexes
pushloc.v local._quad_b
pushloc.v local._quad_l
pushloc.v local._vbuff
call.i vertex_position_3d(argc=4)
popz.v
pushloc.v local._glyph_effect_flags
pushloc.v local._glyph_sprite_data
pushi.e 0
conv.i.v
pushloc.v local._vbuff
call.i vertex_normal(argc=4)
popz.v
pushloc.v local._write_colour
pushloc.v local._vbuff
call.i vertex_argb(argc=2)
popz.v
pushloc.v local._quad_v1
pushloc.v local._quad_u0
pushloc.v local._vbuff
call.i vertex_texcoord(argc=3)
popz.v
pushloc.v local._half_h
neg.v
pushloc.v local._half_w
pushloc.v local._vbuff
call.i vertex_float2(argc=3)
popz.v
pushloc.v local._packed_indexes
pushloc.v local._quad_b
pushloc.v local._quad_r
pushloc.v local._vbuff
call.i vertex_position_3d(argc=4)
popz.v
pushloc.v local._glyph_effect_flags
pushloc.v local._glyph_sprite_data
pushi.e 0
conv.i.v
pushloc.v local._vbuff
call.i vertex_normal(argc=4)
popz.v
pushloc.v local._write_colour
pushloc.v local._vbuff
call.i vertex_argb(argc=2)
popz.v
pushloc.v local._quad_v1
pushloc.v local._quad_u1
pushloc.v local._vbuff
call.i vertex_texcoord(argc=3)
popz.v
pushloc.v local._half_h
neg.v
pushloc.v local._half_w
neg.v
pushloc.v local._vbuff
call.i vertex_float2(argc=3)
popz.v
pushloc.v local._packed_indexes
pushloc.v local._quad_t
pushloc.v local._quad_l
pushloc.v local._vbuff
call.i vertex_position_3d(argc=4)
popz.v
pushloc.v local._glyph_effect_flags
pushloc.v local._glyph_sprite_data
pushi.e 0
conv.i.v
pushloc.v local._vbuff
call.i vertex_normal(argc=4)
popz.v
pushloc.v local._write_colour
pushloc.v local._vbuff
call.i vertex_argb(argc=2)
popz.v
pushloc.v local._quad_v0
pushloc.v local._quad_u0
pushloc.v local._vbuff
call.i vertex_texcoord(argc=3)
popz.v
pushloc.v local._half_h
pushloc.v local._half_w
pushloc.v local._vbuff
call.i vertex_float2(argc=3)
popz.v
pushloc.v local._packed_indexes
pushloc.v local._quad_t
pushloc.v local._quad_r
pushloc.v local._vbuff
call.i vertex_position_3d(argc=4)
popz.v
pushloc.v local._glyph_effect_flags
pushloc.v local._glyph_sprite_data
pushi.e 0
conv.i.v
pushloc.v local._vbuff
call.i vertex_normal(argc=4)
popz.v
pushloc.v local._write_colour
pushloc.v local._vbuff
call.i vertex_argb(argc=2)
popz.v
pushloc.v local._quad_v0
pushloc.v local._quad_u1
pushloc.v local._vbuff
call.i vertex_texcoord(argc=3)
popz.v
pushloc.v local._half_h
pushloc.v local._half_w
neg.v
pushloc.v local._vbuff
call.i vertex_float2(argc=3)
popz.v
push.v local._j
push.e 1
add.i.v
pop.v.v local._j
push.v local._glyph_sprite_data
push.e 1
add.i.v
pop.v.v local._glyph_sprite_data
pushi.e 1
sub.i.i
dup.i 0
bt [96]

:[110]
popz.i
pushloc.v local._old_glyph_effect_flags
pop.v.v local._glyph_effect_flags
pushi.e 0
pop.v.i local._glyph_sprite_data
b [131]

:[111]
pushloc.v local._glyph_ord
pushi.e -2
cmp.i.v EQ
bt [113]

:[112]
pushloc.v local._glyph_ord
pushi.e -3
cmp.i.v EQ
b [114]

:[113]
push.e 1

:[114]
bf [131]

:[115]
pushloc.v local._text_getter
conv.v.b
bf [117]

:[116]
pushi.e 26
conv.i.v
pushi.e 1
conv.i.v
push.v static._string_buffer
call.i buffer_write(argc=3)
popz.v

:[117]
push.l 0
conv.l.v
pushloc.v local._i
pushloc.v local._vbuff_pos_grid
call.i ds_grid_get(argc=3)
pop.v.v local._quad_l
push.l 1
conv.l.v
pushloc.v local._i
pushloc.v local._vbuff_pos_grid
call.i ds_grid_get(argc=3)
pop.v.v local._quad_t
push.l 2
conv.l.v
pushloc.v local._i
pushloc.v local._vbuff_pos_grid
call.i ds_grid_get(argc=3)
pop.v.v local._quad_r
push.l 3
conv.l.v
pushloc.v local._i
pushloc.v local._vbuff_pos_grid
call.i ds_grid_get(argc=3)
pop.v.v local._quad_b
push.l 10
conv.l.v
pushloc.v local._i
pushloc.v local._glyph_grid
call.i ds_grid_get(argc=3)
pop.v.v local._material
push.l 11
conv.l.v
pushloc.v local._i
pushloc.v local._glyph_grid
call.i ds_grid_get(argc=3)
pop.v.v local._quad_u0
push.l 13
conv.l.v
pushloc.v local._i
pushloc.v local._glyph_grid
call.i ds_grid_get(argc=3)
pop.v.v local._quad_v0
push.l 12
conv.l.v
pushloc.v local._i
pushloc.v local._glyph_grid
call.i ds_grid_get(argc=3)
pop.v.v local._quad_u1
push.l 14
conv.l.v
pushloc.v local._i
pushloc.v local._glyph_grid
call.i ds_grid_get(argc=3)
pop.v.v local._quad_v1
push.d 0.5
push.l 4
conv.l.v
pushloc.v local._i
pushloc.v local._glyph_grid
call.i ds_grid_get(argc=3)
mul.v.d
pop.v.v local._half_w
push.d 0.5
push.l 5
conv.l.v
pushloc.v local._i
pushloc.v local._glyph_grid
call.i ds_grid_get(argc=3)
mul.v.d
pop.v.v local._half_h
pushloc.v local._material
pushloc.v local._material_prev
cmp.v.v NEQ
bf [119]

:[118]
pushloc.v local._material
pop.v.v local._material_prev
pushloc.v local._page_data
pushloc.v local._material
dup.v 1 8
dup.v 0
push.v stacktop.__get_vertex_buffer
callv.v 1
pop.v.v local._vbuff

:[119]
pushloc.v local._bezier_do
conv.v.b
bf [130]

:[120]
pushloc.v local._quad_l
pushloc.v local._half_w
add.v.v
pop.v.v local._quad_cx
pushloc.v local._quad_t
pushloc.v local._half_h
add.v.v
pop.v.v local._quad_cy
pushloc.v local._quad_cy
pushloc.v local._bezier_prev_cy
cmp.v.v GT
bf [122]

:[121]
pushi.e 0
pop.v.i local._bezier_search_index
pushi.e 0
pop.v.i local._bezier_search_d0
pushi.e -7
pushi.e 1
push.v [array]self._bezier_lengths
pop.v.v local._bezier_search_d1

:[122]
pushloc.v local._quad_cy
pop.v.v local._bezier_prev_cy

:[123]
pushi.e 1
bf [129]

:[124]
pushloc.v local._quad_cx
pushloc.v local._bezier_search_d1
cmp.v.v LTE
bf [126]

:[125]
pushloc.v local._bezier_param_increment
pushloc.v local._quad_cx
pushloc.v local._bezier_search_d0
sub.v.v
pushloc.v local._bezier_search_d1
pushloc.v local._bezier_search_d0
sub.v.v
div.v.v
pushloc.v local._bezier_search_index
add.v.v
mul.v.v
pop.v.v local._bezier_param
b [129]

:[126]
push.v local._bezier_search_index
push.e 1
add.i.v
pop.v.v local._bezier_search_index
pushloc.v local._bezier_search_index
pushi.e 19
cmp.i.v GTE
bf [128]

:[127]
pushi.e 1
pop.v.i local._bezier_param
b [129]

:[128]
pushloc.v local._bezier_search_d1
pop.v.v local._bezier_search_d0
pushi.e -7
pushloc.v local._bezier_search_index
pushi.e 1
add.i.v
conv.v.i
push.v [array]self._bezier_lengths
pop.v.v local._bezier_search_d1
b [123]

:[129]
pushloc.v local._bezier_param
pop.v.v local._quad_l
pushloc.v local._bezier_param
pop.v.v local._quad_r
pushloc.v local._quad_cy
pop.v.v local._quad_t
pushloc.v local._quad_cy
pop.v.v local._quad_b

:[130]
pushloc.v local._packed_indexes
pushloc.v local._quad_t
pushloc.v local._quad_l
pushloc.v local._vbuff
call.i vertex_position_3d(argc=4)
popz.v
pushloc.v local._glyph_effect_flags
pushloc.v local._glyph_sprite_data
pushi.e 0
conv.i.v
pushloc.v local._vbuff
call.i vertex_normal(argc=4)
popz.v
pushloc.v local._write_colour
pushloc.v local._vbuff
call.i vertex_argb(argc=2)
popz.v
pushloc.v local._quad_v0
pushloc.v local._quad_u0
pushloc.v local._vbuff
call.i vertex_texcoord(argc=3)
popz.v
pushloc.v local._half_h
pushloc.v local._half_w
pushloc.v local._vbuff
call.i vertex_float2(argc=3)
popz.v
pushloc.v local._packed_indexes
pushloc.v local._quad_b
pushloc.v local._quad_r
pushloc.v local._vbuff
call.i vertex_position_3d(argc=4)
popz.v
pushloc.v local._glyph_effect_flags
pushloc.v local._glyph_sprite_data
pushi.e 0
conv.i.v
pushloc.v local._vbuff
call.i vertex_normal(argc=4)
popz.v
pushloc.v local._write_colour
pushloc.v local._vbuff
call.i vertex_argb(argc=2)
popz.v
pushloc.v local._quad_v1
pushloc.v local._quad_u1
pushloc.v local._vbuff
call.i vertex_texcoord(argc=3)
popz.v
pushloc.v local._half_h
neg.v
pushloc.v local._half_w
neg.v
pushloc.v local._vbuff
call.i vertex_float2(argc=3)
popz.v
pushloc.v local._packed_indexes
pushloc.v local._quad_b
pushloc.v local._quad_l
pushloc.v local._vbuff
call.i vertex_position_3d(argc=4)
popz.v
pushloc.v local._glyph_effect_flags
pushloc.v local._glyph_sprite_data
pushi.e 0
conv.i.v
pushloc.v local._vbuff
call.i vertex_normal(argc=4)
popz.v
pushloc.v local._write_colour
pushloc.v local._vbuff
call.i vertex_argb(argc=2)
popz.v
pushloc.v local._quad_v1
pushloc.v local._quad_u0
pushloc.v local._vbuff
call.i vertex_texcoord(argc=3)
popz.v
pushloc.v local._half_h
neg.v
pushloc.v local._half_w
pushloc.v local._vbuff
call.i vertex_float2(argc=3)
popz.v
pushloc.v local._packed_indexes
pushloc.v local._quad_b
pushloc.v local._quad_r
pushloc.v local._vbuff
call.i vertex_position_3d(argc=4)
popz.v
pushloc.v local._glyph_effect_flags
pushloc.v local._glyph_sprite_data
pushi.e 0
conv.i.v
pushloc.v local._vbuff
call.i vertex_normal(argc=4)
popz.v
pushloc.v local._write_colour
pushloc.v local._vbuff
call.i vertex_argb(argc=2)
popz.v
pushloc.v local._quad_v1
pushloc.v local._quad_u1
pushloc.v local._vbuff
call.i vertex_texcoord(argc=3)
popz.v
pushloc.v local._half_h
neg.v
pushloc.v local._half_w
neg.v
pushloc.v local._vbuff
call.i vertex_float2(argc=3)
popz.v
pushloc.v local._packed_indexes
pushloc.v local._quad_t
pushloc.v local._quad_l
pushloc.v local._vbuff
call.i vertex_position_3d(argc=4)
popz.v
pushloc.v local._glyph_effect_flags
pushloc.v local._glyph_sprite_data
pushi.e 0
conv.i.v
pushloc.v local._vbuff
call.i vertex_normal(argc=4)
popz.v
pushloc.v local._write_colour
pushloc.v local._vbuff
call.i vertex_argb(argc=2)
popz.v
pushloc.v local._quad_v0
pushloc.v local._quad_u0
pushloc.v local._vbuff
call.i vertex_texcoord(argc=3)
popz.v
pushloc.v local._half_h
pushloc.v local._half_w
pushloc.v local._vbuff
call.i vertex_float2(argc=3)
popz.v
pushloc.v local._packed_indexes
pushloc.v local._quad_t
pushloc.v local._quad_r
pushloc.v local._vbuff
call.i vertex_position_3d(argc=4)
popz.v
pushloc.v local._glyph_effect_flags
pushloc.v local._glyph_sprite_data
pushi.e 0
conv.i.v
pushloc.v local._vbuff
call.i vertex_normal(argc=4)
popz.v
pushloc.v local._write_colour
pushloc.v local._vbuff
call.i vertex_argb(argc=2)
popz.v
pushloc.v local._quad_v0
pushloc.v local._quad_u1
pushloc.v local._vbuff
call.i vertex_texcoord(argc=3)
popz.v
pushloc.v local._half_h
pushloc.v local._half_w
neg.v
pushloc.v local._vbuff
call.i vertex_float2(argc=3)
popz.v

:[131]
push.v local._i
push.e 1
add.i.v
pop.v.v local._i
pushi.e 1
sub.i.i
dup.i 0
bt [31]

:[132]
popz.i
pushloc.v local._region_name
pushbltn.v builtin.undefined
cmp.v.v NEQ
bf [134]

:[133]
pushloc.v local._i
pushi.e 1
sub.i.v
pushloc.v local._region_start
pushloc.v local._region_name
pushloc.v local._page_data
call.i @@This@@(argc=0)
pushloc.v local._func_region_pop
callv.v 4
popz.v
pushloc.v local._i
pop.v.v local._region_start

:[134]
pushloc.v local._text_getter
conv.v.b
bf [136]

:[135]
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
push.v static._string_buffer
call.i buffer_write(argc=3)
popz.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
push.v static._string_buffer
call.i buffer_seek(argc=3)
popz.v
pushi.e 11
conv.i.v
push.v static._string_buffer
call.i buffer_read(argc=2)
pushloc.v local._page_data
pushi.e -9
pop.v.v [stacktop]self.__text

:[136]
push.v local._p
push.e 1
add.i.v
pop.v.v local._p
pushi.e 1
sub.i.i
dup.i 0
bt [24]

:[137]
popz.i
push.l 15
conv.l.v
pushloc.v local._i
pushi.e 1
sub.i.v
pushloc.v local._glyph_grid
call.i ds_grid_get(argc=3)
pushloc.v local._control_index
sub.v.v
pop.v.v local._control_delta
pushloc.v local._control_delta
conv.v.i
dup.i 0
push.i 0
cmp.i.i LTE
bt [148]

:[138]
push.l 0
conv.l.v
pushloc.v local._control_index
pushloc.v local._control_grid
call.i ds_grid_get(argc=3)
push.l 0
cmp.l.v EQ
bf [147]

:[139]
pushloc.v local._packed_indexes
pushi.e 1000
rem.i.v
pop.v.v local._character_index
pushloc.v local._packed_indexes
pushi.e 1000
mod.i.v
pushloc.v local._character_index
pushi.e 0
cmp.i.v GT
bf [141]

:[140]
pushi.e 1
conv.i.v
b [142]

:[141]
pushi.e 0
conv.i.v

:[142]
add.v.v
pop.v.v local._line_index
push.l 1
conv.l.v
pushloc.v local._control_index
pushloc.v local._control_grid
call.i ds_grid_get(argc=3)
pop.v.v local._event
pushloc.v local._character_index
pushloc.v local._event
pushi.e -9
pop.v.v [stacktop]self.position
pushloc.v local._character_index
pushloc.v local._event
pushi.e -9
pop.v.v [stacktop]self.character_index
pushloc.v local._line_index
pushloc.v local._event
pushi.e -9
pop.v.v [stacktop]self.line_index
pushloc.v local._character_index
pushloc.v local._page_char_events_dict
call.i variable_struct_get(argc=2)
pop.v.v local._event_array
pushloc.v local._event_array
call.i is_array(argc=1)
conv.v.b
not.b
bf [144]

:[143]
call.i @@NewGMLArray@@(argc=0)
pop.v.v local._event_array
pushloc.v local._event_array
pushloc.v local._character_index
pushloc.v local._page_char_events_dict
call.i variable_struct_set(argc=3)
popz.v

:[144]
pushloc.v local._event
pushloc.v local._event_array
call.i array_push(argc=2)
popz.v
pushloc.v local._line_index
pushloc.v local._page_line_events_dict
call.i variable_struct_get(argc=2)
pop.v.v local._event_array
pushloc.v local._event_array
call.i is_array(argc=1)
conv.v.b
not.b
bf [146]

:[145]
call.i @@NewGMLArray@@(argc=0)
pop.v.v local._event_array
pushloc.v local._event_array
pushloc.v local._line_index
pushloc.v local._page_line_events_dict
call.i variable_struct_set(argc=3)
popz.v

:[146]
pushloc.v local._event
pushloc.v local._event_array
call.i array_push(argc=2)
popz.v

:[147]
push.v local._control_index
push.e 1
add.i.v
pop.v.v local._control_index
pushi.e 1
sub.i.i
dup.i 0
bt [138]

:[148]
popz.i
pushloc.v local._element
pushi.e -9
push.v [stacktop]self.__freeze
call.i @@This@@(argc=0)
push.v builtin.__finalize_vertex_buffers
callv.v 1
popz.v
exit.i

:[149]
push.i [function]gml_Script___scribble_gen_10_write_vbuffs
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pop.v.v self.__scribble_gen_10_write_vbuffs
popz.v

:[end]