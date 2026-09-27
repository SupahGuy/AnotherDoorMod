:[0]
push.v builtin.owner
pushbltn.v builtin.undefined
cmp.v.v NEQ
bf [3]

:[1]
push.v builtin.owner
call.i instance_exists(argc=1)
conv.v.b
bf [3]

:[2]
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
push.v builtin.owner
pushi.e -9
push.v [stacktop]self.fightText
call.i array_delete(argc=3)
popz.v

:[3]
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