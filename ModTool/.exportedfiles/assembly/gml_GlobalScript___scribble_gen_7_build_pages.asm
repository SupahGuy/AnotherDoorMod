:[0]
b [97]

> gml_Script___scribble_gen_7_build_pages (locals=27, argc=0)
:[1]
isstaticok.e
bt [3]

:[2]
setstatic.e
call.i gml_Script___scribble_system(argc=0)
pushi.e -9
push.v [stacktop]self.__generator_state
pop.v.v static._generator_state
call.i @@NewGMLArray@@(argc=0)
pop.v.v static._animation_randomize_array

:[3]
push.v static._generator_state
pushi.e -9
pushenv [8]

:[4]
push.v builtin.__glyph_grid
pop.v.v local._glyph_grid
push.v builtin.__word_grid
pop.v.v local._word_grid
push.v builtin.__line_grid
pop.v.v local._line_grid
push.v builtin.__element
pop.v.v local._element
push.v builtin.__model_max_height
pop.v.v local._model_max_height
push.v builtin.__line_count
pop.v.v local._line_count
push.v builtin.__line_spacing_add
pop.v.v local._line_spacing_add
push.v builtin.__line_spacing_multiply
pop.v.v local._line_spacing_multiply
push.v builtin.__element
pushi.e -9
push.v [stacktop]self.__randomize_animation
pop.v.v local._randomize_animation
push.v builtin.__element
pushi.e -9
push.v [stacktop]self.__allow_line_data_getter
pop.v.v local._line_data_getter
pushloc.v local._line_data_getter
conv.v.b
bf [6]

:[5]
call.i @@NewGMLArray@@(argc=0)
b [7]

:[6]
pushbltn.v builtin.undefined

:[7]
pop.v.v local._line_data_array

:[8]
popenv [4]
pushloc.v local._element
pushi.e -9
push.v [stacktop]self.__wrap_no_pages
pop.v.v local._wrap_no_pages
pushloc.v local._wrap_no_pages
conv.v.b
bf [10]

:[9]
pushbltn.v builtin.infinity
b [11]

:[10]
pushloc.v local._model_max_height
push.v builtin.__fit_scale
div.v.v

:[11]
pop.v.v local._simulated_model_height
pushi.e 0
pop.v.i local._model_height
call.i @@This@@(argc=0)
push.v builtin.__new_page
callv.v 0
pop.v.v local._page_data
pushi.e 0
pushloc.v local._page_data
pushi.e -9
pop.v.i [stacktop]self.__line_start
push.l 2
conv.l.v
push.l 2
conv.l.v
pushi.e 0
conv.i.v
pushloc.v local._line_grid
call.i ds_grid_get(argc=3)
pushloc.v local._word_grid
call.i ds_grid_get(argc=3)
pushloc.v local._page_data
pushi.e -9
pop.v.v [stacktop]self.__glyph_start
pushi.e 0
pop.v.i local._page_start_line
pushi.e 0
pop.v.i local._line_y
pushi.e 0
pop.v.i local._line_max_y
pushi.e 0
pop.v.i local._i
pushloc.v local._line_count
conv.v.i
dup.i 0
push.i 0
cmp.i.i LTE
bt [59]

:[12]
push.l 5
conv.l.v
pushloc.v local._i
pushloc.v local._line_grid
call.i ds_grid_get(argc=3)
pop.v.v local._line_height
push.l 8
conv.l.v
pushloc.v local._i
pushloc.v local._line_grid
call.i ds_grid_get(argc=3)
pop.v.v local._starts_manual_page
pushloc.v local._starts_manual_page
conv.v.b
not.b
bf [17]

:[13]
pushloc.v local._line_y
pushloc.v local._line_height
add.v.v
pushloc.v local._simulated_model_height
cmp.v.v LT
bt [15]

:[14]
pushloc.v local._page_start_line
pushloc.v local._i
cmp.v.v GTE
b [16]

:[15]
push.e 1

:[16]
b [18]

:[17]
push.e 0

:[18]
bf [20]

:[19]
pushloc.v local._line_y
push.l 1
conv.l.v
pushloc.v local._i
pushloc.v local._line_grid
call.i ds_grid_set(argc=4)
popz.v
pushloc.v local._line_y
pushloc.v local._line_height
add.v.v
pop.v.v local._line_max_y
push.v local._line_y
pushloc.v local._line_spacing_add
pushloc.v local._line_height
pushloc.v local._line_spacing_multiply
mul.v.v
add.v.v
add.v.v
pop.v.v local._line_y
b [58]

:[20]
pushloc.v local._line_max_y
pushloc.v local._model_height
call.i max(argc=2)
pop.v.v local._model_height
pushloc.v local._i
pushi.e 1
sub.i.v
pop.v.v local._page_end_line
pushloc.v local._page_end_line
pushloc.v local._page_data
pushi.e -9
pop.v.v [stacktop]self.__line_end
pushi.e 1
pushloc.v local._page_data
pushi.e -9
push.v [stacktop]self.__line_end
add.v.i
pushloc.v local._page_data
pushi.e -9
push.v [stacktop]self.__line_start
sub.v.v
pushloc.v local._page_data
pushi.e -9
pop.v.v [stacktop]self.__line_count
push.l 3
conv.l.v
push.l 3
conv.l.v
pushloc.v local._page_end_line
pushloc.v local._line_grid
call.i ds_grid_get(argc=3)
pushloc.v local._word_grid
call.i ds_grid_get(argc=3)
pushloc.v local._page_data
pushi.e -9
pop.v.v [stacktop]self.__glyph_end
pushi.e 1
pushloc.v local._page_data
pushi.e -9
push.v [stacktop]self.__glyph_end
add.v.i
pushloc.v local._page_data
pushi.e -9
push.v [stacktop]self.__glyph_start
sub.v.v
pushloc.v local._page_data
pushi.e -9
pop.v.v [stacktop]self.__glyph_count
push.l 4
conv.l.v
pushloc.v local._page_end_line
push.l 4
conv.l.v
pushloc.v local._page_start_line
pushloc.v local._line_grid
call.i ds_grid_get_max(argc=5)
pushloc.v local._page_data
pushi.e -9
pop.v.v [stacktop]self.__width
pushloc.v local._line_max_y
pushloc.v local._page_data
pushi.e -9
pop.v.v [stacktop]self.__height
push.v builtin.__valign
pushi.e 1
cmp.i.v EQ
bf [22]

:[21]
pushloc.v local._line_max_y
pushi.e 2
rem.i.v
neg.v
pushloc.v local._page_data
pushi.e -9
pop.v.v [stacktop]self.__min_y
pushloc.v local._line_max_y
pushi.e 2
rem.i.v
pushloc.v local._page_data
pushi.e -9
pop.v.v [stacktop]self.__max_y
b [41]

:[22]
push.v builtin.__valign
pushi.e 2
cmp.i.v EQ
bf [24]

:[23]
pushloc.v local._line_max_y
neg.v
pushloc.v local._page_data
pushi.e -9
pop.v.v [stacktop]self.__min_y
pushi.e 0
pushloc.v local._page_data
pushi.e -9
pop.v.i [stacktop]self.__max_y
b [41]

:[24]
push.v builtin.__valign
pushi.e 4
cmp.i.v EQ
bf [32]

:[25]
pushi.e 0
bt [27]

:[26]
pushloc.v local._model_max_height
pushbltn.v builtin.infinity
cmp.v.v EQ
b [28]

:[27]
push.e 1

:[28]
bf [30]

:[29]
pushloc.v local._line_max_y
pushi.e 2
rem.i.v
neg.v
pushloc.v local._page_data
pushi.e -9
pop.v.v [stacktop]self.__min_y
pushloc.v local._line_max_y
pushi.e 2
rem.i.v
pushloc.v local._page_data
pushi.e -9
pop.v.v [stacktop]self.__max_y
b [31]

:[30]
pushloc.v local._model_max_height
pushloc.v local._line_max_y
sub.v.v
pop.v.v local._delta
push.d 0.5
pushloc.v local._delta
mul.v.d
pushloc.v local._page_data
pushi.e -9
pop.v.v [stacktop]self.__min_y
pushloc.v local._model_max_height
push.d 0.5
pushloc.v local._delta
mul.v.d
sub.v.v
pushloc.v local._page_data
pushi.e -9
pop.v.v [stacktop]self.__max_y

:[31]
b [41]

:[32]
push.v builtin.__valign
pushi.e 5
cmp.i.v EQ
bf [40]

:[33]
pushi.e 0
bt [35]

:[34]
pushloc.v local._model_max_height
pushbltn.v builtin.infinity
cmp.v.v EQ
b [36]

:[35]
push.e 1

:[36]
bf [38]

:[37]
pushloc.v local._line_max_y
neg.v
pushloc.v local._page_data
pushi.e -9
pop.v.v [stacktop]self.__min_y
pushi.e 0
pushloc.v local._page_data
pushi.e -9
pop.v.i [stacktop]self.__max_y
b [39]

:[38]
pushloc.v local._model_max_height
pushloc.v local._line_max_y
sub.v.v
pushloc.v local._page_data
pushi.e -9
pop.v.v [stacktop]self.__min_y
pushloc.v local._model_max_height
pushloc.v local._page_data
pushi.e -9
pop.v.v [stacktop]self.__max_y

:[39]
b [41]

:[40]
pushi.e 0
pushloc.v local._page_data
pushi.e -9
pop.v.i [stacktop]self.__min_y
pushloc.v local._line_max_y
pushloc.v local._page_data
pushi.e -9
pop.v.v [stacktop]self.__max_y

:[41]
pushloc.v local._page_data
pushi.e -9
push.v [stacktop]self.__min_y
pushi.e 0
cmp.i.v NEQ
bf [43]

:[42]
pushloc.v local._page_data
pushi.e -9
push.v [stacktop]self.__min_y
push.l 1
conv.l.v
pushloc.v local._page_end_line
push.l 1
conv.l.v
pushloc.v local._page_data
pushi.e -9
push.v [stacktop]self.__line_start
pushloc.v local._line_grid
call.i ds_grid_add_region(argc=6)
popz.v

:[43]
push.l 16
conv.l.v
pushloc.v local._page_data
pushi.e -9
push.v [stacktop]self.__glyph_start
pushloc.v local._glyph_grid
call.i ds_grid_get(argc=3)
pop.v.v local._page_anim_start
push.l 16
conv.l.v
pushloc.v local._page_data
pushi.e -9
push.v [stacktop]self.__glyph_end
pushloc.v local._glyph_grid
call.i ds_grid_get(argc=3)
pop.v.v local._page_anim_end
pushi.e 1
pushloc.v local._page_anim_end
add.v.i
pushloc.v local._page_anim_start
sub.v.v
pushloc.v local._page_data
pushi.e -9
pop.v.v [stacktop]self.__character_count
pushloc.v local._line_data_getter
conv.v.b
bf [47]

:[44]
pushloc.v local._page_data
pushi.e -9
push.v [stacktop]self.__line_start
pop.v.v local._i
pushloc.v local._page_data
pushi.e -9
push.v [stacktop]self.__line_count
conv.v.i
dup.i 0
push.i 0
cmp.i.i LTE
bt [46]

:[45]
push.l 2
conv.l.v
push.l 2
conv.l.v
pushloc.v local._i
pushloc.v local._line_grid
call.i ds_grid_get(argc=3)
pushloc.v local._word_grid
call.i ds_grid_get(argc=3)
pushloc.v local._page_data
pushi.e -9
push.v [stacktop]self.__glyph_start
sub.v.v
pop.v.v local._glyph_start
push.l 3
conv.l.v
push.l 3
conv.l.v
pushloc.v local._i
pushloc.v local._line_grid
call.i ds_grid_get(argc=3)
pushloc.v local._word_grid
call.i ds_grid_get(argc=3)
pushloc.v local._page_data
pushi.e -9
push.v [stacktop]self.__glyph_start
sub.v.v
pop.v.v local._glyph_end
pushloc.v local._glyph_end
pushloc.v local._glyph_start
push.l 9
conv.l.v
pushloc.v local._i
pushloc.v local._line_grid
call.i ds_grid_get(argc=3)
push.l 5
conv.l.v
pushloc.v local._i
pushloc.v local._line_grid
call.i ds_grid_get(argc=3)
push.l 1
conv.l.v
pushloc.v local._i
pushloc.v local._line_grid
call.i ds_grid_get(argc=3)
push.i [function]gml_Script___scribble_class_line
conv.i.v
call.i @@NewGMLObject@@(argc=6)
pushloc.v local._line_data_array
call.i array_push(argc=2)
popz.v
push.v local._i
push.e 1
add.i.v
pop.v.v local._i
pushi.e 1
sub.i.i
dup.i 0
bt [45]

:[46]
popz.i
pushloc.v local._line_data_array
pushloc.v local._page_data
pushi.e -9
pop.v.v [stacktop]self.__line_data_array
call.i @@NewGMLArray@@(argc=0)
pop.v.v local._line_data_array

:[47]
pushloc.v local._randomize_animation
conv.v.b
bf [56]

:[48]
pushloc.v local._page_data
pushi.e -9
push.v [stacktop]self.__character_count
push.v static._animation_randomize_array
call.i array_resize(argc=2)
popz.v
pushi.e 0
pop.v.i local._i
pushloc.v local._page_data
pushi.e -9
push.v [stacktop]self.__character_count
conv.v.i
dup.i 0
push.i 0
cmp.i.i LTE
bt [50]

:[49]
pushloc.v local._i
pushi.e -16
pushloc.v local._i
conv.v.i
pop.v.v [array]self._animation_randomize_array
push.v local._i
push.e 1
add.i.v
pop.v.v local._i
pushi.e 1
sub.i.i
dup.i 0
bt [49]

:[50]
popz.i
b [53]

> gml_Script_anon@9637@__scribble_gen_7_build_pages@__scribble_gen_7_build_pages (locals=0, argc=0)
:[51]
pushi.e 1
conv.i.v
pushi.e -1
conv.i.v
call.i choose(argc=2)
ret.v

:[52]
exit.i

:[53]
push.i [function]gml_Script_anon@9637@__scribble_gen_7_build_pages@__scribble_gen_7_build_pages
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
push.v static._animation_randomize_array
call.i array_sort(argc=2)
popz.v
pushloc.v local._page_data
pushi.e -9
push.v [stacktop]self.__glyph_start
pop.v.v local._glyph_start
pushi.e 0
pop.v.i local._i
pushloc.v local._page_data
pushi.e -9
push.v [stacktop]self.__character_count
conv.v.i
dup.i 0
push.i 0
cmp.i.i LTE
bt [55]

:[54]
pushi.e -16
pushloc.v local._i
conv.v.i
push.v [array]self._animation_randomize_array
push.l 16
conv.l.v
pushloc.v local._glyph_start
pushloc.v local._i
add.v.v
pushloc.v local._glyph_grid
call.i ds_grid_set(argc=4)
popz.v
push.v local._i
push.e 1
add.i.v
pop.v.v local._i
pushi.e 1
sub.i.i
dup.i 0
bt [54]

:[55]
popz.i
b [57]

:[56]
pushloc.v local._page_anim_start
neg.v
push.l 16
conv.l.v
pushloc.v local._page_data
pushi.e -9
push.v [stacktop]self.__glyph_end
push.l 16
conv.l.v
pushloc.v local._page_data
pushi.e -9
push.v [stacktop]self.__glyph_start
pushloc.v local._glyph_grid
call.i ds_grid_add_region(argc=6)
popz.v

:[57]
call.i @@This@@(argc=0)
push.v builtin.__new_page
callv.v 0
pop.v.v local._page_data
pushloc.v local._i
pushloc.v local._page_data
pushi.e -9
pop.v.v [stacktop]self.__line_start
push.l 2
conv.l.v
push.l 2
conv.l.v
pushloc.v local._i
pushloc.v local._line_grid
call.i ds_grid_get(argc=3)
pushloc.v local._word_grid
call.i ds_grid_get(argc=3)
pushloc.v local._page_data
pushi.e -9
pop.v.v [stacktop]self.__glyph_start
pushloc.v local._i
pop.v.v local._page_start_line
pushi.e 0
conv.i.v
push.l 1
conv.l.v
pushloc.v local._i
pushloc.v local._line_grid
call.i ds_grid_set(argc=4)
popz.v
pushloc.v local._line_height
pop.v.v local._line_max_y
pushloc.v local._line_spacing_add
pushloc.v local._line_height
pushloc.v local._line_spacing_multiply
mul.v.v
add.v.v
pop.v.v local._line_y

:[58]
push.v local._i
push.e 1
add.i.v
pop.v.v local._i
pushi.e 1
sub.i.i
dup.i 0
bt [12]

:[59]
popz.i
pushloc.v local._line_max_y
pushloc.v local._model_height
call.i max(argc=2)
pop.v.v local._model_height
pushloc.v local._i
pushi.e 1
sub.i.v
pop.v.v local._page_end_line
pushloc.v local._page_end_line
pushloc.v local._page_data
pushi.e -9
pop.v.v [stacktop]self.__line_end
pushi.e 1
pushloc.v local._page_data
pushi.e -9
push.v [stacktop]self.__line_end
add.v.i
pushloc.v local._page_data
pushi.e -9
push.v [stacktop]self.__line_start
sub.v.v
pushloc.v local._page_data
pushi.e -9
pop.v.v [stacktop]self.__line_count
push.l 3
conv.l.v
push.l 3
conv.l.v
pushloc.v local._page_end_line
pushloc.v local._line_grid
call.i ds_grid_get(argc=3)
pushloc.v local._word_grid
call.i ds_grid_get(argc=3)
pushloc.v local._page_data
pushi.e -9
pop.v.v [stacktop]self.__glyph_end
pushi.e 1
pushloc.v local._page_data
pushi.e -9
push.v [stacktop]self.__glyph_end
add.v.i
pushloc.v local._page_data
pushi.e -9
push.v [stacktop]self.__glyph_start
sub.v.v
pushloc.v local._page_data
pushi.e -9
pop.v.v [stacktop]self.__glyph_count
push.l 4
conv.l.v
pushloc.v local._page_end_line
push.l 4
conv.l.v
pushloc.v local._page_start_line
pushloc.v local._line_grid
call.i ds_grid_get_max(argc=5)
pushloc.v local._page_data
pushi.e -9
pop.v.v [stacktop]self.__width
pushloc.v local._line_max_y
pushloc.v local._page_data
pushi.e -9
pop.v.v [stacktop]self.__height
push.v builtin.__valign
pushi.e 1
cmp.i.v EQ
bf [61]

:[60]
pushloc.v local._line_max_y
pushi.e 2
rem.i.v
neg.v
pushloc.v local._page_data
pushi.e -9
pop.v.v [stacktop]self.__min_y
pushloc.v local._line_max_y
pushi.e 2
rem.i.v
pushloc.v local._page_data
pushi.e -9
pop.v.v [stacktop]self.__max_y
b [80]

:[61]
push.v builtin.__valign
pushi.e 2
cmp.i.v EQ
bf [63]

:[62]
pushloc.v local._line_max_y
neg.v
pushloc.v local._page_data
pushi.e -9
pop.v.v [stacktop]self.__min_y
pushi.e 0
pushloc.v local._page_data
pushi.e -9
pop.v.i [stacktop]self.__max_y
b [80]

:[63]
push.v builtin.__valign
pushi.e 4
cmp.i.v EQ
bf [71]

:[64]
pushi.e 0
bt [66]

:[65]
pushloc.v local._model_max_height
pushbltn.v builtin.infinity
cmp.v.v EQ
b [67]

:[66]
push.e 1

:[67]
bf [69]

:[68]
pushloc.v local._line_max_y
pushi.e 2
rem.i.v
neg.v
pushloc.v local._page_data
pushi.e -9
pop.v.v [stacktop]self.__min_y
pushloc.v local._line_max_y
pushi.e 2
rem.i.v
pushloc.v local._page_data
pushi.e -9
pop.v.v [stacktop]self.__max_y
b [70]

:[69]
pushloc.v local._model_max_height
pushloc.v local._line_max_y
sub.v.v
pop.v.v local._delta
push.d 0.5
pushloc.v local._delta
mul.v.d
pushloc.v local._page_data
pushi.e -9
pop.v.v [stacktop]self.__min_y
pushloc.v local._model_max_height
push.d 0.5
pushloc.v local._delta
mul.v.d
sub.v.v
pushloc.v local._page_data
pushi.e -9
pop.v.v [stacktop]self.__max_y

:[70]
b [80]

:[71]
push.v builtin.__valign
pushi.e 5
cmp.i.v EQ
bf [79]

:[72]
pushi.e 0
bt [74]

:[73]
pushloc.v local._model_max_height
pushbltn.v builtin.infinity
cmp.v.v EQ
b [75]

:[74]
push.e 1

:[75]
bf [77]

:[76]
pushloc.v local._line_max_y
neg.v
pushloc.v local._page_data
pushi.e -9
pop.v.v [stacktop]self.__min_y
pushi.e 0
pushloc.v local._page_data
pushi.e -9
pop.v.i [stacktop]self.__max_y
b [78]

:[77]
pushloc.v local._model_max_height
pushloc.v local._line_max_y
sub.v.v
pushloc.v local._page_data
pushi.e -9
pop.v.v [stacktop]self.__min_y
pushloc.v local._model_max_height
pushloc.v local._page_data
pushi.e -9
pop.v.v [stacktop]self.__max_y

:[78]
b [80]

:[79]
pushi.e 0
pushloc.v local._page_data
pushi.e -9
pop.v.i [stacktop]self.__min_y
pushloc.v local._line_max_y
pushloc.v local._page_data
pushi.e -9
pop.v.v [stacktop]self.__max_y

:[80]
pushloc.v local._page_data
pushi.e -9
push.v [stacktop]self.__min_y
pushi.e 0
cmp.i.v NEQ
bf [82]

:[81]
pushloc.v local._page_data
pushi.e -9
push.v [stacktop]self.__min_y
push.l 1
conv.l.v
pushloc.v local._page_end_line
push.l 1
conv.l.v
pushloc.v local._page_data
pushi.e -9
push.v [stacktop]self.__line_start
pushloc.v local._line_grid
call.i ds_grid_add_region(argc=6)
popz.v

:[82]
push.l 16
conv.l.v
pushloc.v local._page_data
pushi.e -9
push.v [stacktop]self.__glyph_start
pushloc.v local._glyph_grid
call.i ds_grid_get(argc=3)
pop.v.v local._page_anim_start
push.l 16
conv.l.v
pushloc.v local._page_data
pushi.e -9
push.v [stacktop]self.__glyph_end
pushloc.v local._glyph_grid
call.i ds_grid_get(argc=3)
pop.v.v local._page_anim_end
pushi.e 1
pushloc.v local._page_anim_end
add.v.i
pushloc.v local._page_anim_start
sub.v.v
pushloc.v local._page_data
pushi.e -9
pop.v.v [stacktop]self.__character_count
pushloc.v local._line_data_getter
conv.v.b
bf [86]

:[83]
pushloc.v local._page_data
pushi.e -9
push.v [stacktop]self.__line_start
pop.v.v local._i
pushloc.v local._page_data
pushi.e -9
push.v [stacktop]self.__line_count
conv.v.i
dup.i 0
push.i 0
cmp.i.i LTE
bt [85]

:[84]
push.l 2
conv.l.v
push.l 2
conv.l.v
pushloc.v local._i
pushloc.v local._line_grid
call.i ds_grid_get(argc=3)
pushloc.v local._word_grid
call.i ds_grid_get(argc=3)
pushloc.v local._page_data
pushi.e -9
push.v [stacktop]self.__glyph_start
sub.v.v
pop.v.v local._glyph_start
push.l 3
conv.l.v
push.l 3
conv.l.v
pushloc.v local._i
pushloc.v local._line_grid
call.i ds_grid_get(argc=3)
pushloc.v local._word_grid
call.i ds_grid_get(argc=3)
pushloc.v local._page_data
pushi.e -9
push.v [stacktop]self.__glyph_start
sub.v.v
pop.v.v local._glyph_end
pushloc.v local._glyph_end
pushloc.v local._glyph_start
push.l 9
conv.l.v
pushloc.v local._i
pushloc.v local._line_grid
call.i ds_grid_get(argc=3)
push.l 5
conv.l.v
pushloc.v local._i
pushloc.v local._line_grid
call.i ds_grid_get(argc=3)
push.l 1
conv.l.v
pushloc.v local._i
pushloc.v local._line_grid
call.i ds_grid_get(argc=3)
push.i [function]gml_Script___scribble_class_line
conv.i.v
call.i @@NewGMLObject@@(argc=6)
pushloc.v local._line_data_array
call.i array_push(argc=2)
popz.v
push.v local._i
push.e 1
add.i.v
pop.v.v local._i
pushi.e 1
sub.i.i
dup.i 0
bt [84]

:[85]
popz.i
pushloc.v local._line_data_array
pushloc.v local._page_data
pushi.e -9
pop.v.v [stacktop]self.__line_data_array
call.i @@NewGMLArray@@(argc=0)
pop.v.v local._line_data_array

:[86]
pushloc.v local._randomize_animation
conv.v.b
bf [95]

:[87]
pushloc.v local._page_data
pushi.e -9
push.v [stacktop]self.__character_count
push.v static._animation_randomize_array
call.i array_resize(argc=2)
popz.v
pushi.e 0
pop.v.i local._i
pushloc.v local._page_data
pushi.e -9
push.v [stacktop]self.__character_count
conv.v.i
dup.i 0
push.i 0
cmp.i.i LTE
bt [89]

:[88]
pushloc.v local._i
pushi.e -16
pushloc.v local._i
conv.v.i
pop.v.v [array]self._animation_randomize_array
push.v local._i
push.e 1
add.i.v
pop.v.v local._i
pushi.e 1
sub.i.i
dup.i 0
bt [88]

:[89]
popz.i
b [92]

> gml_Script_anon@10220@__scribble_gen_7_build_pages@__scribble_gen_7_build_pages (locals=0, argc=0)
:[90]
pushi.e 1
conv.i.v
pushi.e -1
conv.i.v
call.i choose(argc=2)
ret.v

:[91]
exit.i

:[92]
push.i [function]gml_Script_anon@10220@__scribble_gen_7_build_pages@__scribble_gen_7_build_pages
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
push.v static._animation_randomize_array
call.i array_sort(argc=2)
popz.v
pushloc.v local._page_data
pushi.e -9
push.v [stacktop]self.__glyph_start
pop.v.v local._glyph_start
pushi.e 0
pop.v.i local._i
pushloc.v local._page_data
pushi.e -9
push.v [stacktop]self.__character_count
conv.v.i
dup.i 0
push.i 0
cmp.i.i LTE
bt [94]

:[93]
pushi.e -16
pushloc.v local._i
conv.v.i
push.v [array]self._animation_randomize_array
push.l 16
conv.l.v
pushloc.v local._glyph_start
pushloc.v local._i
add.v.v
pushloc.v local._glyph_grid
call.i ds_grid_set(argc=4)
popz.v
push.v local._i
push.e 1
add.i.v
pop.v.v local._i
pushi.e 1
sub.i.i
dup.i 0
bt [93]

:[94]
popz.i
b [96]

:[95]
pushloc.v local._page_anim_start
neg.v
push.l 16
conv.l.v
pushloc.v local._page_data
pushi.e -9
push.v [stacktop]self.__glyph_end
push.l 16
conv.l.v
pushloc.v local._page_data
pushi.e -9
push.v [stacktop]self.__glyph_start
pushloc.v local._glyph_grid
call.i ds_grid_add_region(argc=6)
popz.v

:[96]
exit.i

:[97]
push.i [function]gml_Script___scribble_gen_7_build_pages
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pop.v.v self.__scribble_gen_7_build_pages
popz.v

:[end]