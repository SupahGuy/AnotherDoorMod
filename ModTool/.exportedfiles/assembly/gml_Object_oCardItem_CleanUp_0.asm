:[0]
call.i event_inherited(argc=0)
popz.v
push.v builtin.theClover
pushi.e -4
cmp.i.v NEQ
bf [2]

:[1]
push.v builtin.theClover
call.i instance_destroy(argc=1)
popz.v

:[2]
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