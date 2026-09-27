:[0]
call.i event_inherited(argc=0)
popz.v
push.v builtin.wiggle
dup.v 0 8
dup.v 0
push.v stacktop.step
callv.v 0
popz.v

:[end]