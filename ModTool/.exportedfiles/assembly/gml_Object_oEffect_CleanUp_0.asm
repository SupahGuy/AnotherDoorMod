:[0]
call.i event_inherited(argc=0)
popz.v
pushglb.v global.waitingList
push.v builtin.id
dup.v 1 8
dup.v 0
push.v stacktop.remove
callv.v 1
popz.v

:[end]