:[0]
push.v builtin.btnClose
call.i instance_exists(argc=1)
conv.v.b
bf [end]

:[1]
push.v builtin.btnClose
dup.v 0 8
dup.v 0
push.v stacktop.is_released
callv.v 0
conv.v.b
bf [end]

:[2]
push.v builtin.btnClose
call.i instance_destroy(argc=1)
popz.v
call.i instance_destroy(argc=0)
popz.v
call.i @@This@@(argc=0)
push.v builtin.callbackOnceDestroy
callv.v 0
popz.v

:[end]