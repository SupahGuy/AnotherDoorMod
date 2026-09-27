:[0]
push.s "token"@4998
conv.s.v
push.v builtin.id
call.i variable_instance_exists(argc=2)
conv.v.b
not.b
bf [2]

:[1]
pushi.e -4
pop.v.i builtin.token

:[2]
push.s "chainNoise"@8821
conv.s.v
push.v builtin.id
call.i variable_instance_exists(argc=2)
conv.v.b
not.b
bf [4]

:[3]
pushi.e 1000
conv.i.v
call.i random(argc=1)
pop.v.v builtin.chainNoise

:[4]
push.v builtin.sprite_index
call.i sprite_get_height(argc=1)
pop.v.v builtin.chainLength
push.v builtin.x
pop.v.v builtin.chainStartX
push.v builtin.y
pop.v.v builtin.chainStartY
push.v builtin.x
pop.v.v builtin.chainEndX
push.v builtin.y
push.v builtin.chainLength
add.v.v
pop.v.v builtin.chainEndY
pushi.e 0
pop.v.i builtin.chainAngleVelocity
pushi.e -90
pop.v.i builtin.chainAngle
push.v builtin.chainStartY
push.v builtin.chainStartX
push.v builtin.chainEndY
push.v builtin.chainEndX
call.i point_direction(argc=4)
pop.v.v builtin.image_angle
push.d 0.995
conv.d.v
push.d 0.99
conv.d.v
call.i random_range(argc=2)
pop.v.v builtin.chainResistance
push.d 0.1
pop.v.d builtin.chainWindInc
push.v builtin.chainNoise
call.i gml_Script_perlin_noise(argc=1)
pop.v.v builtin.chainWind
pushi.e 0
pop.v.i builtin.distanceTraveled
pushi.e 30
conv.i.v
pushi.e 20
conv.i.v
call.i random_range(argc=2)
pop.v.v builtin.distanceToReachMax

:[end]