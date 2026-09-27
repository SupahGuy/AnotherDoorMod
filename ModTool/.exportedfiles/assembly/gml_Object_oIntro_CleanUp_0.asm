:[0]
call.i @@This@@(argc=0)
push.v builtin._stopParticles
callv.v 0
popz.v
call.i gml_Script_g_clean_up(argc=0)
popz.v

:[end]