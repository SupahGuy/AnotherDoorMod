:[0]
push.v builtin.x
pop.v.v builtin.xInit
push.v builtin.y
pop.v.v builtin.yInit
pushi.e 0
pop.v.i builtin.offsetCloverX
pushi.e 0
pop.v.i builtin.offsetCloverY
pushi.e 40
pop.v.i builtin.distanceMax
pushi.e 0
pop.v.i builtin.offsetMouseX
pushi.e 0
pop.v.i builtin.offsetMouseY
call.i part_system_create(argc=0)
pop.v.v builtin.particlesSystem
pushi.e 0
conv.b.v
push.v builtin.particlesSystem
call.i part_system_automatic_draw(argc=2)
popz.v
pushglb.v global.depthManager
push.s "clover"@5001
conv.s.v
dup.v 1 8
dup.v 0
push.v stacktop.get_depth
callv.v 1
push.v builtin.particlesSystem
call.i part_system_depth(argc=2)
popz.v
call.i part_type_create(argc=0)
pop.v.v builtin.particlesType
pushi.e 0
conv.i.v
push.v builtin.particlesType
call.i part_type_shape(argc=2)
popz.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
push.v builtin.particlesType
call.i part_type_size(argc=5)
popz.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
push.v builtin.particlesType
call.i part_type_scale(argc=3)
popz.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
push.v builtin.particlesType
call.i part_type_orientation(argc=6)
popz.v
pushglb.v global.color
pushi.e -9
push.v [stacktop]self.green2
pushglb.v global.color
pushi.e -9
push.v [stacktop]self.green1
pushglb.v global.color
pushi.e -9
push.v [stacktop]self.yellow1
push.v builtin.particlesType
call.i part_type_color3(argc=4)
popz.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
push.v builtin.particlesType
call.i part_type_alpha3(argc=4)
popz.v
pushi.e 0
conv.i.v
push.v builtin.particlesType
call.i part_type_blend(argc=2)
popz.v
pushi.e 48
conv.i.v
pushi.e 32
conv.i.v
push.v builtin.particlesType
call.i part_type_life(argc=3)
popz.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
push.d 0.75
conv.d.v
push.d 0.25
conv.d.v
push.v builtin.particlesType
call.i part_type_speed(argc=5)
popz.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 90
conv.i.v
pushi.e 90
conv.i.v
push.v builtin.particlesType
call.i part_type_direction(argc=5)
popz.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
push.v builtin.particlesType
call.i part_type_gravity(argc=3)
popz.v
push.v builtin.particlesSystem
call.i part_emitter_create(argc=1)
pop.v.v builtin.particlesEmmiter
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
push.v builtin.y
pushi.e 8
add.i.v
push.v builtin.y
pushi.e 8
sub.i.v
push.v builtin.x
pushi.e 8
add.i.v
push.v builtin.x
pushi.e 8
sub.i.v
push.v builtin.particlesEmmiter
push.v builtin.particlesSystem
call.i part_emitter_region(argc=8)
popz.v
push.l 4
conv.l.v
push.v builtin.particlesSystem
call.i gml_Script_add_to_clean_up(argc=2)
popz.v
push.v builtin.particlesSystem
push.l 5
conv.l.v
push.v builtin.particlesEmmiter
call.i gml_Script_add_to_clean_up(argc=3)
popz.v
push.l 6
conv.l.v
push.v builtin.particlesType
call.i gml_Script_add_to_clean_up(argc=2)
popz.v

:[end]