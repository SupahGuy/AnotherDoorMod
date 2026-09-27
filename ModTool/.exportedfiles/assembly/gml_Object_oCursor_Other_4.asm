:[0]
pushbltn.v builtin.room
pushref.i 50331656
cmp.v.v EQ
bf [end]

:[1]
push.l 0
conv.l.v
call.i @@This@@(argc=0)
push.v builtin.set_sprite
callv.v 1
popz.v

:[end]