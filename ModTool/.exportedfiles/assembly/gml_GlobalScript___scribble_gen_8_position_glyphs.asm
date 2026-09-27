:[0]
b [79]

> gml_Script___scribble_gen_8_position_glyphs (locals=48, argc=0)
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
pushenv [5]

:[4]
push.v builtin.__glyph_grid
pop.v.v local._glyph_grid
push.v builtin.__word_grid
pop.v.v local._word_grid
push.v builtin.__stretch_grid
pop.v.v local._stretch_grid
push.v builtin.__line_grid
pop.v.v local._line_grid
push.v builtin.__temp_grid
pop.v.v local._temp_grid
push.v builtin.__overall_bidi
pop.v.v local._overall_bidi
push.v builtin.__model_max_width
pop.v.v local._model_max_width
push.v builtin.__glyph_count
pop.v.v local._glyph_count

:[5]
popenv [4]
pushi.e 0
conv.i.v
pushloc.v local._temp_grid
call.i ds_grid_clear(argc=2)
popz.v
pushi.e 1000
conv.i.v
push.l 16
conv.l.v
pushloc.v local._glyph_count
pushi.e 1
sub.i.v
push.l 16
conv.l.v
pushi.e 0
conv.i.v
pushloc.v local._glyph_grid
call.i ds_grid_multiply_region(argc=6)
popz.v
pushbltn.v builtin.infinity
pop.v.v local._model_min_x
pushbltn.v builtin.infinity
pop.v.v local._model_min_y
pushbltn.v builtin.infinity
neg.v
pop.v.v local._model_max_x
pushbltn.v builtin.infinity
neg.v
pop.v.v local._model_max_y
pushi.e 0
pop.v.i local._i
push.v builtin.__pages
conv.v.i
dup.i 0
push.i 0
cmp.i.i LTE
bt [76]

:[6]
pushi.e -6
pushloc.v local._i
conv.v.i
push.v [array]self.__pages_array
pop.v.v local._page_data
pushloc.v local._model_max_width
pushbltn.v builtin.infinity
cmp.v.v EQ
bf [8]

:[7]
push.v builtin.__width
b [9]

:[8]
pushloc.v local._model_max_width

:[9]
pop.v.v local._alignment_width
pushloc.v local._model_max_width
pushbltn.v builtin.infinity
cmp.v.v EQ
bf [11]

:[10]
push.v builtin.__width
b [12]

:[11]
pushloc.v local._model_max_width

:[12]
pop.v.v local._pin_alignment_width
push.v local._alignment_width
push.v builtin.__fit_scale
div.v.v
pop.v.v local._alignment_width
push.v local._pin_alignment_width
push.v builtin.__fit_scale
div.v.v
pop.v.v local._pin_alignment_width
pushbltn.v builtin.infinity
pop.v.v local._page_min_x
pushbltn.v builtin.infinity
neg.v
pop.v.v local._page_max_x
pushloc.v local._page_data
pushi.e -9
push.v [stacktop]self.__line_start
pop.v.v local._page_start_line
pushloc.v local._page_data
pushi.e -9
push.v [stacktop]self.__line_end
pop.v.v local._page_end_line
pushloc.v local._page_start_line
pop.v.v local._j
pushi.e 1
pushloc.v local._page_end_line
add.v.i
pushloc.v local._page_start_line
sub.v.v
conv.v.i
dup.i 0
push.i 0
cmp.i.i LTE
bt [73]

:[13]
push.l 0
conv.l.v
pushloc.v local._j
pushloc.v local._line_grid
call.i ds_grid_get(argc=3)
pop.v.v local._line_x
push.l 1
conv.l.v
pushloc.v local._j
pushloc.v local._line_grid
call.i ds_grid_get(argc=3)
pop.v.v local._line_y
push.l 2
conv.l.v
pushloc.v local._j
pushloc.v local._line_grid
call.i ds_grid_get(argc=3)
pop.v.v local._line_word_start
push.l 3
conv.l.v
pushloc.v local._j
pushloc.v local._line_grid
call.i ds_grid_get(argc=3)
pop.v.v local._line_word_end
push.l 4
conv.l.v
pushloc.v local._j
pushloc.v local._line_grid
call.i ds_grid_get(argc=3)
pop.v.v local._line_width
push.l 5
conv.l.v
pushloc.v local._j
pushloc.v local._line_grid
call.i ds_grid_get(argc=3)
pop.v.v local._line_height
push.l 6
conv.l.v
pushloc.v local._j
pushloc.v local._line_grid
call.i ds_grid_get(argc=3)
pop.v.v local._line_halign
push.l 7
conv.l.v
pushloc.v local._j
pushloc.v local._line_grid
call.i ds_grid_get(argc=3)
pop.v.v local._line_disable_justify
push.l 2
conv.l.v
pushloc.v local._line_word_start
pushloc.v local._word_grid
call.i ds_grid_get(argc=3)
pop.v.v local._line_glyph_start
push.l 3
conv.l.v
pushloc.v local._line_word_end
pushloc.v local._word_grid
call.i ds_grid_get(argc=3)
pop.v.v local._line_glyph_end
pushloc.v local._j
pushloc.v local._page_start_line
sub.v.v
push.l 16
conv.l.v
pushloc.v local._line_glyph_end
push.l 16
conv.l.v
pushloc.v local._line_glyph_start
pushloc.v local._glyph_grid
call.i ds_grid_add_region(argc=6)
popz.v
pushi.e 1
pushloc.v local._line_glyph_end
add.v.i
pushloc.v local._line_glyph_start
sub.v.v
pop.v.v local._line_glyph_count
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
push.l 6
conv.l.v
pushloc.v local._line_glyph_end
push.l 6
conv.l.v
pushloc.v local._line_glyph_start
pushloc.v local._glyph_grid
pushloc.v local._temp_grid
call.i ds_grid_set_grid_region(argc=8)
popz.v
push.d -0.5
conv.d.v
pushi.e 0
conv.i.v
pushloc.v local._line_glyph_count
pushi.e 1
sub.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushloc.v local._temp_grid
call.i ds_grid_multiply_region(argc=6)
popz.v
push.d 0.5
pushloc.v local._line_height
mul.v.d
pushloc.v local._line_y
add.v.v
pushi.e 0
conv.i.v
pushloc.v local._line_glyph_count
pushi.e 1
sub.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushloc.v local._temp_grid
call.i ds_grid_add_region(argc=6)
popz.v
push.l 3
conv.l.v
pushloc.v local._line_glyph_start
pushi.e 0
conv.i.v
pushloc.v local._line_glyph_count
pushi.e 1
sub.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushloc.v local._temp_grid
pushloc.v local._glyph_grid
call.i ds_grid_add_grid_region(argc=8)
popz.v
pushi.e 0
pop.v.i local._line_stretch_count
push.l 1
conv.l.v
pushloc.v local._line_word_start
pushloc.v local._word_grid
call.i ds_grid_get(argc=3)
pop.v.v local._stretch_bidi
pushloc.v local._line_word_start
pop.v.v local._stretch_word_start
pushloc.v local._line_word_start
pop.v.v local._w
pushi.e 1
pushloc.v local._line_word_end
add.v.i
pushloc.v local._line_word_start
sub.v.v
conv.v.i
dup.i 0
push.i 0
cmp.i.i LTE
bt [17]

:[14]
push.l 1
conv.l.v
pushloc.v local._w
pushloc.v local._word_grid
call.i ds_grid_get(argc=3)
pop.v.v local._word_bidi
pushloc.v local._word_bidi
pushloc.v local._stretch_bidi
cmp.v.v NEQ
bf [16]

:[15]
pushloc.v local._stretch_word_start
push.l 0
conv.l.v
pushloc.v local._line_stretch_count
pushloc.v local._stretch_grid
call.i ds_grid_set(argc=4)
popz.v
pushloc.v local._w
pushi.e 1
sub.i.v
push.l 1
conv.l.v
pushloc.v local._line_stretch_count
pushloc.v local._stretch_grid
call.i ds_grid_set(argc=4)
popz.v
pushloc.v local._stretch_bidi
push.l 2
conv.l.v
pushloc.v local._line_stretch_count
pushloc.v local._stretch_grid
call.i ds_grid_set(argc=4)
popz.v
push.v local._line_stretch_count
push.e 1
add.i.v
pop.v.v local._line_stretch_count
pushloc.v local._w
pop.v.v local._stretch_word_start
pushloc.v local._word_bidi
pop.v.v local._stretch_bidi

:[16]
push.v local._w
push.e 1
add.i.v
pop.v.v local._w
pushi.e 1
sub.i.i
dup.i 0
bt [14]

:[17]
popz.i
pushloc.v local._w
pushi.e 0
cmp.i.v GT
bf [19]

:[18]
pushloc.v local._stretch_word_start
push.l 0
conv.l.v
pushloc.v local._line_stretch_count
pushloc.v local._stretch_grid
call.i ds_grid_set(argc=4)
popz.v
pushloc.v local._w
pushi.e 1
sub.i.v
push.l 1
conv.l.v
pushloc.v local._line_stretch_count
pushloc.v local._stretch_grid
call.i ds_grid_set(argc=4)
popz.v
pushloc.v local._stretch_bidi
push.l 2
conv.l.v
pushloc.v local._line_stretch_count
pushloc.v local._stretch_grid
call.i ds_grid_set(argc=4)
popz.v
push.v local._line_stretch_count
push.e 1
add.i.v
pop.v.v local._line_stretch_count

:[19]
pushloc.v local._line_halign
pushi.e 6
cmp.i.v EQ
bf [21]

:[20]
pushloc.v local._line_disable_justify
conv.v.b
b [22]

:[21]
push.e 0

:[22]
bf [24]

:[23]
pushi.e 3
pop.v.i local._line_halign

:[24]
pushi.e 0
pop.v.i local._justification_extra_spacing
pushloc.v local._line_width
pop.v.v local._line_adjusted_width
pushi.e 1
bf [27]

:[25]
pushloc.v local._line_halign
pushi.e 0
cmp.i.v NEQ
bf [27]

:[26]
pushloc.v local._line_halign
pushi.e 3
cmp.i.v NEQ
b [28]

:[27]
push.e 0

:[28]
bf [35]

:[29]
pushloc.v local._line_word_end
pushi.e 1
cmp.i.v GTE
bf [32]

:[30]
push.l 0
conv.l.v
pushloc.v local._line_word_end
pushloc.v local._word_grid
call.i ds_grid_get(argc=3)
push.l 0
cmp.l.v EQ
bf [32]

:[31]
push.l 0
conv.l.v
pushloc.v local._line_word_end
pushi.e 1
sub.i.v
pushloc.v local._word_grid
call.i ds_grid_get(argc=3)
push.l 0
cmp.l.v NEQ
b [33]

:[32]
push.e 0

:[33]
bf [35]

:[34]
push.v local._line_adjusted_width
push.l 4
conv.l.v
pushloc.v local._line_word_end
pushloc.v local._word_grid
call.i ds_grid_get(argc=3)
sub.v.v
pop.v.v local._line_adjusted_width
pushi.e 0
conv.i.v
push.l 4
conv.l.v
pushloc.v local._line_word_end
pushloc.v local._word_grid
call.i ds_grid_set(argc=4)
popz.v
push.l 2
conv.l.v
pushloc.v local._line_word_end
pushloc.v local._word_grid
call.i ds_grid_get(argc=3)
pop.v.v local._word_glyph
pushi.e 0
conv.i.v
push.l 4
conv.l.v
pushloc.v local._word_glyph
pushloc.v local._glyph_grid
call.i ds_grid_set(argc=4)
popz.v
pushi.e 0
conv.i.v
push.l 7
conv.l.v
pushloc.v local._word_glyph
pushloc.v local._glyph_grid
call.i ds_grid_set(argc=4)
popz.v

:[35]
pushloc.v local._overall_bidi
push.l 6
cmp.l.v EQ
bf [37]

:[36]
pushloc.v local._line_x
neg.v
b [38]

:[37]
pushloc.v local._line_x

:[38]
pop.v.v local._glyph_x
pushloc.v local._line_halign
dup.v 0
pushi.e 0
cmp.i.v EQ
bt [46]

:[39]
dup.v 0
pushi.e 1
cmp.i.v EQ
bt [50]

:[40]
dup.v 0
pushi.e 2
cmp.i.v EQ
bt [51]

:[41]
dup.v 0
pushi.e 3
cmp.i.v EQ
bt [52]

:[42]
dup.v 0
pushi.e 4
cmp.i.v EQ
bt [56]

:[43]
dup.v 0
pushi.e 5
cmp.i.v EQ
bt [57]

:[44]
dup.v 0
pushi.e 6
cmp.i.v EQ
bt [58]

:[45]
b [62]

:[46]
push.v local._glyph_x
pushloc.v local._overall_bidi
push.l 6
cmp.l.v EQ
bf [48]

:[47]
pushloc.v local._alignment_width
pushloc.v local._line_adjusted_width
sub.v.v
b [49]

:[48]
pushi.e 0
conv.i.v

:[49]
add.v.v
pop.v.v local._glyph_x
b [62]

:[50]
push.v local._glyph_x
pushloc.v local._line_adjusted_width
pushi.e 2
rem.i.v
neg.v
add.v.v
pop.v.v local._glyph_x
b [62]

:[51]
push.v local._glyph_x
pushloc.v local._line_adjusted_width
neg.v
add.v.v
pop.v.v local._glyph_x
b [62]

:[52]
push.v local._glyph_x
pushloc.v local._overall_bidi
push.l 6
cmp.l.v EQ
bf [54]

:[53]
pushloc.v local._pin_alignment_width
pushloc.v local._line_adjusted_width
sub.v.v
b [55]

:[54]
pushi.e 0
conv.i.v

:[55]
add.v.v
pop.v.v local._glyph_x
b [62]

:[56]
push.v local._glyph_x
pushloc.v local._pin_alignment_width
pushloc.v local._line_adjusted_width
sub.v.v
pushi.e 2
rem.i.v
add.v.v
pop.v.v local._glyph_x
b [62]

:[57]
push.v local._glyph_x
pushloc.v local._pin_alignment_width
pushloc.v local._line_adjusted_width
sub.v.v
add.v.v
pop.v.v local._glyph_x
b [62]

:[58]
pushloc.v local._j
pushloc.v local._page_end_line
cmp.v.v NEQ
bf [61]

:[59]
pushi.e 1
pushloc.v local._line_word_end
add.v.i
pushloc.v local._line_word_start
sub.v.v
pop.v.v local._line_word_count
pushloc.v local._line_word_count
pushi.e 1
cmp.i.v GT
bf [61]

:[60]
pushloc.v local._pin_alignment_width
pushloc.v local._line_adjusted_width
sub.v.v
pushloc.v local._line_word_count
pushi.e 1
sub.i.v
div.v.v
pop.v.v local._justification_extra_spacing

:[61]
b [62]

:[62]
popz.v
pushloc.v local._glyph_x
pushloc.v local._page_min_x
call.i min(argc=2)
pop.v.v local._page_min_x
pushloc.v local._glyph_x
pushloc.v local._line_adjusted_width
add.v.v
pushloc.v local._page_max_x
call.i max(argc=2)
pop.v.v local._page_max_x
pushloc.v local._glyph_x
pushloc.v local._model_min_x
call.i min(argc=2)
pop.v.v local._model_min_x
pushloc.v local._glyph_x
pushloc.v local._line_adjusted_width
add.v.v
pushloc.v local._model_max_x
call.i max(argc=2)
pop.v.v local._model_max_x
pushloc.v local._overall_bidi
push.l 6
cmp.l.v LT
bf [64]

:[63]
pushi.e 0
pop.v.i local._k
pushi.e 1
pop.v.i local._stretch_incr
b [65]

:[64]
pushloc.v local._line_stretch_count
pushi.e 1
sub.i.v
pop.v.v local._k
pushi.e -1
pop.v.i local._stretch_incr

:[65]
pushloc.v local._line_stretch_count
conv.v.i
dup.i 0
push.i 0
cmp.i.i LTE
bt [72]

:[66]
push.l 0
conv.l.v
pushloc.v local._k
pushloc.v local._stretch_grid
call.i ds_grid_get(argc=3)
pop.v.v local._stretch_word_start
push.l 1
conv.l.v
pushloc.v local._k
pushloc.v local._stretch_grid
call.i ds_grid_get(argc=3)
pop.v.v local._stretch_word_end
push.l 2
conv.l.v
pushloc.v local._k
pushloc.v local._stretch_grid
call.i ds_grid_get(argc=3)
pop.v.v local._stretch_bidi
pushloc.v local._stretch_bidi
push.l 6
cmp.l.v LT
bf [68]

:[67]
pushloc.v local._stretch_word_start
pop.v.v local._w
pushi.e 1
pop.v.i local._word_incr
b [69]

:[68]
pushloc.v local._stretch_word_end
pop.v.v local._w
pushi.e -1
pop.v.i local._word_incr

:[69]
pushi.e 1
pushloc.v local._stretch_word_end
add.v.i
pushloc.v local._stretch_word_start
sub.v.v
conv.v.i
dup.i 0
push.i 0
cmp.i.i LTE
bt [71]

:[70]
push.l 2
conv.l.v
pushloc.v local._w
pushloc.v local._word_grid
call.i ds_grid_get(argc=3)
pop.v.v local._word_glyph_start
push.l 3
conv.l.v
pushloc.v local._w
pushloc.v local._word_grid
call.i ds_grid_get(argc=3)
pop.v.v local._word_glyph_end
pushloc.v local._glyph_x
push.l 2
conv.l.v
pushloc.v local._word_glyph_end
push.l 2
conv.l.v
pushloc.v local._word_glyph_start
pushloc.v local._glyph_grid
call.i ds_grid_add_region(argc=6)
popz.v
push.v local._glyph_x
push.l 4
conv.l.v
pushloc.v local._w
pushloc.v local._word_grid
call.i ds_grid_get(argc=3)
pushloc.v local._justification_extra_spacing
add.v.v
add.v.v
pop.v.v local._glyph_x
push.v local._w
pushloc.v local._word_incr
add.v.v
pop.v.v local._w
pushi.e 1
sub.i.i
dup.i 0
bt [70]

:[71]
popz.i
push.v local._k
pushloc.v local._stretch_incr
add.v.v
pop.v.v local._k
pushi.e 1
sub.i.i
dup.i 0
bt [66]

:[72]
popz.i
push.v local._j
push.e 1
add.i.v
pop.v.v local._j
pushi.e 1
sub.i.i
dup.i 0
bt [13]

:[73]
popz.i
pushloc.v local._page_min_x
pushbltn.v builtin.infinity
cmp.v.v EQ
bf [75]

:[74]
pushi.e 0
pop.v.i local._page_min_x

:[75]
pushloc.v local._page_min_x
pushloc.v local._page_data
pushi.e -9
pop.v.v [stacktop]self.__min_x
pushloc.v local._page_max_x
pushloc.v local._page_min_x
call.i max(argc=2)
pushloc.v local._page_data
pushi.e -9
pop.v.v [stacktop]self.__max_x
pushloc.v local._page_data
pushi.e -9
push.v [stacktop]self.__min_y
pushloc.v local._model_min_y
call.i min(argc=2)
pop.v.v local._model_min_y
pushloc.v local._page_data
pushi.e -9
push.v [stacktop]self.__max_y
pushloc.v local._model_max_y
call.i max(argc=2)
pop.v.v local._model_max_y
push.v local._i
push.e 1
add.i.v
pop.v.v local._i
pushi.e 1
sub.i.i
dup.i 0
bt [6]

:[76]
popz.i
pushloc.v local._model_min_x
pushbltn.v builtin.infinity
cmp.v.v EQ
bf [78]

:[77]
pushi.e 0
pop.v.i local._model_min_x

:[78]
pushloc.v local._model_min_x
pop.v.v builtin.__min_x
pushloc.v local._model_min_y
pop.v.v builtin.__min_y
pushloc.v local._model_max_x
pushloc.v local._model_min_x
call.i max(argc=2)
pop.v.v builtin.__max_x
pushloc.v local._model_max_y
pop.v.v builtin.__max_y
pushi.e 1
push.v builtin.__max_x
add.v.i
push.v builtin.__min_x
sub.v.v
pop.v.v builtin.__width
pushi.e 1
push.v builtin.__max_y
add.v.i
push.v builtin.__min_y
sub.v.v
pop.v.v builtin.__height
exit.i

:[79]
push.i [function]gml_Script___scribble_gen_8_position_glyphs
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pop.v.v self.__scribble_gen_8_position_glyphs
popz.v

:[end]