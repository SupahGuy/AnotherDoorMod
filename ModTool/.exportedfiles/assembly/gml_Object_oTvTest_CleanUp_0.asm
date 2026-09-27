:[0]
push.v builtin.vBuffFace
call.i vertex_delete_buffer(argc=1)
popz.v
push.v builtin.surfTv
call.i surface_free(argc=1)
popz.v

:[end]