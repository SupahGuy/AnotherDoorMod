:[0]
call.i event_inherited(argc=0)
popz.v
call.i @@This@@(argc=0)
push.v builtin.is_pressed
callv.v 0
conv.v.b
bf [end]

:[1]
call.i @@This@@(argc=0)
push.v builtin.check
callv.v 0
popz.v

:[end]