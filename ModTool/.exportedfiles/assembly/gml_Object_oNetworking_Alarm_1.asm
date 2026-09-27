:[0]
pushglb.v global.networkingManager
dup.v 0 8
dup.v 0
push.v stacktop.ping
callv.v 0
popz.v
pushi.e 0
conv.i.v
call.i game_get_speed(argc=1)
pushi.e -6
pushi.e 1
pop.v.v [array]self.alarm

:[end]