:[0]
push.v builtin.state
push.l 1
cmp.l.v EQ
bf [end]

:[1]
pushi.e 0
pop.v.i builtin.image_speed
pushi.e 0
pop.v.i builtin.image_index
push.l 2
pop.v.l builtin.stateNext

:[end]