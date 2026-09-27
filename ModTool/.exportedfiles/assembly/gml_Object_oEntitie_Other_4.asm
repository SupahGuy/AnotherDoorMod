:[0]
pushbltn.v builtin.room
pushref.i 50331655
cmp.v.v EQ
bf [4]

:[1]
pushref.i 19
pushi.e -9
pushenv [3]

:[2]
push.v builtin.token
pushi.e 0
conv.b.v
dup.v 1 8
dup.v 0
push.v stacktop.set_disabled
callv.v 1
popz.v

:[3]
popenv [2]

:[4]
pushbltn.v builtin.room
pushref.i 50331649
cmp.v.v EQ
bf [end]

:[5]
pushref.i 19
pushi.e -9
pushenv [7]

:[6]
push.v builtin.token
pushi.e 1
conv.b.v
dup.v 1 8
dup.v 0
push.v stacktop.set_disabled
callv.v 1
popz.v

:[7]
popenv [6]

:[end]