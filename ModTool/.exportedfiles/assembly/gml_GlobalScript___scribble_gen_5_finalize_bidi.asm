:[0]
b [30]

> gml_Script___scribble_gen_5_finalize_bidi (locals=8, argc=0)
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
push.v builtin.__has_r2l
conv.v.b
not.b
bf [5]

:[4]
exit.i

:[5]
push.v static._generator_state
pushi.e -9
pushenv [7]

:[6]
push.v builtin.__word_grid
pop.v.v local._word_grid
push.v builtin.__word_count
pop.v.v local._word_count
push.v builtin.__overall_bidi
pop.v.v local._overall_bidi

:[7]
popenv [6]
pushi.e 0
pop.v.i local._i
pushloc.v local._word_count
conv.v.i
dup.i 0
push.i 0
cmp.i.i LTE
bt [29]

:[8]
push.l 0
conv.l.v
pushloc.v local._i
pushloc.v local._word_grid
call.i ds_grid_get(argc=3)
pop.v.v local._bidi
pushloc.v local._bidi
push.l 1
cmp.l.v LTE
bf [28]

:[9]
pushloc.v local._i
pushi.e 0
cmp.i.v GT
bf [11]

:[10]
push.l 1
conv.l.v
pushloc.v local._i
pushi.e 1
sub.i.v
pushloc.v local._word_grid
call.i ds_grid_get(argc=3)
b [12]

:[11]
push.l 1
conv.l.v

:[12]
pop.v.v local._prev_bidi
pushloc.v local._i
pushloc.v local._word_count
pushi.e 1
sub.i.v
cmp.v.v LT
bf [14]

:[13]
push.l 1
conv.l.v
pushloc.v local._i
pushi.e 1
add.i.v
pushloc.v local._word_grid
call.i ds_grid_get(argc=3)
b [15]

:[14]
push.l 1
conv.l.v

:[15]
pop.v.v local._next_bidi
pushloc.v local._prev_bidi
push.l 1
cmp.l.v LTE
bf [17]

:[16]
pushloc.v local._next_bidi
pop.v.v local._prev_bidi

:[17]
pushloc.v local._next_bidi
push.l 1
cmp.l.v LTE
bf [19]

:[18]
pushloc.v local._prev_bidi
pop.v.v local._next_bidi

:[19]
pushloc.v local._prev_bidi
pushloc.v local._overall_bidi
cmp.v.v EQ
bt [21]

:[20]
pushloc.v local._next_bidi
pushloc.v local._overall_bidi
cmp.v.v EQ
b [22]

:[21]
push.e 1

:[22]
bf [24]

:[23]
pushloc.v local._overall_bidi
b [25]

:[24]
pushloc.v local._prev_bidi

:[25]
pop.v.v local._new_bidi
pushloc.v local._new_bidi
push.l 1
cmp.l.v LTE
bf [27]

:[26]
push.l 4
pop.v.l local._new_bidi

:[27]
pushloc.v local._new_bidi
push.l 1
conv.l.v
pushloc.v local._i
pushloc.v local._word_grid
call.i ds_grid_set(argc=4)
popz.v
pushloc.v local._new_bidi
pop.v.v local._bidi

:[28]
push.v local._i
push.e 1
add.i.v
pop.v.v local._i
pushi.e 1
sub.i.i
dup.i 0
bt [8]

:[29]
popz.i
exit.i

:[30]
push.i [function]gml_Script___scribble_gen_5_finalize_bidi
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pop.v.v self.__scribble_gen_5_finalize_bidi
popz.v

:[end]