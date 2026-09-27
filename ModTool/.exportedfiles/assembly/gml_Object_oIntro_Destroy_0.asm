:[0]
pushglb.v global.emStamp
pushglb.v global.particlesSys
call.i part_emitter_destroy(argc=2)
popz.v

:[end]