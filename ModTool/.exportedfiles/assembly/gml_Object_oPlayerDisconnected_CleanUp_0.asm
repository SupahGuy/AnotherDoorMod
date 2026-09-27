:[0]
pushglb.v global.waitingList
push.v builtin.id
dup.v 1 8
dup.v 0
push.v stacktop.remove
callv.v 1
popz.v
call.i gml_Script_g_clean_up(argc=0)
popz.v

:[end]