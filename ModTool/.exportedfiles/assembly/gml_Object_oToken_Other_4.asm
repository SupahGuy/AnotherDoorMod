:[0]
pushbltn.v builtin.room
pushref.i 50331652
cmp.v.v EQ
bt [2]

:[1]
pushbltn.v builtin.room
pushref.i 50331651
cmp.v.v EQ
b [3]

:[2]
push.e 1

:[3]
bf [5]

:[4]
pushi.e 1
conv.b.v
call.i @@This@@(argc=0)
push.v builtin.set_disabled
callv.v 1
popz.v
b [end]

:[5]
pushi.e 0
conv.b.v
call.i @@This@@(argc=0)
push.v builtin.set_disabled
callv.v 1
popz.v

:[end]