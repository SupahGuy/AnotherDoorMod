:[0]
b [6]

> gml_Script___scribble_class_generator_state (locals=0, argc=0)
:[1]
call.i @@SetStatic@@(argc=0)
isstaticok.e
bt [5]

:[2]
setstatic.e
b [4]

> gml_Script___Reset@anon@894@__scribble_class_generator_state@__scribble_class_generator_state (locals=0, argc=0)
:[3]
pushbltn.v builtin.undefined
pop.v.v builtin.__element
pushi.e 0
pop.v.i builtin.__glyph_count
pushi.e 0
pop.v.i builtin.__control_count
pushi.e 0
pop.v.i builtin.__word_count
pushi.e 0
pop.v.i builtin.__line_count
pushi.e 0
pop.v.i builtin.__line_height_min
pushi.e 0
pop.v.i builtin.__line_height_max
pushi.e 0
pop.v.i builtin.__model_max_width
pushi.e 0
pop.v.i builtin.__model_max_height
pushbltn.v builtin.undefined
pop.v.v builtin.__overall_bidi
pushi.e 0
pop.v.b builtin.__uses_halign_left
pushi.e 0
pop.v.b builtin.__uses_halign_center
pushi.e 0
pop.v.b builtin.__uses_halign_right
pushbltn.v builtin.undefined
pop.v.v builtin.__bezier_lengths_array
pushi.e 0
pop.v.i builtin.__model_max_width
pushi.e 0
pop.v.i builtin.__model_max_height
pushi.e 0
pop.v.i builtin.__line_height_min
pushi.e 0
pop.v.i builtin.__line_height_max
pushi.e 0
pop.v.i builtin.__line_spacing_add
pushi.e 0
pop.v.i builtin.__line_spacing_multiply
push.l 4
pop.v.l builtin.__overall_bidi
pushi.e 0
pop.v.i builtin.__glyph_count
pushi.e 0
pop.v.i builtin.__control_count
exit.i

:[4]
push.i [function]gml_Script___Reset@anon@894@__scribble_class_generator_state@__scribble_class_generator_state
conv.i.v
pushi.e -16
conv.i.v
call.i method(argc=2)
pop.v.v static.__Reset

:[5]
push.l 20
conv.l.v
pushi.e 1000
conv.i.v
call.i ds_grid_create(argc=2)
pop.v.v builtin.__glyph_grid
push.l 2
conv.l.v
pushi.e 1000
conv.i.v
call.i ds_grid_create(argc=2)
pop.v.v builtin.__control_grid
push.l 6
conv.l.v
pushi.e 1000
conv.i.v
call.i ds_grid_create(argc=2)
pop.v.v builtin.__word_grid
push.l 10
conv.l.v
pushi.e 1000
conv.i.v
call.i ds_grid_create(argc=2)
pop.v.v builtin.__line_grid
push.l 3
conv.l.v
pushi.e 1000
conv.i.v
call.i ds_grid_create(argc=2)
pop.v.v builtin.__stretch_grid
push.l 6
conv.l.v
pushi.e 1000
conv.i.v
call.i ds_grid_create(argc=2)
pop.v.v builtin.__temp_grid
push.l 20
conv.l.v
pushi.e 1000
conv.i.v
call.i ds_grid_create(argc=2)
pop.v.v builtin.__temp2_grid
push.l 4
conv.l.v
pushi.e 1000
conv.i.v
call.i ds_grid_create(argc=2)
pop.v.v builtin.__vbuff_pos_grid
call.i @@This@@(argc=0)
push.v static.__Reset
callv.v 0
popz.v
exit.i

:[6]
push.i [function]gml_Script___scribble_class_generator_state
conv.i.v
call.i @@NullObject@@(argc=0)
call.i method(argc=2)
dup.v 0
pop.v.v self.__scribble_class_generator_state
popz.v

:[end]