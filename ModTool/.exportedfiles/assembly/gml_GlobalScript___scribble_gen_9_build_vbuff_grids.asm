:[0]
b [24]

> gml_Script___scribble_gen_9_build_vbuff_grids (locals=12, argc=0)
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
push.v builtin.__vbuff_pos_grid
pop.v.v local._vbuff_pos_grid
push.v builtin.__glyph_count
pop.v.v local._glyph_count
push.v builtin.__element
pop.v.v local._element

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
pushloc.v local._element
pushi.e -9
push.v [stacktop]self.__visual_bboxes
conv.v.b
bf [23]

:[6]
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
pop.v.i local._p
push.v builtin.__pages
conv.v.i
dup.i 0
push.i 0
cmp.i.i LTE
bt [10]

:[7]
pushi.e -6
pushloc.v local._p
conv.v.i
push.v [array]self.__pages_array
pop.v.v local._page_data
pushloc.v local._page_data
pushi.e -9
pushenv [9]

:[8]
push.v builtin.__glyph_start
pop.v.v local._page_glyph_start
push.v builtin.__glyph_count
pushi.e 1
sub.i.v
pushloc.v local._page_glyph_start
add.v.v
pop.v.v local._page_glyph_end
push.l 0
conv.l.v
pushloc.v local._page_glyph_end
push.l 0
conv.l.v
pushloc.v local._page_glyph_start
pushloc.v local._vbuff_pos_grid
call.i ds_grid_get_min(argc=5)
pop.v.v builtin.__min_x
push.l 1
conv.l.v
pushloc.v local._page_glyph_end
push.l 1
conv.l.v
pushloc.v local._page_glyph_start
pushloc.v local._vbuff_pos_grid
call.i ds_grid_get_min(argc=5)
pop.v.v builtin.__min_y
push.l 2
conv.l.v
pushloc.v local._page_glyph_end
push.l 2
conv.l.v
pushloc.v local._page_glyph_start
pushloc.v local._vbuff_pos_grid
call.i ds_grid_get_max(argc=5)
pop.v.v builtin.__max_x
push.l 3
conv.l.v
pushloc.v local._page_glyph_end
push.l 3
conv.l.v
pushloc.v local._page_glyph_start
pushloc.v local._vbuff_pos_grid
call.i ds_grid_get_max(argc=5)
pop.v.v builtin.__max_y
push.v builtin.__min_x
pushloc.v local._model_min_x
call.i min(argc=2)
pop.v.v local._model_min_x
push.v builtin.__min_y
pushloc.v local._model_min_y
call.i min(argc=2)
pop.v.v local._model_min_y
push.v builtin.__max_x
pushloc.v local._model_max_x
call.i max(argc=2)
pop.v.v local._model_max_x
push.v builtin.__max_y
pushloc.v local._model_max_y
call.i max(argc=2)
pop.v.v local._model_max_y

:[9]
popenv [8]
push.v local._p
push.e 1
add.i.v
pop.v.v local._p
pushi.e 1
sub.i.i
dup.i 0
bt [7]

:[10]
popz.i
pushloc.v local._model_min_x
call.i is_infinity(argc=1)
conv.v.b
bf [12]

:[11]
pushi.e 0
conv.i.v
b [13]

:[12]
pushloc.v local._model_min_x

:[13]
pop.v.v builtin.__min_x
pushloc.v local._model_min_y
call.i is_infinity(argc=1)
conv.v.b
bf [15]

:[14]
pushi.e 0
conv.i.v
b [16]

:[15]
pushloc.v local._model_min_y

:[16]
pop.v.v builtin.__min_y
pushloc.v local._model_max_x
call.i is_infinity(argc=1)
conv.v.b
bf [18]

:[17]
pushi.e 0
conv.i.v
b [19]

:[18]
pushloc.v local._model_max_x

:[19]
pop.v.v builtin.__max_x
pushloc.v local._model_max_y
call.i is_infinity(argc=1)
conv.v.b
bf [21]

:[20]
pushi.e 0
conv.i.v
b [22]

:[21]
pushloc.v local._model_max_y

:[22]
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

:[23]
exit.i

:[24]
push.i [function]gml_Script___scribble_gen_9_build_vbuff_grids
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pop.v.v self.__scribble_gen_9_build_vbuff_grids
popz.v

:[end]