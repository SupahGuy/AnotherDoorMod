:[0]
b [371]

> gml_Script___scribble_gen_6_build_lines (locals=56, argc=0)
:[1]
isstaticok.e
bt [3]

:[2]
setstatic.e
call.i gml_Script___scribble_system(argc=0)
pushi.e -9
push.v [stacktop]self.__generator_state
pop.v.v static._generator_state

:[3]
push.v static._generator_state
pushi.e -9
pushenv [11]

:[4]
push.v builtin.__glyph_grid
pop.v.v local._glyph_grid
push.v builtin.__word_grid
pop.v.v local._word_grid
push.v builtin.__line_grid
pop.v.v local._line_grid
push.v builtin.__control_grid
pop.v.v local._control_grid
push.v builtin.__temp_grid
pop.v.v local._temp_grid
push.v builtin.__element
pop.v.v local._element
push.v builtin.__word_count
pop.v.v local._word_count
push.v builtin.__line_height_min
pop.v.v local._line_height_min
push.v builtin.__line_height_max
pop.v.v local._line_height_max
push.v builtin.__line_spacing_add
pop.v.v local._line_spacing_add
push.v builtin.__line_spacing_multiply
pop.v.v local._line_spacing_multiply
pushloc.v local._element
pushi.e -9
push.v [stacktop]self.__wrap_no_pages
pop.v.v local._wrap_no_pages
pushloc.v local._element
pushi.e -9
push.v [stacktop]self.__wrap_max_scale
pop.v.v local._wrap_max_scale
pushloc.v local._element
pushi.e -9
push.v [stacktop]self.__wrap_apply
pop.v.v local._wrap_apply
pushloc.v local._wrap_apply
conv.v.b
bf [6]

:[5]
push.v builtin.__model_max_width
b [7]

:[6]
pushbltn.v builtin.infinity

:[7]
pop.v.v local._model_max_width
pushloc.v local._wrap_apply
conv.v.b
bf [9]

:[8]
push.v builtin.__model_max_height
b [10]

:[9]
pushbltn.v builtin.infinity

:[10]
pop.v.v local._model_max_height

:[11]
popenv [4]
pushi.e 1
pop.v.b local._forced_break
pushi.e 0
pop.v.i local._fit_to_box_iterations
pushbltn.v builtin.undefined
pop.v.v local._lower_limit
pushbltn.v builtin.undefined
pop.v.v local._upper_limit
pushi.e 7
dup.i 0
push.i 0
cmp.i.i LTE
bt [344]

:[12]
pushi.e 0
pop.v.i local._line_max_y
pushloc.v local._model_max_width
push.v builtin.__fit_scale
div.v.v
pop.v.v local._simulated_model_max_width
pushloc.v local._model_max_height
push.v builtin.__fit_scale
div.v.v
pop.v.v local._simulated_model_max_height
pushi.e 0
pop.v.i local._line_count
pushi.e 0
pop.v.b local._word_broken
pushloc.v local._word_count
pushi.e 0
cmp.i.v GT
bf [318]

:[13]
pushi.e 0
pop.v.i local._state_halign
pushi.e 0
pop.v.i local._control_index
pushi.e 0
pop.v.i local._word_x
pushi.e 0
pop.v.i local._line_y
pushi.e 0
pop.v.i local._indent_x
push.l 15
conv.l.v
pushi.e 0
conv.i.v
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
bt [17]

:[14]
push.l 0
conv.l.v
pushloc.v local._control_index
pushloc.v local._control_grid
call.i ds_grid_get(argc=3)
push.l 1
cmp.l.v EQ
bf [16]

:[15]
push.l 1
conv.l.v
pushloc.v local._control_index
pushloc.v local._control_grid
call.i ds_grid_get(argc=3)
pop.v.v local._state_halign

:[16]
push.v local._control_index
push.e 1
add.i.v
pop.v.v local._control_index
pushi.e 1
sub.i.i
dup.i 0
bt [14]

:[17]
popz.i
pushi.e 0
pop.v.i local._i
pushi.e 0
pop.v.i local._word_width
pushi.e 0
pop.v.i local._line_word_start
pushloc.v local._indent_x
push.l 0
conv.l.v
pushloc.v local._line_count
pushloc.v local._line_grid
call.i ds_grid_set(argc=4)
popz.v
pushloc.v local._line_word_start
push.l 2
conv.l.v
pushloc.v local._line_count
pushloc.v local._line_grid
call.i ds_grid_set(argc=4)
popz.v
pushloc.v local._state_halign
push.l 6
conv.l.v
pushloc.v local._line_count
pushloc.v local._line_grid
call.i ds_grid_set(argc=4)
popz.v
pushi.e 0
conv.b.v
push.l 7
conv.l.v
pushloc.v local._line_count
pushloc.v local._line_grid
call.i ds_grid_set(argc=4)
popz.v
pushi.e 0
conv.b.v
push.l 8
conv.l.v
pushloc.v local._line_count
pushloc.v local._line_grid
call.i ds_grid_set(argc=4)
popz.v
pushloc.v local._forced_break
push.l 9
conv.l.v
pushloc.v local._line_count
pushloc.v local._line_grid
call.i ds_grid_set(argc=4)
popz.v
pushi.e 0
pop.v.b local._forced_break
pushi.e 1
conv.i.b
bf [19]

:[18]
push.l 1
conv.l.v
pushloc.v local._line_word_start
pushloc.v local._word_grid
call.i ds_grid_get(argc=3)
push.l 6
cmp.l.v LT
b [20]

:[19]
push.e 0

:[20]
bf [32]

:[21]
push.l 2
conv.l.v
pushloc.v local._line_word_start
pushloc.v local._word_grid
call.i ds_grid_get(argc=3)
pop.v.v local._word_glyph_start
push.l 3
conv.l.v
pushloc.v local._line_word_start
pushloc.v local._word_grid
call.i ds_grid_get(argc=3)
pop.v.v local._word_glyph_end
push.l 8
conv.l.v
pushloc.v local._word_glyph_start
pushloc.v local._glyph_grid
call.i ds_grid_get(argc=3)
pop.v.v local._left_correction
pushloc.v local._left_correction
pushi.e 0
cmp.i.v GT
bf [23]

:[22]
pushi.e 1
b [24]

:[23]
push.e 0

:[24]
bt [29]

:[25]
pushloc.v local._left_correction
pushi.e 0
cmp.i.v LT
bf [27]

:[26]
pushi.e 0
b [28]

:[27]
push.e 0

:[28]
b [30]

:[29]
push.e 1

:[30]
bf [32]

:[31]
push.l 4
conv.l.v
pushloc.v local._line_word_start
pushloc.v local._word_grid
call.i ds_grid_get(argc=3)
pushloc.v local._left_correction
add.v.v
push.l 4
conv.l.v
pushloc.v local._line_word_start
pushloc.v local._word_grid
call.i ds_grid_set(argc=4)
popz.v
push.v local._word_width
pushloc.v local._left_correction
add.v.v
pop.v.v local._word_width

:[32]
pushloc.v local._indent_x
pop.v.v local._word_x
pushloc.v local._word_count
conv.v.i
dup.i 0
push.i 0
cmp.i.i LTE
bt [303]

:[33]
push.l 4
conv.l.v
pushloc.v local._i
pushloc.v local._word_grid
call.i ds_grid_get(argc=3)
pop.v.v local._word_width
push.l 2
conv.l.v
pushloc.v local._i
pushloc.v local._word_grid
call.i ds_grid_get(argc=3)
pop.v.v local._word_start_glyph
push.l 15
conv.l.v
pushloc.v local._word_start_glyph
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
bt [42]

:[34]
push.l 0
conv.l.v
pushloc.v local._control_index
pushloc.v local._control_grid
call.i ds_grid_get(argc=3)
dup.v 0
push.l 1
cmp.l.v EQ
bt [38]

:[35]
dup.v 0
push.l 7
cmp.l.v EQ
bt [39]

:[36]
dup.v 0
push.l 8
cmp.l.v EQ
bt [40]

:[37]
b [41]

:[38]
push.l 1
conv.l.v
pushloc.v local._control_index
pushloc.v local._control_grid
call.i ds_grid_get(argc=3)
pop.v.v local._state_halign
b [41]

:[39]
pushloc.v local._word_x
pop.v.v local._indent_x
b [41]

:[40]
pushi.e 0
pop.v.i local._indent_x
b [41]

:[41]
popz.v
push.v local._control_index
push.e 1
add.i.v
pop.v.v local._control_index
pushi.e 1
sub.i.i
dup.i 0
bt [34]

:[42]
popz.i
pushloc.v local._state_halign
dup.v 0
pushi.e 0
cmp.i.v EQ
bt [46]

:[43]
dup.v 0
pushi.e 1
cmp.i.v EQ
bt [47]

:[44]
dup.v 0
pushi.e 2
cmp.i.v EQ
bt [48]

:[45]
b [49]

:[46]
pushi.e 1
push.v static._generator_state
pushi.e -9
pop.v.b [stacktop]self.__uses_halign_left
b [49]

:[47]
pushi.e 1
push.v static._generator_state
pushi.e -9
pop.v.b [stacktop]self.__uses_halign_center
b [49]

:[48]
pushi.e 1
push.v static._generator_state
pushi.e -9
pop.v.b [stacktop]self.__uses_halign_right
b [49]

:[49]
popz.v
pushloc.v local._word_x
pushloc.v local._word_width
add.v.v
pushloc.v local._simulated_model_max_width
cmp.v.v GT
bf [241]

:[50]
pushi.e 1
pop.v.b builtin.__wrapped
pushloc.v local._word_width
pushloc.v local._simulated_model_max_width
cmp.v.v GTE
bf [178]

:[51]
pushi.e 1
pop.v.b local._word_broken
pushloc.v local._wrap_no_pages
conv.v.b
bf [66]

:[52]
pushloc.v local._i
pop.v.v local._line_word_end
push.l 5
conv.l.v
pushloc.v local._line_word_end
push.l 5
conv.l.v
pushloc.v local._line_word_start
pushloc.v local._word_grid
call.i ds_grid_get_max(argc=5)
pop.v.v local._found_line_height
pushloc.v local._found_line_height
pushloc.v local._line_height_min
cmp.v.v LT
bf [57]

:[53]
pushloc.v local._found_line_height
pushi.e 2
conv.i.d
div.d.v
pushloc.v local._found_line_height
pushi.e 2
rem.i.v
cmp.v.v EQ
pushloc.v local._line_height_min
pushi.e 2
conv.i.d
div.d.v
pushloc.v local._line_height_min
pushi.e 2
rem.i.v
cmp.v.v EQ
cmp.b.b EQ
bf [55]

:[54]
pushloc.v local._line_height_min
pop.v.v local._line_height
b [56]

:[55]
pushloc.v local._line_height_min
pushi.e 1
add.i.v
pop.v.v local._line_height

:[56]
b [63]

:[57]
pushloc.v local._found_line_height
pushloc.v local._line_height_max
cmp.v.v GT
bf [62]

:[58]
pushloc.v local._found_line_height
pushi.e 2
conv.i.d
div.d.v
pushloc.v local._found_line_height
pushi.e 2
rem.i.v
cmp.v.v EQ
pushloc.v local._line_height_max
pushi.e 2
conv.i.d
div.d.v
pushloc.v local._line_height_max
pushi.e 2
rem.i.v
cmp.v.v EQ
cmp.b.b EQ
bf [60]

:[59]
pushloc.v local._line_height_max
pop.v.v local._line_height
b [61]

:[60]
pushloc.v local._line_height_max
pushi.e 1
sub.i.v
pop.v.v local._line_height

:[61]
b [63]

:[62]
pushloc.v local._found_line_height
pop.v.v local._line_height

:[63]
pushloc.v local._line_word_end
push.l 3
conv.l.v
pushloc.v local._line_count
pushloc.v local._line_grid
call.i ds_grid_set(argc=4)
popz.v
pushloc.v local._word_x
push.l 4
conv.l.v
pushloc.v local._line_count
pushloc.v local._line_grid
call.i ds_grid_set(argc=4)
popz.v
pushloc.v local._line_height
push.l 5
conv.l.v
pushloc.v local._line_count
pushloc.v local._line_grid
call.i ds_grid_set(argc=4)
popz.v
push.v local._line_count
push.e 1
add.i.v
pop.v.v local._line_count
pushloc.v local._line_y
pushloc.v local._line_height
add.v.v
pushloc.v local._line_max_y
cmp.v.v GT
bf [65]

:[64]
pushloc.v local._line_y
pushloc.v local._line_height
add.v.v
pop.v.v local._line_max_y

:[65]
push.v local._line_y
pushloc.v local._line_spacing_add
pushloc.v local._line_height
pushloc.v local._line_spacing_multiply
mul.v.v
add.v.v
add.v.v
pop.v.v local._line_y
push.v local._line_y
pushloc.v local._line_height
add.v.v
pop.v.v local._line_y
b [303]

:[66]
push.l 1
conv.l.v
pushloc.v local._i
pushloc.v local._word_grid
call.i ds_grid_get(argc=3)
push.l 6
cmp.l.v GTE
bf [96]

:[67]
pushloc.v local._i
pop.v.v local._line_word_end
push.l 5
conv.l.v
pushloc.v local._line_word_end
push.l 5
conv.l.v
pushloc.v local._line_word_start
pushloc.v local._word_grid
call.i ds_grid_get_max(argc=5)
pop.v.v local._found_line_height
pushloc.v local._found_line_height
pushloc.v local._line_height_min
cmp.v.v LT
bf [72]

:[68]
pushloc.v local._found_line_height
pushi.e 2
conv.i.d
div.d.v
pushloc.v local._found_line_height
pushi.e 2
rem.i.v
cmp.v.v EQ
pushloc.v local._line_height_min
pushi.e 2
conv.i.d
div.d.v
pushloc.v local._line_height_min
pushi.e 2
rem.i.v
cmp.v.v EQ
cmp.b.b EQ
bf [70]

:[69]
pushloc.v local._line_height_min
pop.v.v local._line_height
b [71]

:[70]
pushloc.v local._line_height_min
pushi.e 1
add.i.v
pop.v.v local._line_height

:[71]
b [78]

:[72]
pushloc.v local._found_line_height
pushloc.v local._line_height_max
cmp.v.v GT
bf [77]

:[73]
pushloc.v local._found_line_height
pushi.e 2
conv.i.d
div.d.v
pushloc.v local._found_line_height
pushi.e 2
rem.i.v
cmp.v.v EQ
pushloc.v local._line_height_max
pushi.e 2
conv.i.d
div.d.v
pushloc.v local._line_height_max
pushi.e 2
rem.i.v
cmp.v.v EQ
cmp.b.b EQ
bf [75]

:[74]
pushloc.v local._line_height_max
pop.v.v local._line_height
b [76]

:[75]
pushloc.v local._line_height_max
pushi.e 1
sub.i.v
pop.v.v local._line_height

:[76]
b [78]

:[77]
pushloc.v local._found_line_height
pop.v.v local._line_height

:[78]
pushloc.v local._line_word_end
push.l 3
conv.l.v
pushloc.v local._line_count
pushloc.v local._line_grid
call.i ds_grid_set(argc=4)
popz.v
pushloc.v local._word_x
push.l 4
conv.l.v
pushloc.v local._line_count
pushloc.v local._line_grid
call.i ds_grid_set(argc=4)
popz.v
pushloc.v local._line_height
push.l 5
conv.l.v
pushloc.v local._line_count
pushloc.v local._line_grid
call.i ds_grid_set(argc=4)
popz.v
push.v local._line_count
push.e 1
add.i.v
pop.v.v local._line_count
pushloc.v local._line_y
pushloc.v local._line_height
add.v.v
pushloc.v local._line_max_y
cmp.v.v GT
bf [80]

:[79]
pushloc.v local._line_y
pushloc.v local._line_height
add.v.v
pop.v.v local._line_max_y

:[80]
push.v local._line_y
pushloc.v local._line_spacing_add
pushloc.v local._line_height
pushloc.v local._line_spacing_multiply
mul.v.v
add.v.v
add.v.v
pop.v.v local._line_y
pushloc.v local._i
pushi.e 1
add.i.v
pop.v.v local._line_word_start
pushloc.v local._indent_x
push.l 0
conv.l.v
pushloc.v local._line_count
pushloc.v local._line_grid
call.i ds_grid_set(argc=4)
popz.v
pushloc.v local._line_word_start
push.l 2
conv.l.v
pushloc.v local._line_count
pushloc.v local._line_grid
call.i ds_grid_set(argc=4)
popz.v
pushloc.v local._state_halign
push.l 6
conv.l.v
pushloc.v local._line_count
pushloc.v local._line_grid
call.i ds_grid_set(argc=4)
popz.v
pushi.e 0
conv.b.v
push.l 7
conv.l.v
pushloc.v local._line_count
pushloc.v local._line_grid
call.i ds_grid_set(argc=4)
popz.v
pushi.e 0
conv.b.v
push.l 8
conv.l.v
pushloc.v local._line_count
pushloc.v local._line_grid
call.i ds_grid_set(argc=4)
popz.v
pushloc.v local._forced_break
push.l 9
conv.l.v
pushloc.v local._line_count
pushloc.v local._line_grid
call.i ds_grid_set(argc=4)
popz.v
pushi.e 0
pop.v.b local._forced_break
pushi.e 1
conv.i.b
bf [82]

:[81]
push.l 1
conv.l.v
pushloc.v local._line_word_start
pushloc.v local._word_grid
call.i ds_grid_get(argc=3)
push.l 6
cmp.l.v LT
b [83]

:[82]
push.e 0

:[83]
bf [95]

:[84]
push.l 2
conv.l.v
pushloc.v local._line_word_start
pushloc.v local._word_grid
call.i ds_grid_get(argc=3)
pop.v.v local._word_glyph_start
push.l 3
conv.l.v
pushloc.v local._line_word_start
pushloc.v local._word_grid
call.i ds_grid_get(argc=3)
pop.v.v local._word_glyph_end
push.l 8
conv.l.v
pushloc.v local._word_glyph_start
pushloc.v local._glyph_grid
call.i ds_grid_get(argc=3)
pop.v.v local._left_correction
pushloc.v local._left_correction
pushi.e 0
cmp.i.v GT
bf [86]

:[85]
pushi.e 1
b [87]

:[86]
push.e 0

:[87]
bt [92]

:[88]
pushloc.v local._left_correction
pushi.e 0
cmp.i.v LT
bf [90]

:[89]
pushi.e 0
b [91]

:[90]
push.e 0

:[91]
b [93]

:[92]
push.e 1

:[93]
bf [95]

:[94]
push.l 4
conv.l.v
pushloc.v local._line_word_start
pushloc.v local._word_grid
call.i ds_grid_get(argc=3)
pushloc.v local._left_correction
add.v.v
push.l 4
conv.l.v
pushloc.v local._line_word_start
pushloc.v local._word_grid
call.i ds_grid_set(argc=4)
popz.v
push.v local._word_width
pushloc.v local._left_correction
add.v.v
pop.v.v local._word_width

:[95]
pushloc.v local._indent_x
pop.v.v local._word_x
b [177]

:[96]
pushloc.v local._word_count
pushloc.v local._i
pushi.e 1
add.i.v
sub.v.v
pop.v.v local._stashed_word_count
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 5
conv.i.v
pushloc.v local._word_count
pushi.e 0
conv.i.v
pushloc.v local._i
pushi.e 1
add.i.v
pushloc.v local._word_grid
pushloc.v local._temp_grid
call.i ds_grid_set_grid_region(argc=8)
popz.v
push.l 0
conv.l.v
pushloc.v local._i
pushloc.v local._word_grid
call.i ds_grid_get(argc=3)
pop.v.v local._original_word_bidi_raw
push.l 1
conv.l.v
pushloc.v local._i
pushloc.v local._word_grid
call.i ds_grid_get(argc=3)
pop.v.v local._original_word_bidi
push.l 2
conv.l.v
pushloc.v local._i
pushloc.v local._word_grid
call.i ds_grid_get(argc=3)
pop.v.v local._original_word_glyph_start
push.l 3
conv.l.v
pushloc.v local._i
pushloc.v local._word_grid
call.i ds_grid_get(argc=3)
pop.v.v local._original_word_glyph_end
push.l 5
conv.l.v
pushloc.v local._i
pushloc.v local._word_grid
call.i ds_grid_get(argc=3)
pop.v.v local._original_word_height
pushi.e 1
conv.i.b
bf [98]

:[97]
push.l 1
conv.l.v
pushloc.v local._i
pushloc.v local._word_grid
call.i ds_grid_get(argc=3)
push.l 6
cmp.l.v LT
b [99]

:[98]
push.e 0

:[99]
bf [111]

:[100]
push.l 8
conv.l.v
pushloc.v local._original_word_glyph_start
pushloc.v local._glyph_grid
call.i ds_grid_get(argc=3)
pop.v.v local._left_correction
pushloc.v local._left_correction
pushi.e 0
cmp.i.v GT
bf [102]

:[101]
pushi.e 1
b [103]

:[102]
push.e 0

:[103]
bt [108]

:[104]
pushloc.v local._left_correction
pushi.e 0
cmp.i.v LT
bf [106]

:[105]
pushi.e 0
b [107]

:[106]
push.e 0

:[107]
b [109]

:[108]
push.e 1

:[109]
bf [111]

:[110]
push.v local._word_x
pushloc.v local._left_correction
add.v.v
pop.v.v local._word_x

:[111]
pushloc.v local._word_x
pop.v.v local._new_word_start_x
pushloc.v local._original_word_glyph_start
pop.v.v local._new_word_glyph_start
pushloc.v local._new_word_glyph_start
pop.v.v local._j
push.l 7
conv.l.v
pushloc.v local._j
pushloc.v local._glyph_grid
call.i ds_grid_get(argc=3)
pop.v.v local._glyph_width
pushloc.v local._word_x
pushloc.v local._glyph_width
add.v.v
pushloc.v local._simulated_model_max_width
cmp.v.v GTE
bf [113]

:[112]
pushloc.v local._i
pushloc.v local._line_word_start
cmp.v.v GT
b [114]

:[113]
push.e 0

:[114]
bf [144]

:[115]
pushloc.v local._i
pushi.e 1
sub.i.v
pop.v.v local._line_word_end
push.l 5
conv.l.v
pushloc.v local._line_word_end
push.l 5
conv.l.v
pushloc.v local._line_word_start
pushloc.v local._word_grid
call.i ds_grid_get_max(argc=5)
pop.v.v local._found_line_height
pushloc.v local._found_line_height
pushloc.v local._line_height_min
cmp.v.v LT
bf [120]

:[116]
pushloc.v local._found_line_height
pushi.e 2
conv.i.d
div.d.v
pushloc.v local._found_line_height
pushi.e 2
rem.i.v
cmp.v.v EQ
pushloc.v local._line_height_min
pushi.e 2
conv.i.d
div.d.v
pushloc.v local._line_height_min
pushi.e 2
rem.i.v
cmp.v.v EQ
cmp.b.b EQ
bf [118]

:[117]
pushloc.v local._line_height_min
pop.v.v local._line_height
b [119]

:[118]
pushloc.v local._line_height_min
pushi.e 1
add.i.v
pop.v.v local._line_height

:[119]
b [126]

:[120]
pushloc.v local._found_line_height
pushloc.v local._line_height_max
cmp.v.v GT
bf [125]

:[121]
pushloc.v local._found_line_height
pushi.e 2
conv.i.d
div.d.v
pushloc.v local._found_line_height
pushi.e 2
rem.i.v
cmp.v.v EQ
pushloc.v local._line_height_max
pushi.e 2
conv.i.d
div.d.v
pushloc.v local._line_height_max
pushi.e 2
rem.i.v
cmp.v.v EQ
cmp.b.b EQ
bf [123]

:[122]
pushloc.v local._line_height_max
pop.v.v local._line_height
b [124]

:[123]
pushloc.v local._line_height_max
pushi.e 1
sub.i.v
pop.v.v local._line_height

:[124]
b [126]

:[125]
pushloc.v local._found_line_height
pop.v.v local._line_height

:[126]
pushloc.v local._line_word_end
push.l 3
conv.l.v
pushloc.v local._line_count
pushloc.v local._line_grid
call.i ds_grid_set(argc=4)
popz.v
pushloc.v local._word_x
push.l 4
conv.l.v
pushloc.v local._line_count
pushloc.v local._line_grid
call.i ds_grid_set(argc=4)
popz.v
pushloc.v local._line_height
push.l 5
conv.l.v
pushloc.v local._line_count
pushloc.v local._line_grid
call.i ds_grid_set(argc=4)
popz.v
push.v local._line_count
push.e 1
add.i.v
pop.v.v local._line_count
pushloc.v local._line_y
pushloc.v local._line_height
add.v.v
pushloc.v local._line_max_y
cmp.v.v GT
bf [128]

:[127]
pushloc.v local._line_y
pushloc.v local._line_height
add.v.v
pop.v.v local._line_max_y

:[128]
push.v local._line_y
pushloc.v local._line_spacing_add
pushloc.v local._line_height
pushloc.v local._line_spacing_multiply
mul.v.v
add.v.v
add.v.v
pop.v.v local._line_y
pushloc.v local._i
pop.v.v local._line_word_start
pushloc.v local._indent_x
push.l 0
conv.l.v
pushloc.v local._line_count
pushloc.v local._line_grid
call.i ds_grid_set(argc=4)
popz.v
pushloc.v local._line_word_start
push.l 2
conv.l.v
pushloc.v local._line_count
pushloc.v local._line_grid
call.i ds_grid_set(argc=4)
popz.v
pushloc.v local._state_halign
push.l 6
conv.l.v
pushloc.v local._line_count
pushloc.v local._line_grid
call.i ds_grid_set(argc=4)
popz.v
pushi.e 0
conv.b.v
push.l 7
conv.l.v
pushloc.v local._line_count
pushloc.v local._line_grid
call.i ds_grid_set(argc=4)
popz.v
pushi.e 0
conv.b.v
push.l 8
conv.l.v
pushloc.v local._line_count
pushloc.v local._line_grid
call.i ds_grid_set(argc=4)
popz.v
pushloc.v local._forced_break
push.l 9
conv.l.v
pushloc.v local._line_count
pushloc.v local._line_grid
call.i ds_grid_set(argc=4)
popz.v
pushi.e 0
pop.v.b local._forced_break
pushi.e 1
conv.i.b
bf [130]

:[129]
push.l 1
conv.l.v
pushloc.v local._line_word_start
pushloc.v local._word_grid
call.i ds_grid_get(argc=3)
push.l 6
cmp.l.v LT
b [131]

:[130]
push.e 0

:[131]
bf [143]

:[132]
push.l 2
conv.l.v
pushloc.v local._line_word_start
pushloc.v local._word_grid
call.i ds_grid_get(argc=3)
pop.v.v local._word_glyph_start
push.l 3
conv.l.v
pushloc.v local._line_word_start
pushloc.v local._word_grid
call.i ds_grid_get(argc=3)
pop.v.v local._word_glyph_end
push.l 8
conv.l.v
pushloc.v local._word_glyph_start
pushloc.v local._glyph_grid
call.i ds_grid_get(argc=3)
pop.v.v local._left_correction
pushloc.v local._left_correction
pushi.e 0
cmp.i.v GT
bf [134]

:[133]
pushi.e 1
b [135]

:[134]
push.e 0

:[135]
bt [140]

:[136]
pushloc.v local._left_correction
pushi.e 0
cmp.i.v LT
bf [138]

:[137]
pushi.e 0
b [139]

:[138]
push.e 0

:[139]
b [141]

:[140]
push.e 1

:[141]
bf [143]

:[142]
push.l 4
conv.l.v
pushloc.v local._line_word_start
pushloc.v local._word_grid
call.i ds_grid_get(argc=3)
pushloc.v local._left_correction
add.v.v
push.l 4
conv.l.v
pushloc.v local._line_word_start
pushloc.v local._word_grid
call.i ds_grid_set(argc=4)
popz.v
push.v local._word_width
pushloc.v local._left_correction
add.v.v
pop.v.v local._word_width

:[143]
pushloc.v local._indent_x
pop.v.v local._word_x
pushi.e 0
pop.v.i local._new_word_start_x

:[144]
push.v local._word_x
pushloc.v local._glyph_width
add.v.v
pop.v.v local._word_x
push.v local._j
push.e 1
add.i.v
pop.v.v local._j
pushi.e 1
pushloc.v local._original_word_glyph_end
add.v.i
pushloc.v local._j
sub.v.v
conv.v.i
dup.i 0
push.i 0
cmp.i.i LTE
bt [176]

:[145]
push.l 7
conv.l.v
pushloc.v local._j
pushloc.v local._glyph_grid
call.i ds_grid_get(argc=3)
pop.v.v local._glyph_width
pushloc.v local._word_x
pushloc.v local._glyph_width
add.v.v
pushloc.v local._simulated_model_max_width
cmp.v.v GTE
bf [175]

:[146]
pushloc.v local._original_word_bidi_raw
push.l 0
conv.l.v
pushloc.v local._i
pushloc.v local._word_grid
call.i ds_grid_set(argc=4)
popz.v
pushloc.v local._original_word_bidi
push.l 1
conv.l.v
pushloc.v local._i
pushloc.v local._word_grid
call.i ds_grid_set(argc=4)
popz.v
pushloc.v local._new_word_glyph_start
push.l 2
conv.l.v
pushloc.v local._i
pushloc.v local._word_grid
call.i ds_grid_set(argc=4)
popz.v
pushloc.v local._j
pushi.e 1
sub.i.v
push.l 3
conv.l.v
pushloc.v local._i
pushloc.v local._word_grid
call.i ds_grid_set(argc=4)
popz.v
pushloc.v local._word_x
pushloc.v local._new_word_start_x
sub.v.v
push.l 4
conv.l.v
pushloc.v local._i
pushloc.v local._word_grid
call.i ds_grid_set(argc=4)
popz.v
pushloc.v local._original_word_height
push.l 5
conv.l.v
pushloc.v local._i
pushloc.v local._word_grid
call.i ds_grid_set(argc=4)
popz.v
pushloc.v local._word_x
pushloc.v local._new_word_start_x
sub.v.v
neg.v
push.l 2
conv.l.v
pushloc.v local._original_word_glyph_end
push.l 2
conv.l.v
pushloc.v local._j
pushloc.v local._glyph_grid
call.i ds_grid_add_region(argc=6)
popz.v
pushloc.v local._i
pop.v.v local._line_word_end
push.l 5
conv.l.v
pushloc.v local._line_word_end
push.l 5
conv.l.v
pushloc.v local._line_word_start
pushloc.v local._word_grid
call.i ds_grid_get_max(argc=5)
pop.v.v local._found_line_height
pushloc.v local._found_line_height
pushloc.v local._line_height_min
cmp.v.v LT
bf [151]

:[147]
pushloc.v local._found_line_height
pushi.e 2
conv.i.d
div.d.v
pushloc.v local._found_line_height
pushi.e 2
rem.i.v
cmp.v.v EQ
pushloc.v local._line_height_min
pushi.e 2
conv.i.d
div.d.v
pushloc.v local._line_height_min
pushi.e 2
rem.i.v
cmp.v.v EQ
cmp.b.b EQ
bf [149]

:[148]
pushloc.v local._line_height_min
pop.v.v local._line_height
b [150]

:[149]
pushloc.v local._line_height_min
pushi.e 1
add.i.v
pop.v.v local._line_height

:[150]
b [157]

:[151]
pushloc.v local._found_line_height
pushloc.v local._line_height_max
cmp.v.v GT
bf [156]

:[152]
pushloc.v local._found_line_height
pushi.e 2
conv.i.d
div.d.v
pushloc.v local._found_line_height
pushi.e 2
rem.i.v
cmp.v.v EQ
pushloc.v local._line_height_max
pushi.e 2
conv.i.d
div.d.v
pushloc.v local._line_height_max
pushi.e 2
rem.i.v
cmp.v.v EQ
cmp.b.b EQ
bf [154]

:[153]
pushloc.v local._line_height_max
pop.v.v local._line_height
b [155]

:[154]
pushloc.v local._line_height_max
pushi.e 1
sub.i.v
pop.v.v local._line_height

:[155]
b [157]

:[156]
pushloc.v local._found_line_height
pop.v.v local._line_height

:[157]
pushloc.v local._line_word_end
push.l 3
conv.l.v
pushloc.v local._line_count
pushloc.v local._line_grid
call.i ds_grid_set(argc=4)
popz.v
pushloc.v local._word_x
push.l 4
conv.l.v
pushloc.v local._line_count
pushloc.v local._line_grid
call.i ds_grid_set(argc=4)
popz.v
pushloc.v local._line_height
push.l 5
conv.l.v
pushloc.v local._line_count
pushloc.v local._line_grid
call.i ds_grid_set(argc=4)
popz.v
push.v local._line_count
push.e 1
add.i.v
pop.v.v local._line_count
pushloc.v local._line_y
pushloc.v local._line_height
add.v.v
pushloc.v local._line_max_y
cmp.v.v GT
bf [159]

:[158]
pushloc.v local._line_y
pushloc.v local._line_height
add.v.v
pop.v.v local._line_max_y

:[159]
push.v local._line_y
pushloc.v local._line_spacing_add
pushloc.v local._line_height
pushloc.v local._line_spacing_multiply
mul.v.v
add.v.v
add.v.v
pop.v.v local._line_y
pushloc.v local._i
pushi.e 1
add.i.v
pop.v.v local._line_word_start
pushloc.v local._indent_x
push.l 0
conv.l.v
pushloc.v local._line_count
pushloc.v local._line_grid
call.i ds_grid_set(argc=4)
popz.v
pushloc.v local._line_word_start
push.l 2
conv.l.v
pushloc.v local._line_count
pushloc.v local._line_grid
call.i ds_grid_set(argc=4)
popz.v
pushloc.v local._state_halign
push.l 6
conv.l.v
pushloc.v local._line_count
pushloc.v local._line_grid
call.i ds_grid_set(argc=4)
popz.v
pushi.e 0
conv.b.v
push.l 7
conv.l.v
pushloc.v local._line_count
pushloc.v local._line_grid
call.i ds_grid_set(argc=4)
popz.v
pushi.e 0
conv.b.v
push.l 8
conv.l.v
pushloc.v local._line_count
pushloc.v local._line_grid
call.i ds_grid_set(argc=4)
popz.v
pushloc.v local._forced_break
push.l 9
conv.l.v
pushloc.v local._line_count
pushloc.v local._line_grid
call.i ds_grid_set(argc=4)
popz.v
pushi.e 0
pop.v.b local._forced_break
pushi.e 1
conv.i.b
bf [161]

:[160]
push.l 1
conv.l.v
pushloc.v local._line_word_start
pushloc.v local._word_grid
call.i ds_grid_get(argc=3)
push.l 6
cmp.l.v LT
b [162]

:[161]
push.e 0

:[162]
bf [174]

:[163]
push.l 2
conv.l.v
pushloc.v local._line_word_start
pushloc.v local._word_grid
call.i ds_grid_get(argc=3)
pop.v.v local._word_glyph_start
push.l 3
conv.l.v
pushloc.v local._line_word_start
pushloc.v local._word_grid
call.i ds_grid_get(argc=3)
pop.v.v local._word_glyph_end
push.l 8
conv.l.v
pushloc.v local._word_glyph_start
pushloc.v local._glyph_grid
call.i ds_grid_get(argc=3)
pop.v.v local._left_correction
pushloc.v local._left_correction
pushi.e 0
cmp.i.v GT
bf [165]

:[164]
pushi.e 1
b [166]

:[165]
push.e 0

:[166]
bt [171]

:[167]
pushloc.v local._left_correction
pushi.e 0
cmp.i.v LT
bf [169]

:[168]
pushi.e 0
b [170]

:[169]
push.e 0

:[170]
b [172]

:[171]
push.e 1

:[172]
bf [174]

:[173]
push.l 4
conv.l.v
pushloc.v local._line_word_start
pushloc.v local._word_grid
call.i ds_grid_get(argc=3)
pushloc.v local._left_correction
add.v.v
push.l 4
conv.l.v
pushloc.v local._line_word_start
pushloc.v local._word_grid
call.i ds_grid_set(argc=4)
popz.v
push.v local._word_width
pushloc.v local._left_correction
add.v.v
pop.v.v local._word_width

:[174]
pushloc.v local._indent_x
pop.v.v local._word_x
pushi.e 0
pop.v.i local._new_word_start_x
pushloc.v local._j
pop.v.v local._new_word_glyph_start
push.v local._i
push.e 1
add.i.v
pop.v.v local._i
push.v local._word_count
push.e 1
add.i.v
pop.v.v local._word_count

:[175]
push.v local._word_x
pushloc.v local._glyph_width
add.v.v
pop.v.v local._word_x
push.v local._j
push.e 1
add.i.v
pop.v.v local._j
pushi.e 1
sub.i.i
dup.i 0
bt [145]

:[176]
popz.i
pushloc.v local._original_word_bidi_raw
push.l 0
conv.l.v
pushloc.v local._i
pushloc.v local._word_grid
call.i ds_grid_set(argc=4)
popz.v
pushloc.v local._original_word_bidi
push.l 1
conv.l.v
pushloc.v local._i
pushloc.v local._word_grid
call.i ds_grid_set(argc=4)
popz.v
pushloc.v local._new_word_glyph_start
push.l 2
conv.l.v
pushloc.v local._i
pushloc.v local._word_grid
call.i ds_grid_set(argc=4)
popz.v
pushloc.v local._j
pushi.e 1
sub.i.v
push.l 3
conv.l.v
pushloc.v local._i
pushloc.v local._word_grid
call.i ds_grid_set(argc=4)
popz.v
pushloc.v local._word_x
pushloc.v local._new_word_start_x
sub.v.v
push.l 4
conv.l.v
pushloc.v local._i
pushloc.v local._word_grid
call.i ds_grid_set(argc=4)
popz.v
pushloc.v local._original_word_height
push.l 5
conv.l.v
pushloc.v local._i
pushloc.v local._word_grid
call.i ds_grid_set(argc=4)
popz.v
pushi.e 0
conv.i.v
pushloc.v local._i
pushi.e 1
add.i.v
pushi.e 5
conv.i.v
pushloc.v local._stashed_word_count
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushloc.v local._temp_grid
pushloc.v local._word_grid
call.i ds_grid_set_grid_region(argc=8)
popz.v
pushi.e 0
pop.v.i local._word_width

:[177]
b [240]

:[178]
pushi.e 1
bf [180]

:[179]
push.l 0
conv.l.v
pushloc.v local._i
pushloc.v local._word_grid
call.i ds_grid_get(argc=3)
push.l 0
cmp.l.v EQ
b [181]

:[180]
push.e 0

:[181]
bf [211]

:[182]
push.v local._word_x
pushloc.v local._word_width
add.v.v
pop.v.v local._word_x
pushloc.v local._i
pop.v.v local._line_word_end
push.l 5
conv.l.v
pushloc.v local._line_word_end
push.l 5
conv.l.v
pushloc.v local._line_word_start
pushloc.v local._word_grid
call.i ds_grid_get_max(argc=5)
pop.v.v local._found_line_height
pushloc.v local._found_line_height
pushloc.v local._line_height_min
cmp.v.v LT
bf [187]

:[183]
pushloc.v local._found_line_height
pushi.e 2
conv.i.d
div.d.v
pushloc.v local._found_line_height
pushi.e 2
rem.i.v
cmp.v.v EQ
pushloc.v local._line_height_min
pushi.e 2
conv.i.d
div.d.v
pushloc.v local._line_height_min
pushi.e 2
rem.i.v
cmp.v.v EQ
cmp.b.b EQ
bf [185]

:[184]
pushloc.v local._line_height_min
pop.v.v local._line_height
b [186]

:[185]
pushloc.v local._line_height_min
pushi.e 1
add.i.v
pop.v.v local._line_height

:[186]
b [193]

:[187]
pushloc.v local._found_line_height
pushloc.v local._line_height_max
cmp.v.v GT
bf [192]

:[188]
pushloc.v local._found_line_height
pushi.e 2
conv.i.d
div.d.v
pushloc.v local._found_line_height
pushi.e 2
rem.i.v
cmp.v.v EQ
pushloc.v local._line_height_max
pushi.e 2
conv.i.d
div.d.v
pushloc.v local._line_height_max
pushi.e 2
rem.i.v
cmp.v.v EQ
cmp.b.b EQ
bf [190]

:[189]
pushloc.v local._line_height_max
pop.v.v local._line_height
b [191]

:[190]
pushloc.v local._line_height_max
pushi.e 1
sub.i.v
pop.v.v local._line_height

:[191]
b [193]

:[192]
pushloc.v local._found_line_height
pop.v.v local._line_height

:[193]
pushloc.v local._line_word_end
push.l 3
conv.l.v
pushloc.v local._line_count
pushloc.v local._line_grid
call.i ds_grid_set(argc=4)
popz.v
pushloc.v local._word_x
push.l 4
conv.l.v
pushloc.v local._line_count
pushloc.v local._line_grid
call.i ds_grid_set(argc=4)
popz.v
pushloc.v local._line_height
push.l 5
conv.l.v
pushloc.v local._line_count
pushloc.v local._line_grid
call.i ds_grid_set(argc=4)
popz.v
push.v local._line_count
push.e 1
add.i.v
pop.v.v local._line_count
pushloc.v local._line_y
pushloc.v local._line_height
add.v.v
pushloc.v local._line_max_y
cmp.v.v GT
bf [195]

:[194]
pushloc.v local._line_y
pushloc.v local._line_height
add.v.v
pop.v.v local._line_max_y

:[195]
push.v local._line_y
pushloc.v local._line_spacing_add
pushloc.v local._line_height
pushloc.v local._line_spacing_multiply
mul.v.v
add.v.v
add.v.v
pop.v.v local._line_y
pushloc.v local._i
pushi.e 1
add.i.v
pop.v.v local._line_word_start
pushloc.v local._indent_x
push.l 0
conv.l.v
pushloc.v local._line_count
pushloc.v local._line_grid
call.i ds_grid_set(argc=4)
popz.v
pushloc.v local._line_word_start
push.l 2
conv.l.v
pushloc.v local._line_count
pushloc.v local._line_grid
call.i ds_grid_set(argc=4)
popz.v
pushloc.v local._state_halign
push.l 6
conv.l.v
pushloc.v local._line_count
pushloc.v local._line_grid
call.i ds_grid_set(argc=4)
popz.v
pushi.e 0
conv.b.v
push.l 7
conv.l.v
pushloc.v local._line_count
pushloc.v local._line_grid
call.i ds_grid_set(argc=4)
popz.v
pushi.e 0
conv.b.v
push.l 8
conv.l.v
pushloc.v local._line_count
pushloc.v local._line_grid
call.i ds_grid_set(argc=4)
popz.v
pushloc.v local._forced_break
push.l 9
conv.l.v
pushloc.v local._line_count
pushloc.v local._line_grid
call.i ds_grid_set(argc=4)
popz.v
pushi.e 0
pop.v.b local._forced_break
pushi.e 1
conv.i.b
bf [197]

:[196]
push.l 1
conv.l.v
pushloc.v local._line_word_start
pushloc.v local._word_grid
call.i ds_grid_get(argc=3)
push.l 6
cmp.l.v LT
b [198]

:[197]
push.e 0

:[198]
bf [210]

:[199]
push.l 2
conv.l.v
pushloc.v local._line_word_start
pushloc.v local._word_grid
call.i ds_grid_get(argc=3)
pop.v.v local._word_glyph_start
push.l 3
conv.l.v
pushloc.v local._line_word_start
pushloc.v local._word_grid
call.i ds_grid_get(argc=3)
pop.v.v local._word_glyph_end
push.l 8
conv.l.v
pushloc.v local._word_glyph_start
pushloc.v local._glyph_grid
call.i ds_grid_get(argc=3)
pop.v.v local._left_correction
pushloc.v local._left_correction
pushi.e 0
cmp.i.v GT
bf [201]

:[200]
pushi.e 1
b [202]

:[201]
push.e 0

:[202]
bt [207]

:[203]
pushloc.v local._left_correction
pushi.e 0
cmp.i.v LT
bf [205]

:[204]
pushi.e 0
b [206]

:[205]
push.e 0

:[206]
b [208]

:[207]
push.e 1

:[208]
bf [210]

:[209]
push.l 4
conv.l.v
pushloc.v local._line_word_start
pushloc.v local._word_grid
call.i ds_grid_get(argc=3)
pushloc.v local._left_correction
add.v.v
push.l 4
conv.l.v
pushloc.v local._line_word_start
pushloc.v local._word_grid
call.i ds_grid_set(argc=4)
popz.v
push.v local._word_width
pushloc.v local._left_correction
add.v.v
pop.v.v local._word_width

:[210]
pushloc.v local._indent_x
pop.v.v local._word_x
pushi.e 0
pop.v.i local._word_width
b [240]

:[211]
pushloc.v local._i
pushi.e 1
sub.i.v
pop.v.v local._line_word_end
push.l 5
conv.l.v
pushloc.v local._line_word_end
push.l 5
conv.l.v
pushloc.v local._line_word_start
pushloc.v local._word_grid
call.i ds_grid_get_max(argc=5)
pop.v.v local._found_line_height
pushloc.v local._found_line_height
pushloc.v local._line_height_min
cmp.v.v LT
bf [216]

:[212]
pushloc.v local._found_line_height
pushi.e 2
conv.i.d
div.d.v
pushloc.v local._found_line_height
pushi.e 2
rem.i.v
cmp.v.v EQ
pushloc.v local._line_height_min
pushi.e 2
conv.i.d
div.d.v
pushloc.v local._line_height_min
pushi.e 2
rem.i.v
cmp.v.v EQ
cmp.b.b EQ
bf [214]

:[213]
pushloc.v local._line_height_min
pop.v.v local._line_height
b [215]

:[214]
pushloc.v local._line_height_min
pushi.e 1
add.i.v
pop.v.v local._line_height

:[215]
b [222]

:[216]
pushloc.v local._found_line_height
pushloc.v local._line_height_max
cmp.v.v GT
bf [221]

:[217]
pushloc.v local._found_line_height
pushi.e 2
conv.i.d
div.d.v
pushloc.v local._found_line_height
pushi.e 2
rem.i.v
cmp.v.v EQ
pushloc.v local._line_height_max
pushi.e 2
conv.i.d
div.d.v
pushloc.v local._line_height_max
pushi.e 2
rem.i.v
cmp.v.v EQ
cmp.b.b EQ
bf [219]

:[218]
pushloc.v local._line_height_max
pop.v.v local._line_height
b [220]

:[219]
pushloc.v local._line_height_max
pushi.e 1
sub.i.v
pop.v.v local._line_height

:[220]
b [222]

:[221]
pushloc.v local._found_line_height
pop.v.v local._line_height

:[222]
pushloc.v local._line_word_end
push.l 3
conv.l.v
pushloc.v local._line_count
pushloc.v local._line_grid
call.i ds_grid_set(argc=4)
popz.v
pushloc.v local._word_x
push.l 4
conv.l.v
pushloc.v local._line_count
pushloc.v local._line_grid
call.i ds_grid_set(argc=4)
popz.v
pushloc.v local._line_height
push.l 5
conv.l.v
pushloc.v local._line_count
pushloc.v local._line_grid
call.i ds_grid_set(argc=4)
popz.v
push.v local._line_count
push.e 1
add.i.v
pop.v.v local._line_count
pushloc.v local._line_y
pushloc.v local._line_height
add.v.v
pushloc.v local._line_max_y
cmp.v.v GT
bf [224]

:[223]
pushloc.v local._line_y
pushloc.v local._line_height
add.v.v
pop.v.v local._line_max_y

:[224]
push.v local._line_y
pushloc.v local._line_spacing_add
pushloc.v local._line_height
pushloc.v local._line_spacing_multiply
mul.v.v
add.v.v
add.v.v
pop.v.v local._line_y
pushloc.v local._i
pop.v.v local._line_word_start
pushloc.v local._indent_x
push.l 0
conv.l.v
pushloc.v local._line_count
pushloc.v local._line_grid
call.i ds_grid_set(argc=4)
popz.v
pushloc.v local._line_word_start
push.l 2
conv.l.v
pushloc.v local._line_count
pushloc.v local._line_grid
call.i ds_grid_set(argc=4)
popz.v
pushloc.v local._state_halign
push.l 6
conv.l.v
pushloc.v local._line_count
pushloc.v local._line_grid
call.i ds_grid_set(argc=4)
popz.v
pushi.e 0
conv.b.v
push.l 7
conv.l.v
pushloc.v local._line_count
pushloc.v local._line_grid
call.i ds_grid_set(argc=4)
popz.v
pushi.e 0
conv.b.v
push.l 8
conv.l.v
pushloc.v local._line_count
pushloc.v local._line_grid
call.i ds_grid_set(argc=4)
popz.v
pushloc.v local._forced_break
push.l 9
conv.l.v
pushloc.v local._line_count
pushloc.v local._line_grid
call.i ds_grid_set(argc=4)
popz.v
pushi.e 0
pop.v.b local._forced_break
pushi.e 1
conv.i.b
bf [226]

:[225]
push.l 1
conv.l.v
pushloc.v local._line_word_start
pushloc.v local._word_grid
call.i ds_grid_get(argc=3)
push.l 6
cmp.l.v LT
b [227]

:[226]
push.e 0

:[227]
bf [239]

:[228]
push.l 2
conv.l.v
pushloc.v local._line_word_start
pushloc.v local._word_grid
call.i ds_grid_get(argc=3)
pop.v.v local._word_glyph_start
push.l 3
conv.l.v
pushloc.v local._line_word_start
pushloc.v local._word_grid
call.i ds_grid_get(argc=3)
pop.v.v local._word_glyph_end
push.l 8
conv.l.v
pushloc.v local._word_glyph_start
pushloc.v local._glyph_grid
call.i ds_grid_get(argc=3)
pop.v.v local._left_correction
pushloc.v local._left_correction
pushi.e 0
cmp.i.v GT
bf [230]

:[229]
pushi.e 1
b [231]

:[230]
push.e 0

:[231]
bt [236]

:[232]
pushloc.v local._left_correction
pushi.e 0
cmp.i.v LT
bf [234]

:[233]
pushi.e 0
b [235]

:[234]
push.e 0

:[235]
b [237]

:[236]
push.e 1

:[237]
bf [239]

:[238]
push.l 4
conv.l.v
pushloc.v local._line_word_start
pushloc.v local._word_grid
call.i ds_grid_get(argc=3)
pushloc.v local._left_correction
add.v.v
push.l 4
conv.l.v
pushloc.v local._line_word_start
pushloc.v local._word_grid
call.i ds_grid_set(argc=4)
popz.v
push.v local._word_width
pushloc.v local._left_correction
add.v.v
pop.v.v local._word_width

:[239]
pushloc.v local._indent_x
pop.v.v local._word_x

:[240]
b [302]

:[241]
push.l 0
conv.l.v
pushloc.v local._word_start_glyph
pushloc.v local._glyph_grid
call.i ds_grid_get(argc=3)
pop.v.v local._glyph_start_ord
pushloc.v local._glyph_start_ord
pushi.e 10
cmp.i.v EQ
bf [271]

:[242]
pushloc.v local._i
pop.v.v local._line_word_end
push.l 5
conv.l.v
pushloc.v local._line_word_end
push.l 5
conv.l.v
pushloc.v local._line_word_start
pushloc.v local._word_grid
call.i ds_grid_get_max(argc=5)
pop.v.v local._found_line_height
pushloc.v local._found_line_height
pushloc.v local._line_height_min
cmp.v.v LT
bf [247]

:[243]
pushloc.v local._found_line_height
pushi.e 2
conv.i.d
div.d.v
pushloc.v local._found_line_height
pushi.e 2
rem.i.v
cmp.v.v EQ
pushloc.v local._line_height_min
pushi.e 2
conv.i.d
div.d.v
pushloc.v local._line_height_min
pushi.e 2
rem.i.v
cmp.v.v EQ
cmp.b.b EQ
bf [245]

:[244]
pushloc.v local._line_height_min
pop.v.v local._line_height
b [246]

:[245]
pushloc.v local._line_height_min
pushi.e 1
add.i.v
pop.v.v local._line_height

:[246]
b [253]

:[247]
pushloc.v local._found_line_height
pushloc.v local._line_height_max
cmp.v.v GT
bf [252]

:[248]
pushloc.v local._found_line_height
pushi.e 2
conv.i.d
div.d.v
pushloc.v local._found_line_height
pushi.e 2
rem.i.v
cmp.v.v EQ
pushloc.v local._line_height_max
pushi.e 2
conv.i.d
div.d.v
pushloc.v local._line_height_max
pushi.e 2
rem.i.v
cmp.v.v EQ
cmp.b.b EQ
bf [250]

:[249]
pushloc.v local._line_height_max
pop.v.v local._line_height
b [251]

:[250]
pushloc.v local._line_height_max
pushi.e 1
sub.i.v
pop.v.v local._line_height

:[251]
b [253]

:[252]
pushloc.v local._found_line_height
pop.v.v local._line_height

:[253]
pushloc.v local._line_word_end
push.l 3
conv.l.v
pushloc.v local._line_count
pushloc.v local._line_grid
call.i ds_grid_set(argc=4)
popz.v
pushloc.v local._word_x
push.l 4
conv.l.v
pushloc.v local._line_count
pushloc.v local._line_grid
call.i ds_grid_set(argc=4)
popz.v
pushloc.v local._line_height
push.l 5
conv.l.v
pushloc.v local._line_count
pushloc.v local._line_grid
call.i ds_grid_set(argc=4)
popz.v
push.v local._line_count
push.e 1
add.i.v
pop.v.v local._line_count
pushloc.v local._line_y
pushloc.v local._line_height
add.v.v
pushloc.v local._line_max_y
cmp.v.v GT
bf [255]

:[254]
pushloc.v local._line_y
pushloc.v local._line_height
add.v.v
pop.v.v local._line_max_y

:[255]
push.v local._line_y
pushloc.v local._line_spacing_add
pushloc.v local._line_height
pushloc.v local._line_spacing_multiply
mul.v.v
add.v.v
add.v.v
pop.v.v local._line_y
pushloc.v local._i
pushi.e 1
add.i.v
pop.v.v local._line_word_start
pushi.e 1
pop.v.b local._forced_break
pushloc.v local._indent_x
push.l 0
conv.l.v
pushloc.v local._line_count
pushloc.v local._line_grid
call.i ds_grid_set(argc=4)
popz.v
pushloc.v local._line_word_start
push.l 2
conv.l.v
pushloc.v local._line_count
pushloc.v local._line_grid
call.i ds_grid_set(argc=4)
popz.v
pushloc.v local._state_halign
push.l 6
conv.l.v
pushloc.v local._line_count
pushloc.v local._line_grid
call.i ds_grid_set(argc=4)
popz.v
pushi.e 0
conv.b.v
push.l 7
conv.l.v
pushloc.v local._line_count
pushloc.v local._line_grid
call.i ds_grid_set(argc=4)
popz.v
pushi.e 0
conv.b.v
push.l 8
conv.l.v
pushloc.v local._line_count
pushloc.v local._line_grid
call.i ds_grid_set(argc=4)
popz.v
pushloc.v local._forced_break
push.l 9
conv.l.v
pushloc.v local._line_count
pushloc.v local._line_grid
call.i ds_grid_set(argc=4)
popz.v
pushi.e 0
pop.v.b local._forced_break
pushi.e 1
conv.i.b
bf [257]

:[256]
push.l 1
conv.l.v
pushloc.v local._line_word_start
pushloc.v local._word_grid
call.i ds_grid_get(argc=3)
push.l 6
cmp.l.v LT
b [258]

:[257]
push.e 0

:[258]
bf [270]

:[259]
push.l 2
conv.l.v
pushloc.v local._line_word_start
pushloc.v local._word_grid
call.i ds_grid_get(argc=3)
pop.v.v local._word_glyph_start
push.l 3
conv.l.v
pushloc.v local._line_word_start
pushloc.v local._word_grid
call.i ds_grid_get(argc=3)
pop.v.v local._word_glyph_end
push.l 8
conv.l.v
pushloc.v local._word_glyph_start
pushloc.v local._glyph_grid
call.i ds_grid_get(argc=3)
pop.v.v local._left_correction
pushloc.v local._left_correction
pushi.e 0
cmp.i.v GT
bf [261]

:[260]
pushi.e 1
b [262]

:[261]
push.e 0

:[262]
bt [267]

:[263]
pushloc.v local._left_correction
pushi.e 0
cmp.i.v LT
bf [265]

:[264]
pushi.e 0
b [266]

:[265]
push.e 0

:[266]
b [268]

:[267]
push.e 1

:[268]
bf [270]

:[269]
push.l 4
conv.l.v
pushloc.v local._line_word_start
pushloc.v local._word_grid
call.i ds_grid_get(argc=3)
pushloc.v local._left_correction
add.v.v
push.l 4
conv.l.v
pushloc.v local._line_word_start
pushloc.v local._word_grid
call.i ds_grid_set(argc=4)
popz.v
push.v local._word_width
pushloc.v local._left_correction
add.v.v
pop.v.v local._word_width

:[270]
pushloc.v local._indent_x
pop.v.v local._word_x
pushi.e 1
conv.b.v
push.l 7
conv.l.v
pushloc.v local._line_count
pushi.e 1
sub.i.v
pushloc.v local._line_grid
call.i ds_grid_set(argc=4)
popz.v
b [302]

:[271]
pushloc.v local._glyph_start_ord
pushi.e 0
cmp.i.v EQ
bf [302]

:[272]
pushloc.v local._i
pop.v.v local._line_word_end
push.l 5
conv.l.v
pushloc.v local._line_word_end
push.l 5
conv.l.v
pushloc.v local._line_word_start
pushloc.v local._word_grid
call.i ds_grid_get_max(argc=5)
pop.v.v local._found_line_height
pushloc.v local._found_line_height
pushloc.v local._line_height_min
cmp.v.v LT
bf [277]

:[273]
pushloc.v local._found_line_height
pushi.e 2
conv.i.d
div.d.v
pushloc.v local._found_line_height
pushi.e 2
rem.i.v
cmp.v.v EQ
pushloc.v local._line_height_min
pushi.e 2
conv.i.d
div.d.v
pushloc.v local._line_height_min
pushi.e 2
rem.i.v
cmp.v.v EQ
cmp.b.b EQ
bf [275]

:[274]
pushloc.v local._line_height_min
pop.v.v local._line_height
b [276]

:[275]
pushloc.v local._line_height_min
pushi.e 1
add.i.v
pop.v.v local._line_height

:[276]
b [283]

:[277]
pushloc.v local._found_line_height
pushloc.v local._line_height_max
cmp.v.v GT
bf [282]

:[278]
pushloc.v local._found_line_height
pushi.e 2
conv.i.d
div.d.v
pushloc.v local._found_line_height
pushi.e 2
rem.i.v
cmp.v.v EQ
pushloc.v local._line_height_max
pushi.e 2
conv.i.d
div.d.v
pushloc.v local._line_height_max
pushi.e 2
rem.i.v
cmp.v.v EQ
cmp.b.b EQ
bf [280]

:[279]
pushloc.v local._line_height_max
pop.v.v local._line_height
b [281]

:[280]
pushloc.v local._line_height_max
pushi.e 1
sub.i.v
pop.v.v local._line_height

:[281]
b [283]

:[282]
pushloc.v local._found_line_height
pop.v.v local._line_height

:[283]
pushloc.v local._line_word_end
push.l 3
conv.l.v
pushloc.v local._line_count
pushloc.v local._line_grid
call.i ds_grid_set(argc=4)
popz.v
pushloc.v local._word_x
push.l 4
conv.l.v
pushloc.v local._line_count
pushloc.v local._line_grid
call.i ds_grid_set(argc=4)
popz.v
pushloc.v local._line_height
push.l 5
conv.l.v
pushloc.v local._line_count
pushloc.v local._line_grid
call.i ds_grid_set(argc=4)
popz.v
push.v local._line_count
push.e 1
add.i.v
pop.v.v local._line_count
pushloc.v local._line_y
pushloc.v local._line_height
add.v.v
pushloc.v local._line_max_y
cmp.v.v GT
bf [285]

:[284]
pushloc.v local._line_y
pushloc.v local._line_height
add.v.v
pop.v.v local._line_max_y

:[285]
push.v local._line_y
pushloc.v local._line_spacing_add
pushloc.v local._line_height
pushloc.v local._line_spacing_multiply
mul.v.v
add.v.v
add.v.v
pop.v.v local._line_y
pushi.e 0
pop.v.i local._line_y
pushloc.v local._i
pushi.e 1
add.i.v
pop.v.v local._line_word_start
pushi.e 1
pop.v.b local._forced_break
pushloc.v local._indent_x
push.l 0
conv.l.v
pushloc.v local._line_count
pushloc.v local._line_grid
call.i ds_grid_set(argc=4)
popz.v
pushloc.v local._line_word_start
push.l 2
conv.l.v
pushloc.v local._line_count
pushloc.v local._line_grid
call.i ds_grid_set(argc=4)
popz.v
pushloc.v local._state_halign
push.l 6
conv.l.v
pushloc.v local._line_count
pushloc.v local._line_grid
call.i ds_grid_set(argc=4)
popz.v
pushi.e 0
conv.b.v
push.l 7
conv.l.v
pushloc.v local._line_count
pushloc.v local._line_grid
call.i ds_grid_set(argc=4)
popz.v
pushi.e 0
conv.b.v
push.l 8
conv.l.v
pushloc.v local._line_count
pushloc.v local._line_grid
call.i ds_grid_set(argc=4)
popz.v
pushloc.v local._forced_break
push.l 9
conv.l.v
pushloc.v local._line_count
pushloc.v local._line_grid
call.i ds_grid_set(argc=4)
popz.v
pushi.e 0
pop.v.b local._forced_break
pushi.e 1
conv.i.b
bf [287]

:[286]
push.l 1
conv.l.v
pushloc.v local._line_word_start
pushloc.v local._word_grid
call.i ds_grid_get(argc=3)
push.l 6
cmp.l.v LT
b [288]

:[287]
push.e 0

:[288]
bf [300]

:[289]
push.l 2
conv.l.v
pushloc.v local._line_word_start
pushloc.v local._word_grid
call.i ds_grid_get(argc=3)
pop.v.v local._word_glyph_start
push.l 3
conv.l.v
pushloc.v local._line_word_start
pushloc.v local._word_grid
call.i ds_grid_get(argc=3)
pop.v.v local._word_glyph_end
push.l 8
conv.l.v
pushloc.v local._word_glyph_start
pushloc.v local._glyph_grid
call.i ds_grid_get(argc=3)
pop.v.v local._left_correction
pushloc.v local._left_correction
pushi.e 0
cmp.i.v GT
bf [291]

:[290]
pushi.e 1
b [292]

:[291]
push.e 0

:[292]
bt [297]

:[293]
pushloc.v local._left_correction
pushi.e 0
cmp.i.v LT
bf [295]

:[294]
pushi.e 0
b [296]

:[295]
push.e 0

:[296]
b [298]

:[297]
push.e 1

:[298]
bf [300]

:[299]
push.l 4
conv.l.v
pushloc.v local._line_word_start
pushloc.v local._word_grid
call.i ds_grid_get(argc=3)
pushloc.v local._left_correction
add.v.v
push.l 4
conv.l.v
pushloc.v local._line_word_start
pushloc.v local._word_grid
call.i ds_grid_set(argc=4)
popz.v
push.v local._word_width
pushloc.v local._left_correction
add.v.v
pop.v.v local._word_width

:[300]
pushloc.v local._indent_x
pop.v.v local._word_x
pushi.e 1
conv.b.v
push.l 7
conv.l.v
pushloc.v local._line_count
pushi.e 1
sub.i.v
pushloc.v local._line_grid
call.i ds_grid_set(argc=4)
popz.v
pushloc.v local._i
pushloc.v local._word_count
pushi.e 1
sub.i.v
cmp.v.v LT
bf [302]

:[301]
pushi.e 1
conv.b.v
push.l 8
conv.l.v
pushloc.v local._line_count
pushloc.v local._line_grid
call.i ds_grid_set(argc=4)
popz.v

:[302]
push.v local._word_x
pushloc.v local._word_width
add.v.v
pop.v.v local._word_x
push.v local._i
push.e 1
add.i.v
pop.v.v local._i
pushi.e 1
sub.i.i
dup.i 0
bt [33]

:[303]
popz.i
pushloc.v local._i
pushi.e 1
sub.i.v
pop.v.v local._line_word_end
pushloc.v local._line_word_end
pushloc.v local._line_word_start
cmp.v.v GTE
bf [318]

:[304]
push.l 5
conv.l.v
pushloc.v local._line_word_end
push.l 5
conv.l.v
pushloc.v local._line_word_start
pushloc.v local._word_grid
call.i ds_grid_get_max(argc=5)
pop.v.v local._found_line_height
pushloc.v local._found_line_height
pushloc.v local._line_height_min
cmp.v.v LT
bf [309]

:[305]
pushloc.v local._found_line_height
pushi.e 2
conv.i.d
div.d.v
pushloc.v local._found_line_height
pushi.e 2
rem.i.v
cmp.v.v EQ
pushloc.v local._line_height_min
pushi.e 2
conv.i.d
div.d.v
pushloc.v local._line_height_min
pushi.e 2
rem.i.v
cmp.v.v EQ
cmp.b.b EQ
bf [307]

:[306]
pushloc.v local._line_height_min
pop.v.v local._line_height
b [308]

:[307]
pushloc.v local._line_height_min
pushi.e 1
add.i.v
pop.v.v local._line_height

:[308]
b [315]

:[309]
pushloc.v local._found_line_height
pushloc.v local._line_height_max
cmp.v.v GT
bf [314]

:[310]
pushloc.v local._found_line_height
pushi.e 2
conv.i.d
div.d.v
pushloc.v local._found_line_height
pushi.e 2
rem.i.v
cmp.v.v EQ
pushloc.v local._line_height_max
pushi.e 2
conv.i.d
div.d.v
pushloc.v local._line_height_max
pushi.e 2
rem.i.v
cmp.v.v EQ
cmp.b.b EQ
bf [312]

:[311]
pushloc.v local._line_height_max
pop.v.v local._line_height
b [313]

:[312]
pushloc.v local._line_height_max
pushi.e 1
sub.i.v
pop.v.v local._line_height

:[313]
b [315]

:[314]
pushloc.v local._found_line_height
pop.v.v local._line_height

:[315]
pushloc.v local._line_word_end
push.l 3
conv.l.v
pushloc.v local._line_count
pushloc.v local._line_grid
call.i ds_grid_set(argc=4)
popz.v
pushloc.v local._word_x
push.l 4
conv.l.v
pushloc.v local._line_count
pushloc.v local._line_grid
call.i ds_grid_set(argc=4)
popz.v
pushloc.v local._line_height
push.l 5
conv.l.v
pushloc.v local._line_count
pushloc.v local._line_grid
call.i ds_grid_set(argc=4)
popz.v
push.v local._line_count
push.e 1
add.i.v
pop.v.v local._line_count
pushloc.v local._line_y
pushloc.v local._line_height
add.v.v
pushloc.v local._line_max_y
cmp.v.v GT
bf [317]

:[316]
pushloc.v local._line_y
pushloc.v local._line_height
add.v.v
pop.v.v local._line_max_y

:[317]
push.v local._line_y
pushloc.v local._line_spacing_add
pushloc.v local._line_height
pushloc.v local._line_spacing_multiply
mul.v.v
add.v.v
add.v.v
pop.v.v local._line_y
push.v local._line_y
pushloc.v local._line_height
add.v.v
pop.v.v local._line_y

:[318]
pushloc.v local._wrap_no_pages
conv.v.b
not.b
bt [320]

:[319]
pushi.e 0
b [321]

:[320]
push.e 1

:[321]
bf [323]

:[322]
b [344]

:[323]
push.v local._fit_to_box_iterations
push.e 1
add.i.v
pop.v.v local._fit_to_box_iterations
pushloc.v local._line_max_y
pushloc.v local._simulated_model_max_height
cmp.v.v LT
bf [325]

:[324]
pushloc.v local._word_broken
conv.v.b
not.b
b [326]

:[325]
push.e 0

:[326]
bf [330]

:[327]
push.v builtin.__fit_scale
pushloc.v local._wrap_max_scale
cmp.v.v GTE
bf [329]

:[328]
b [344]

:[329]
push.v builtin.__fit_scale
pop.v.v local._lower_limit
b [331]

:[330]
push.v builtin.__fit_scale
pop.v.v local._upper_limit

:[331]
pushloc.v local._fit_to_box_iterations
pushi.e 6
cmp.i.v GTE
bf [338]

:[332]
push.v builtin.__fit_scale
pushloc.v local._lower_limit
cmp.v.v EQ
bf [334]

:[333]
b [344]

:[334]
pushloc.v local._lower_limit
pushbltn.v builtin.undefined
cmp.v.v EQ
bf [336]

:[335]
pushloc.v local._upper_limit
b [337]

:[336]
pushloc.v local._lower_limit

:[337]
pop.v.v builtin.__fit_scale
b [343]

:[338]
pushloc.v local._lower_limit
pushbltn.v builtin.undefined
cmp.v.v EQ
bf [340]

:[339]
push.v builtin.__fit_scale
push.d 0.5
mul.d.v
pop.v.v builtin.__fit_scale
b [343]

:[340]
pushloc.v local._upper_limit
pushbltn.v builtin.undefined
cmp.v.v EQ
bf [342]

:[341]
pushi.e 2
push.v builtin.__fit_scale
mul.v.i
pushloc.v local._wrap_max_scale
call.i min(argc=2)
pop.v.v builtin.__fit_scale
b [343]

:[342]
pushloc.v local._lower_limit
push.d 0.5
pushloc.v local._upper_limit
pushloc.v local._lower_limit
sub.v.v
mul.v.d
add.v.v
pop.v.v builtin.__fit_scale

:[343]
pushi.e 1
sub.i.i
dup.i 0
bt [12]

:[344]
popz.i
pushi.e 1
conv.b.v
push.l 7
conv.l.v
pushloc.v local._line_count
pushi.e 1
sub.i.v
pushloc.v local._line_grid
call.i ds_grid_set(argc=4)
popz.v
pushi.e 0
pop.v.i local._line
pushloc.v local._line_count
conv.v.i
dup.i 0
push.i 0
cmp.i.i LTE
bt [358]

:[345]
push.l 2
conv.l.v
pushloc.v local._line
pushloc.v local._line_grid
call.i ds_grid_get(argc=3)
pop.v.v local._line_word_start
push.l 1
conv.l.v
pushloc.v local._line_word_start
pushloc.v local._word_grid
call.i ds_grid_get(argc=3)
push.l 6
cmp.l.v LT
bf [357]

:[346]
push.l 2
conv.l.v
pushloc.v local._line_word_start
pushloc.v local._word_grid
call.i ds_grid_get(argc=3)
pop.v.v local._word_glyph_start
push.l 3
conv.l.v
pushloc.v local._line_word_start
pushloc.v local._word_grid
call.i ds_grid_get(argc=3)
pop.v.v local._word_glyph_end
push.l 8
conv.l.v
pushloc.v local._word_glyph_start
pushloc.v local._glyph_grid
call.i ds_grid_get(argc=3)
pop.v.v local._left_correction
pushloc.v local._left_correction
pushi.e 0
cmp.i.v GT
bf [348]

:[347]
pushi.e 1
b [349]

:[348]
push.e 0

:[349]
bt [354]

:[350]
pushloc.v local._left_correction
pushi.e 0
cmp.i.v LT
bf [352]

:[351]
pushi.e 0
b [353]

:[352]
push.e 0

:[353]
b [355]

:[354]
push.e 1

:[355]
bf [357]

:[356]
pushloc.v local._left_correction
push.l 2
conv.l.v
pushloc.v local._word_glyph_end
push.l 2
conv.l.v
pushloc.v local._word_glyph_start
pushloc.v local._glyph_grid
call.i ds_grid_add_region(argc=6)
popz.v
push.l 4
conv.l.v
pushloc.v local._i
pushloc.v local._word_grid
call.i ds_grid_get(argc=3)
pushloc.v local._left_correction
add.v.v
push.l 4
conv.l.v
pushloc.v local._i
pushloc.v local._word_grid
call.i ds_grid_set(argc=4)
popz.v

:[357]
push.v local._line
push.e 1
add.i.v
pop.v.v local._line
pushi.e 1
sub.i.i
dup.i 0
bt [345]

:[358]
popz.i
pushi.e 1
bf [360]

:[359]
pushloc.v local._wrap_apply
conv.v.b
b [361]

:[360]
push.e 0

:[361]
bf [368]

:[362]
pushi.e 0
pop.v.i local._line
pushloc.v local._line_count
conv.v.i
dup.i 0
push.i 0
cmp.i.i LTE
bt [367]

:[363]
push.l 3
conv.l.v
pushloc.v local._line
pushloc.v local._line_grid
call.i ds_grid_get(argc=3)
pop.v.v local._line_end_word
push.l 0
conv.l.v
pushloc.v local._line_end_word
pushloc.v local._word_grid
call.i ds_grid_get(argc=3)
push.l 0
cmp.l.v EQ
bf [366]

:[364]
push.l 4
conv.l.v
pushloc.v local._line
pushloc.v local._line_grid
call.i ds_grid_get(argc=3)
pop.v.v local._line_width
pushloc.v local._line_width
pushloc.v local._simulated_model_max_width
cmp.v.v GT
bf [366]

:[365]
pushloc.v local._simulated_model_max_width
pushloc.v local._line_width
sub.v.v
pop.v.v local._delta
pushloc.v local._simulated_model_max_width
push.l 4
conv.l.v
pushloc.v local._line
pushloc.v local._line_grid
call.i ds_grid_set(argc=4)
popz.v
push.l 4
conv.l.v
pushloc.v local._line_end_word
pushloc.v local._word_grid
call.i ds_grid_get(argc=3)
pushloc.v local._delta
add.v.v
push.l 4
conv.l.v
pushloc.v local._line_end_word
pushloc.v local._word_grid
call.i ds_grid_set(argc=4)
popz.v
push.l 2
conv.l.v
pushloc.v local._line_end_word
pushloc.v local._word_grid
call.i ds_grid_get(argc=3)
pop.v.v local._word_start_glyph
push.l 4
conv.l.v
pushloc.v local._word_start_glyph
pushloc.v local._glyph_grid
call.i ds_grid_get(argc=3)
pushloc.v local._delta
add.v.v
push.l 4
conv.l.v
pushloc.v local._word_start_glyph
pushloc.v local._glyph_grid
call.i ds_grid_set(argc=4)
popz.v
push.l 7
conv.l.v
pushloc.v local._word_start_glyph
pushloc.v local._glyph_grid
call.i ds_grid_get(argc=3)
pushloc.v local._delta
add.v.v
push.l 7
conv.l.v
pushloc.v local._word_start_glyph
pushloc.v local._glyph_grid
call.i ds_grid_set(argc=4)
popz.v

:[366]
push.v local._line
push.e 1
add.i.v
pop.v.v local._line
pushi.e 1
sub.i.i
dup.i 0
bt [363]

:[367]
popz.i

:[368]
push.l 4
conv.l.v
pushloc.v local._line_count
pushi.e 1
sub.i.v
push.l 4
conv.l.v
pushi.e 0
conv.i.v
pushloc.v local._line_grid
call.i ds_grid_get_max(argc=5)
pop.v.v builtin.__width
push.v static._generator_state
pushi.e -9
pushenv [370]

:[369]
pushloc.v local._word_count
pop.v.v builtin.__word_count
pushloc.v local._line_count
pop.v.v builtin.__line_count

:[370]
popenv [369]
exit.i

:[371]
push.i [function]gml_Script___scribble_gen_6_build_lines
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pop.v.v self.__scribble_gen_6_build_lines
popz.v

:[end]