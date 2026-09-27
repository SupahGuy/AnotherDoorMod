:[0]
push.v builtin.deleteTimer
dup.v 0 8
dup.v 0
push.v stacktop.is_finished
callv.v 0
conv.v.b
bf [end]

:[1]
call.i instance_destroy(argc=0)
popz.v

:[end]