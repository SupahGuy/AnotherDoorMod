; WARNING: Missing code locals, possibly due to unsupported bytecode version or a brand new code entry.

:[0]
push.v builtin.chainNoise
push.v builtin.chainWindInc
add.v.v
pop.v.v builtin.chainNoise
push.v builtin.chainNoise
call.i gml_Script_perlin_noise(argc=1)
pushi.e 100
conv.i.d
div.d.v
pop.v.v builtin.chainWind
push.d -0.2
push.v builtin.chainAngle
call.i dcos(argc=1)
mul.v.d
pop.v.v local._chainAngleAcceleration
push.v builtin.chainAngleVelocity
pushloc.v local._chainAngleAcceleration
push.v builtin.chainWind
add.v.v
add.v.v
pop.v.v builtin.chainAngleVelocity
push.v builtin.chainAngle
push.v builtin.chainAngleVelocity
add.v.v
pop.v.v builtin.chainAngle
push.v builtin.chainAngleVelocity
push.v builtin.chainResistance
mul.v.v
pop.v.v builtin.chainAngleVelocity
push.v builtin.distanceTraveled
push.v builtin.chainAngleVelocity
call.i abs(argc=1)
add.v.v
pop.v.v builtin.distanceTraveled
push.v builtin.distanceTraveled
push.v builtin.distanceToReachMax
cmp.v.v GT
bf [2]

:[1]
push.v builtin.chainAngleVelocity
call.i abs(argc=1)
push.d 0.3
cmp.d.v GT
b [3]

:[2]
push.e 0

:[3]
bf [6]

:[4]
pushi.e 0
pop.v.i builtin.distanceTraveled
pushref.i 33554455
pushref.i 33554454
pushref.i 33554453
pushref.i 33554452
pushref.i 33554451
pushref.i 33554450
call.i choose(argc=6)
pop.v.v local._sound
pushloc.v local._sound
call.i audio_is_playing(argc=1)
conv.v.b
not.b
bf [6]

:[5]
pushi.e 0
conv.b.v
pushi.e 1
conv.i.v
pushloc.v local._sound
call.i audio_play_sound(argc=3)
popz.v

:[6]
push.v builtin.chainStartX
push.v builtin.chainAngle
push.v builtin.chainLength
call.i lengthdir_x(argc=2)
add.v.v
pop.v.v builtin.chainEndX
push.v builtin.chainStartY
push.v builtin.chainAngle
push.v builtin.chainLength
call.i lengthdir_y(argc=2)
add.v.v
pop.v.v builtin.chainEndY
push.v builtin.chainStartY
push.v builtin.chainStartX
push.v builtin.chainEndY
push.v builtin.chainEndX
call.i point_direction(argc=4)
pop.v.v builtin.image_angle
push.v builtin.token
pushi.e -9
pushenv [8]

:[7]
push.v other.chainEndX
pop.v.v builtin.x
push.v other.chainEndY
pop.v.v builtin.y
push.v builtin.x
pop.v.v builtin.xDraw
push.v builtin.y
pop.v.v builtin.yDraw
push.v other.image_angle
pushi.e 90
sub.i.v
pop.v.v builtin.image_angle

:[8]
popenv [7]

:[end]