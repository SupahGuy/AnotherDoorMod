:[0]
b [20]

> gml_Script___scribble_gen_11_set_padding_flags (locals=3, argc=0)
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
push.v builtin.__uses_halign_left
pop.v.v local._uses_halign_left
push.v builtin.__uses_halign_center
pop.v.v local._uses_halign_center
push.v builtin.__uses_halign_right
pop.v.v local._uses_halign_right

:[5]
popenv [4]
pushi.e 0
pop.v.b builtin.__pad_bbox_t
pushi.e 1
pop.v.b builtin.__pad_bbox_b
push.v builtin.__valign
pushi.e 0
cmp.i.v EQ
bf [7]

:[6]
pushi.e 0
pop.v.b builtin.__pad_bbox_t

:[7]
push.v builtin.__valign
pushi.e 2
cmp.i.v EQ
bf [9]

:[8]
pushi.e 0
pop.v.b builtin.__pad_bbox_b

:[9]
pushloc.v local._uses_halign_center
conv.v.b
bf [11]

:[10]
pushi.e 1
pop.v.b builtin.__pad_bbox_l
pushi.e 1
pop.v.b builtin.__pad_bbox_r
b [19]

:[11]
pushloc.v local._uses_halign_left
conv.v.b
bf [16]

:[12]
pushloc.v local._uses_halign_right
conv.v.b
bf [14]

:[13]
pushi.e 1
pop.v.b builtin.__pad_bbox_l
pushi.e 1
pop.v.b builtin.__pad_bbox_r
b [15]

:[14]
pushi.e 0
pop.v.b builtin.__pad_bbox_l
pushi.e 1
pop.v.b builtin.__pad_bbox_r

:[15]
b [19]

:[16]
pushloc.v local._uses_halign_right
conv.v.b
bf [18]

:[17]
pushi.e 1
pop.v.b builtin.__pad_bbox_l
pushi.e 0
pop.v.b builtin.__pad_bbox_r
b [19]

:[18]
pushi.e 0
pop.v.b builtin.__pad_bbox_l
pushi.e 1
pop.v.b builtin.__pad_bbox_r

:[19]
exit.i

:[20]
push.i [function]gml_Script___scribble_gen_11_set_padding_flags
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pop.v.v self.__scribble_gen_11_set_padding_flags
popz.v

:[end]