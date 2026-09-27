; WARNING: Missing code locals, possibly due to unsupported bytecode version or a brand new code entry.

:[0]
pushref.i 14
pushi.e -9
pushenv [2]

:[1]
call.i @@This@@(argc=0)
push.v builtin.check_if_destroyable
callv.v 0
popz.v

:[2]
popenv [1]
push.v builtin.btnWannaLeave
call.i instance_destroy(argc=1)
popz.v
pushglb.v global.isHost
conv.v.b
bf [end]

:[3]
pushglb.v global.playersCount
pushi.e 1
sub.i.v
pop.v.v local._p

:[4]
pushloc.v local._p
pushi.e 0
cmp.i.v GTE
bf [end]

:[5]
pushglb.v global.playersManager
pushloc.v local._p
dup.v 1 8
dup.v 0
push.v stacktop.is_connected
callv.v 1
conv.v.b
not.b
bf [7]

:[6]
pushglb.v global.playersManager
pushloc.v local._p
dup.v 1 8
dup.v 0
push.v stacktop.remove
callv.v 1
popz.v

:[7]
push.v local._p
push.e 1
sub.i.v
pop.v.v local._p
b [4]

:[end]