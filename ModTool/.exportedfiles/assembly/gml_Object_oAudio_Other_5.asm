:[0]
pushbltn.v builtin.room
pushref.i 50331656
cmp.v.v EQ
bf [end]

:[1]
pushi.e 0
conv.b.v
pushbltn.v builtin.undefined
call.i @@This@@(argc=0)
push.v builtin.fade_out
callv.v 2
popz.v

:[end]