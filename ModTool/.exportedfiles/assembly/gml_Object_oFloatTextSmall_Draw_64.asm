:[0]
push.v builtin.theText
push.v builtin.y
pushglb.v global.zoom
mul.v.v
push.v builtin.x
pushglb.v global.zoom
mul.v.v
dup.v 2 8
dup.v 0
push.v stacktop.draw
callv.v 2
popz.v

:[end]