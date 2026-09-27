:[0]
pushglb.v global.playersManager
push.v builtin.number
dup.v 1 8
dup.v 0
push.v stacktop.set_character
callv.v 1
popz.v

:[end]