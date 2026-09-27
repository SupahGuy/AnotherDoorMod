:[0]
call.i event_inherited(argc=0)
popz.v
push.v builtin.clipMaskSurface
call.i surface_exists(argc=1)
conv.v.b
bf [end]

:[1]
push.v builtin.clipMaskSurface
call.i surface_free(argc=1)
popz.v

:[end]