:[0]
pushref.i 28
call.i instance_number(argc=1)
pushi.e 1
cmp.i.v EQ
bf [end]

:[1]
pushglb.v global.waitingList
push.s "oGemDelete"@9630
conv.s.v
dup.v 1 8
dup.v 0
push.v stacktop.remove
callv.v 1
popz.v

:[end]