:[0]
push.v builtin.vBuffFace
call.i vertex_delete_buffer(argc=1)
popz.v
push.v builtin.surfTv
call.i surface_exists(argc=1)
conv.v.b
bf [2]

:[1]
push.v builtin.surfTv
call.i surface_free(argc=1)
popz.v

:[2]
push.v builtin.surfaceCrt
call.i surface_exists(argc=1)
conv.v.b
bf [end]

:[3]
push.v builtin.surfaceCrt
call.i surface_free(argc=1)
popz.v

:[end]