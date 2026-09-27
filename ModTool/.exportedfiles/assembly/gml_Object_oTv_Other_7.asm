:[0]
push.v builtin.screenState
push.l 16
cmp.l.v EQ
bf [2]

:[1]
pushi.e 0
pop.v.i builtin.image_speed
push.v builtin.sprite_index
call.i sprite_get_number(argc=1)
pushi.e 1
sub.i.v
pop.v.v builtin.image_index
push.v builtin.screenAfterTurnOn
pop.v.v builtin.screenStateNext
push.l 22
pop.v.l builtin.screenAfterTurnOn
b [end]

:[2]
push.v builtin.screenState
push.l 18
cmp.l.v EQ
bf [end]

:[3]
pushi.e 0
pop.v.i builtin.image_speed
push.v builtin.sprite_index
call.i sprite_get_number(argc=1)
pushi.e 1
sub.i.v
pop.v.v builtin.image_index
push.l 17
pop.v.l builtin.screenStateNext

:[end]