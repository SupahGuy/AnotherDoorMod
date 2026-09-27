; WARNING: Missing code locals, possibly due to unsupported bytecode version or a brand new code entry.

:[0]
push.v builtin.pupileRad
pushi.e 4
mul.i.v
push.v builtin.y
push.v builtin.eyeH
pushi.e 2
conv.i.d
div.d.v
add.v.v
push.v builtin.x
push.v builtin.eyeW
pushi.e 2
conv.i.d
div.d.v
add.v.v
push.v builtin.linkedCursor
pushi.e -9
push.v [stacktop]self.y
push.v builtin.linkedCursor
pushi.e -9
push.v [stacktop]self.x
call.i point_in_circle(argc=5)
pop.v.v local._collide
push.v builtin.linkedCursor
pushi.e -9
push.v [stacktop]self.y
push.v builtin.linkedCursor
pushi.e -9
push.v [stacktop]self.x
push.v builtin.y
push.v builtin.eyeH
pushi.e 2
conv.i.d
div.d.v
add.v.v
push.v builtin.x
push.v builtin.eyeW
pushi.e 2
conv.i.d
div.d.v
add.v.v
call.i point_direction(argc=4)
pop.v.v local._dir
pushloc.v local._collide
conv.v.b
bf [2]

:[1]
pushloc.v local._dir
push.v builtin.pupileMaxX
call.i lengthdir_x(argc=2)
neg.v
pop.v.v builtin.pupileXTo
pushloc.v local._dir
push.v builtin.pupileMaxY
call.i lengthdir_y(argc=2)
neg.v
pop.v.v builtin.pupileYTo
b [3]

:[2]
pushloc.v local._dir
push.v builtin.pupileMaxX
call.i lengthdir_x(argc=2)
pop.v.v builtin.pupileXTo
pushloc.v local._dir
push.v builtin.pupileMaxY
call.i lengthdir_y(argc=2)
pop.v.v builtin.pupileYTo

:[3]
push.d 0.1
conv.d.v
push.v builtin.pupileXTo
push.v builtin.pupileX
call.i lerp(argc=3)
pop.v.v builtin.pupileX
push.d 0.1
conv.d.v
push.v builtin.pupileYTo
push.v builtin.pupileY
call.i lerp(argc=3)
pop.v.v builtin.pupileY
push.v builtin.state
push.s "open"@9474
cmp.s.v EQ
bf [5]

:[4]
push.v builtin.nextBlink
push.v builtin.blinkCounter
cmp.v.v LTE
b [6]

:[5]
push.e 0

:[6]
bf [8]

:[7]
push.v builtin.blinkDurationMax
push.v builtin.blinkDurationMin
call.i irandom_range(argc=2)
pop.v.v builtin.nextBlink
pushi.e 0
pop.v.i builtin.blinkCounter
push.s "blinkClose"@9475
pop.v.s builtin.state

:[8]
push.v builtin.state
push.s "open"@9474
cmp.s.v EQ
bf [end]

:[9]
push.v builtin.blinkCounter
push.e 1
add.i.v
pop.v.v builtin.blinkCounter

:[end]