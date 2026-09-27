:[0]
push.s "number"@5108
conv.s.v
push.v builtin.id
call.i variable_instance_exists(argc=2)
conv.v.b
not.b
bf [2]

:[1]
pushi.e 0
pop.v.i builtin.number

:[2]
push.s "close"@9457
pop.v.s builtin.state
push.v builtin.state
pop.v.v builtin.prevState
pushi.e 0
pop.v.i builtin.image_speed
pushi.e 3
pushbltn.v builtin.room_speed
mul.v.i
pop.v.v builtin.blinkDurationMin
pushi.e 9
pushbltn.v builtin.room_speed
mul.v.i
pop.v.v builtin.blinkDurationMax
pushi.e 0
pop.v.i builtin.blinkCounter
push.v builtin.blinkDurationMax
push.v builtin.blinkDurationMin
call.i irandom_range(argc=2)
pop.v.v builtin.nextBlink
pushi.e 0
pop.v.i builtin.pupileX
pushi.e 0
pop.v.i builtin.pupileY
pushi.e 0
pop.v.i builtin.pupileXTo
pushi.e 0
pop.v.i builtin.pupileYTo
push.v builtin.sprite_index
call.i sprite_get_width(argc=1)
pop.v.v builtin.eyeW
push.v builtin.sprite_index
call.i sprite_get_height(argc=1)
pop.v.v builtin.eyeH
pushi.e 4
pop.v.i builtin.pupileMaxX
push.d 4.5
pop.v.d builtin.pupileMaxY
pushi.e 8
pop.v.i builtin.pupileRad
pushbltn.v builtin.undefined
pop.v.v builtin.linkedCursor
pushref.i 11
pushi.e -9
pushenv [5]

:[3]
push.v builtin.number
push.v other.number
cmp.v.v EQ
bf [5]

:[4]
push.v builtin.id
pop.v.v other.linkedCursor

:[5]
popenv [3]

:[end]