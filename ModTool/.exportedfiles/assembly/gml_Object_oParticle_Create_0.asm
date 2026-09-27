:[0]
pushglb.v global.depthManager
push.s "uiParticles"@5002
conv.s.v
dup.v 1 8
dup.v 0
push.v stacktop.get_depth
callv.v 1
pop.v.v builtin.depth
call.i @@This@@(argc=0)
pop.v.v global.particles
call.i part_system_create(argc=0)
pop.v.v global.particlesSys
pushglb.v global.particlesSys
call.i gml_Script_add_to_clean_up(argc=1)
popz.v
pushi.e 0
conv.b.v
pushglb.v global.particlesSys
call.i part_system_automatic_draw(argc=2)
popz.v
pushglb.v global.depthManager
push.s "uiParticles"@5002
conv.s.v
dup.v 1 8
dup.v 0
push.v stacktop.get_depth
callv.v 1
pushglb.v global.particlesSys
call.i part_system_depth(argc=2)
popz.v
call.i part_type_create(argc=0)
pop.v.v builtin.partStamp
push.l 6
conv.l.v
push.v builtin.partStamp
call.i gml_Script_add_to_clean_up(argc=2)
popz.v
pushi.e 0
conv.b.v
pushi.e 1
conv.b.v
pushi.e 1
conv.b.v
pushref.i 16777830
push.v builtin.partStamp
call.i part_type_sprite(argc=5)
popz.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
push.v builtin.partStamp
call.i part_type_size(argc=5)
popz.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
push.v builtin.partStamp
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
push.v builtin.partStamp
call.i part_type_orientation(argc=6)
popz.v
pushi.e 1
conv.i.v
push.v builtin.partStamp
call.i part_type_alpha1(argc=2)
popz.v
pushi.e 0
conv.i.v
push.v builtin.partStamp
call.i part_type_blend(argc=2)
popz.v
pushi.e 15
conv.i.v
pushi.e 10
conv.i.v
push.v builtin.partStamp
call.i part_type_life(argc=3)
popz.v
pushi.e 0
conv.i.v
push.d -0.15
conv.d.v
pushi.e 2
conv.i.v
pushi.e 1
conv.i.v
push.v builtin.partStamp
call.i part_type_speed(argc=5)
popz.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
push.v builtin.partStamp
call.i part_type_direction(argc=5)
popz.v
pushi.e 270
conv.i.v
pushi.e 0
conv.i.v
push.v builtin.partStamp
call.i part_type_gravity(argc=3)
popz.v
call.i part_type_create(argc=0)
pop.v.v builtin.ptGemAdd
push.l 6
conv.l.v
push.v builtin.ptGemAdd
call.i gml_Script_add_to_clean_up(argc=2)
popz.v
pushi.e 0
conv.i.v
push.v builtin.ptGemAdd
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
push.v builtin.ptGemAdd
call.i part_type_size(argc=5)
popz.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
push.v builtin.ptGemAdd
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
push.v builtin.ptGemAdd
call.i part_type_orientation(argc=6)
popz.v
pushglb.v global.color
pushi.e -9
push.v [stacktop]self.grey1
pushglb.v global.color
pushi.e -9
push.v [stacktop]self.grey1
pushglb.v global.color
pushi.e -9
push.v [stacktop]self.grey1
push.v builtin.ptGemAdd
call.i part_type_color3(argc=4)
popz.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
push.v builtin.ptGemAdd
call.i part_type_alpha2(argc=3)
popz.v
pushi.e 0
conv.i.v
push.v builtin.ptGemAdd
call.i part_type_blend(argc=2)
popz.v
pushi.e 50
conv.i.v
pushi.e 10
conv.i.v
push.v builtin.ptGemAdd
call.i part_type_life(argc=3)
popz.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
push.d 0.1
conv.d.v
push.d 0.01
conv.d.v
push.v builtin.ptGemAdd
call.i part_type_speed(argc=5)
popz.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
pushi.e 360
conv.i.v
pushi.e 0
conv.i.v
push.v builtin.ptGemAdd
call.i part_type_direction(argc=5)
popz.v
pushi.e 270
conv.i.v
pushi.e 0
conv.i.v
push.v builtin.ptGemAdd
call.i part_type_gravity(argc=3)
popz.v
call.i part_type_create(argc=0)
pop.v.v builtin.ptGem
push.l 6
conv.l.v
push.v builtin.ptGem
call.i gml_Script_add_to_clean_up(argc=2)
popz.v
pushi.e 0
conv.i.v
push.v builtin.ptGem
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
push.v builtin.ptGem
call.i part_type_size(argc=5)
popz.v
pushi.e 4
conv.i.v
pushi.e 1
conv.i.v
push.v builtin.ptGem
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
push.v builtin.ptGem
call.i part_type_orientation(argc=6)
popz.v
pushglb.v global.color
pushi.e -9
push.v [stacktop]self.yellow1
push.i 16777215
conv.i.v
push.i 16777215
conv.i.v
push.v builtin.ptGem
call.i part_type_color3(argc=4)
popz.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
push.v builtin.ptGem
call.i part_type_alpha3(argc=4)
popz.v
pushi.e 0
conv.i.v
push.v builtin.ptGem
call.i part_type_blend(argc=2)
popz.v
pushi.e 20
conv.i.v
pushi.e 10
conv.i.v
push.v builtin.ptGem
call.i part_type_life(argc=3)
popz.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
push.d 1.2
conv.d.v
push.d 0.5
conv.d.v
push.v builtin.ptGem
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
push.v builtin.ptGem
call.i part_type_direction(argc=5)
popz.v
pushi.e 90
conv.i.v
pushi.e 0
conv.i.v
push.v builtin.ptGem
call.i part_type_gravity(argc=3)
popz.v
call.i part_type_create(argc=0)
pop.v.v builtin.ptGemDissolve
push.l 6
conv.l.v
push.v builtin.ptGemDissolve
call.i gml_Script_add_to_clean_up(argc=2)
popz.v
pushi.e 0
conv.i.v
push.v builtin.ptGemDissolve
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
push.v builtin.ptGemDissolve
call.i part_type_size(argc=5)
popz.v
pushi.e 2
conv.i.v
pushi.e 1
conv.i.v
push.v builtin.ptGemDissolve
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
push.v builtin.ptGemDissolve
call.i part_type_orientation(argc=6)
popz.v
pushglb.v global.color
pushi.e -9
push.v [stacktop]self.yellow1
pushglb.v global.color
pushi.e -9
push.v [stacktop]self.yellow1
pushglb.v global.color
pushi.e -9
push.v [stacktop]self.yellow1
push.v builtin.ptGemDissolve
call.i part_type_color3(argc=4)
popz.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
push.v builtin.ptGemDissolve
call.i part_type_alpha3(argc=4)
popz.v
pushi.e 0
conv.i.v
push.v builtin.ptGemDissolve
call.i part_type_blend(argc=2)
popz.v
pushi.e 30
conv.i.v
pushi.e 15
conv.i.v
push.v builtin.ptGemDissolve
call.i part_type_life(argc=3)
popz.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
push.d 0.4
conv.d.v
push.d 0.1
conv.d.v
push.v builtin.ptGemDissolve
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
push.v builtin.ptGemDissolve
call.i part_type_direction(argc=5)
popz.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
push.v builtin.ptGemDissolve
call.i part_type_gravity(argc=3)
popz.v
push.v builtin.ptGemDissolve
pushi.e -4
conv.i.v
push.v builtin.ptGem
call.i part_type_step(argc=3)
popz.v
call.i part_type_create(argc=0)
pop.v.v builtin.ptGemDeath
push.l 6
conv.l.v
push.v builtin.ptGemDeath
call.i gml_Script_add_to_clean_up(argc=2)
popz.v
pushi.e 0
conv.i.v
push.v builtin.ptGemDeath
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
push.v builtin.ptGemDeath
call.i part_type_size(argc=5)
popz.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
push.v builtin.ptGemDeath
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
push.v builtin.ptGemDeath
call.i part_type_orientation(argc=6)
popz.v
pushglb.v global.color
pushi.e -9
push.v [stacktop]self.blue1
pushglb.v global.color
pushi.e -9
push.v [stacktop]self.blue1
pushglb.v global.color
pushi.e -9
push.v [stacktop]self.blue1
push.v builtin.ptGemDeath
call.i part_type_color3(argc=4)
popz.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
push.v builtin.ptGemDeath
call.i part_type_alpha3(argc=4)
popz.v
pushi.e 0
conv.i.v
push.v builtin.ptGemDeath
call.i part_type_blend(argc=2)
popz.v
pushi.e 40
conv.i.v
pushi.e 15
conv.i.v
push.v builtin.ptGemDeath
call.i part_type_life(argc=3)
popz.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
push.d 0.2
conv.d.v
push.d 0.1
conv.d.v
push.v builtin.ptGemDeath
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
push.v builtin.ptGemDeath
call.i part_type_direction(argc=5)
popz.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
push.v builtin.ptGemDeath
call.i part_type_gravity(argc=3)
popz.v
push.v builtin.ptGemDeath
pushi.e -2
conv.i.v
push.v builtin.ptGemDissolve
call.i part_type_death(argc=3)
popz.v
call.i part_type_create(argc=0)
pop.v.v builtin.ptGemBreak
push.l 6
conv.l.v
push.v builtin.ptGemBreak
call.i gml_Script_add_to_clean_up(argc=2)
popz.v
pushi.e 0
conv.i.v
push.v builtin.ptGemBreak
call.i part_type_shape(argc=2)
popz.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 3
conv.i.v
pushi.e 1
conv.i.v
push.v builtin.ptGemBreak
call.i part_type_size(argc=5)
popz.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
push.v builtin.ptGemBreak
call.i part_type_scale(argc=3)
popz.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 45
conv.i.v
pushi.e 45
conv.i.v
push.v builtin.ptGemBreak
call.i part_type_orientation(argc=6)
popz.v
pushglb.v global.color
pushi.e -9
push.v [stacktop]self.grey1
pushglb.v global.color
pushi.e -9
push.v [stacktop]self.grey1
pushglb.v global.color
pushi.e -9
push.v [stacktop]self.grey1
push.v builtin.ptGemBreak
call.i part_type_color3(argc=4)
popz.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
push.v builtin.ptGemBreak
call.i part_type_alpha3(argc=4)
popz.v
pushi.e 0
conv.i.v
push.v builtin.ptGemBreak
call.i part_type_blend(argc=2)
popz.v
pushi.e 60
conv.i.v
pushi.e 40
conv.i.v
push.v builtin.ptGemBreak
call.i part_type_life(argc=3)
popz.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 4
conv.i.v
pushi.e 2
conv.i.v
push.v builtin.ptGemBreak
call.i part_type_speed(argc=5)
popz.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 110
conv.i.v
pushi.e 70
conv.i.v
push.v builtin.ptGemBreak
call.i part_type_direction(argc=5)
popz.v
pushi.e 270
conv.i.v
push.d 0.2
conv.d.v
push.v builtin.ptGemBreak
call.i part_type_gravity(argc=3)
popz.v
call.i part_type_create(argc=0)
pop.v.v builtin.ptHit
push.l 6
conv.l.v
push.v builtin.ptHit
call.i gml_Script_add_to_clean_up(argc=2)
popz.v
pushi.e 0
conv.i.v
push.v builtin.ptHit
call.i part_type_shape(argc=2)
popz.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 3
conv.i.v
pushi.e 1
conv.i.v
push.v builtin.ptHit
call.i part_type_size(argc=5)
popz.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
push.v builtin.ptHit
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
push.v builtin.ptHit
call.i part_type_orientation(argc=6)
popz.v
pushglb.v global.color
pushi.e -9
push.v [stacktop]self.grey1
pushglb.v global.color
pushi.e -9
push.v [stacktop]self.grey1
pushglb.v global.color
pushi.e -9
push.v [stacktop]self.grey1
push.v builtin.ptHit
call.i part_type_color3(argc=4)
popz.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
push.v builtin.ptHit
call.i part_type_alpha3(argc=4)
popz.v
pushi.e 0
conv.i.v
push.v builtin.ptHit
call.i part_type_blend(argc=2)
popz.v
pushi.e 20
conv.i.v
pushi.e 10
conv.i.v
push.v builtin.ptHit
call.i part_type_life(argc=3)
popz.v
pushi.e 0
conv.i.v
push.d -0.2
conv.d.v
pushi.e 6
conv.i.v
pushi.e 3
conv.i.v
push.v builtin.ptHit
call.i part_type_speed(argc=5)
popz.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 360
conv.i.v
pushi.e 0
conv.i.v
push.v builtin.ptHit
call.i part_type_direction(argc=5)
popz.v
pushi.e 270
conv.i.v
push.d 0.15
conv.d.v
push.v builtin.ptHit
call.i part_type_gravity(argc=3)
popz.v
call.i part_type_create(argc=0)
pop.v.v builtin.ptBuyToken
push.l 6
conv.l.v
push.v builtin.ptBuyToken
call.i gml_Script_add_to_clean_up(argc=2)
popz.v
pushi.e 0
conv.i.v
push.v builtin.ptBuyToken
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
push.v builtin.ptBuyToken
call.i part_type_size(argc=5)
popz.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
push.v builtin.ptBuyToken
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
push.v builtin.ptBuyToken
call.i part_type_orientation(argc=6)
popz.v
pushglb.v global.color
pushi.e -9
push.v [stacktop]self.blue2
pushglb.v global.color
pushi.e -9
push.v [stacktop]self.blue2
pushglb.v global.color
pushi.e -9
push.v [stacktop]self.blue1
push.v builtin.ptBuyToken
call.i part_type_color3(argc=4)
popz.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
push.v builtin.ptBuyToken
call.i part_type_alpha3(argc=4)
popz.v
pushi.e 0
conv.i.v
push.v builtin.ptBuyToken
call.i part_type_blend(argc=2)
popz.v
pushi.e 48
conv.i.v
pushi.e 24
conv.i.v
push.v builtin.ptBuyToken
call.i part_type_life(argc=3)
popz.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
push.d 0.5
conv.d.v
push.d 0.1
conv.d.v
push.v builtin.ptBuyToken
call.i part_type_speed(argc=5)
popz.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 360
conv.i.v
pushi.e 0
conv.i.v
push.v builtin.ptBuyToken
call.i part_type_direction(argc=5)
popz.v
pushi.e 90
conv.i.v
pushi.e 0
conv.i.v
push.v builtin.ptBuyToken
call.i part_type_gravity(argc=3)
popz.v
call.i part_type_create(argc=0)
pop.v.v builtin.ptPaneBottom
push.l 6
conv.l.v
push.v builtin.ptPaneBottom
call.i gml_Script_add_to_clean_up(argc=2)
popz.v
pushi.e 0
conv.b.v
pushi.e 0
conv.b.v
pushi.e 0
conv.b.v
pushref.i 16777819
push.v builtin.ptPaneBottom
call.i part_type_sprite(argc=5)
popz.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
push.v builtin.ptPaneBottom
call.i part_type_size(argc=5)
popz.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
push.v builtin.ptPaneBottom
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
push.v builtin.ptPaneBottom
call.i part_type_orientation(argc=6)
popz.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
push.v builtin.ptPaneBottom
call.i part_type_alpha3(argc=4)
popz.v
pushi.e 1
conv.i.v
push.v builtin.ptPaneBottom
call.i part_type_blend(argc=2)
popz.v
pushi.e 20
conv.i.v
pushi.e 10
conv.i.v
push.v builtin.ptPaneBottom
call.i part_type_life(argc=3)
popz.v
pushi.e 0
conv.i.v
push.d -0.3
conv.d.v
pushi.e 5
conv.i.v
pushi.e 3
conv.i.v
push.v builtin.ptPaneBottom
call.i part_type_speed(argc=5)
popz.v
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
pushi.e 285
conv.i.v
pushi.e 255
conv.i.v
push.v builtin.ptPaneBottom
call.i part_type_direction(argc=5)
popz.v
call.i part_type_create(argc=0)
pop.v.v builtin.ptPaneTop
push.l 6
conv.l.v
push.v builtin.ptPaneTop
call.i gml_Script_add_to_clean_up(argc=2)
popz.v
pushi.e 0
conv.b.v
pushi.e 0
conv.b.v
pushi.e 0
conv.b.v
pushref.i 16777819
push.v builtin.ptPaneTop
call.i part_type_sprite(argc=5)
popz.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
push.v builtin.ptPaneTop
call.i part_type_size(argc=5)
popz.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
push.v builtin.ptPaneTop
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
push.v builtin.ptPaneTop
call.i part_type_orientation(argc=6)
popz.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
push.v builtin.ptPaneTop
call.i part_type_alpha3(argc=4)
popz.v
pushi.e 1
conv.i.v
push.v builtin.ptPaneTop
call.i part_type_blend(argc=2)
popz.v
pushi.e 20
conv.i.v
pushi.e 10
conv.i.v
push.v builtin.ptPaneTop
call.i part_type_life(argc=3)
popz.v
pushi.e 0
conv.i.v
push.d -0.3
conv.d.v
pushi.e 5
conv.i.v
pushi.e 3
conv.i.v
push.v builtin.ptPaneTop
call.i part_type_speed(argc=5)
popz.v
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
pushi.e 105
conv.i.v
pushi.e 75
conv.i.v
push.v builtin.ptPaneTop
call.i part_type_direction(argc=5)
popz.v
call.i part_type_create(argc=0)
pop.v.v builtin.ptSparkBig
push.l 6
conv.l.v
push.v builtin.ptSparkBig
call.i gml_Script_add_to_clean_up(argc=2)
popz.v
pushi.e 0
conv.b.v
pushi.e 0
conv.b.v
pushi.e 0
conv.b.v
pushref.i 16777820
push.v builtin.ptSparkBig
call.i part_type_sprite(argc=5)
popz.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
pushi.e 1
conv.i.v
push.v builtin.ptSparkBig
call.i part_type_size(argc=5)
popz.v
push.d 0.3
conv.d.v
push.v builtin.ptSparkBig
call.i part_type_alpha1(argc=2)
popz.v
pushi.e 1
conv.i.v
push.v builtin.ptSparkBig
call.i part_type_blend(argc=2)
popz.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
push.v builtin.ptSparkBig
call.i part_type_life(argc=3)
popz.v
call.i part_type_create(argc=0)
pop.v.v builtin.ptSmokeTop
push.l 6
conv.l.v
push.v builtin.ptSmokeTop
call.i gml_Script_add_to_clean_up(argc=2)
popz.v
pushi.e 0
conv.i.v
push.v builtin.ptSmokeTop
call.i part_type_shape(argc=2)
popz.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
pushi.e 1
conv.i.v
push.v builtin.ptSmokeTop
call.i part_type_size(argc=5)
popz.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
push.v builtin.ptSmokeTop
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
push.v builtin.ptSmokeTop
call.i part_type_orientation(argc=6)
popz.v
pushglb.v global.color
pushi.e -9
push.v [stacktop]self.grey5
push.v builtin.ptSmokeTop
call.i part_type_color1(argc=2)
popz.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
push.v builtin.ptSmokeTop
call.i part_type_alpha3(argc=4)
popz.v
pushi.e 0
conv.i.v
push.v builtin.ptSmokeTop
call.i part_type_blend(argc=2)
popz.v
pushi.e 40
conv.i.v
pushi.e 20
conv.i.v
push.v builtin.ptSmokeTop
call.i part_type_life(argc=3)
popz.v
pushi.e 0
conv.i.v
push.d -0.016
conv.d.v
push.d 1.5
conv.d.v
pushi.e 1
conv.i.v
push.v builtin.ptSmokeTop
call.i part_type_speed(argc=5)
popz.v
pushi.e 2
conv.i.v
pushi.e 20
conv.i.v
pushi.e 105
conv.i.v
pushi.e 75
conv.i.v
push.v builtin.ptSmokeTop
call.i part_type_direction(argc=5)
popz.v
call.i part_type_create(argc=0)
pop.v.v builtin.ptSmokeBottom
push.l 6
conv.l.v
push.v builtin.ptSmokeBottom
call.i gml_Script_add_to_clean_up(argc=2)
popz.v
pushi.e 0
conv.i.v
push.v builtin.ptSmokeBottom
call.i part_type_shape(argc=2)
popz.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
pushi.e 1
conv.i.v
push.v builtin.ptSmokeBottom
call.i part_type_size(argc=5)
popz.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
push.v builtin.ptSmokeBottom
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
push.v builtin.ptSmokeBottom
call.i part_type_orientation(argc=6)
popz.v
pushglb.v global.color
pushi.e -9
push.v [stacktop]self.grey5
push.v builtin.ptSmokeBottom
call.i part_type_color1(argc=2)
popz.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
push.v builtin.ptSmokeBottom
call.i part_type_alpha3(argc=4)
popz.v
pushi.e 0
conv.i.v
push.v builtin.ptSmokeBottom
call.i part_type_blend(argc=2)
popz.v
pushi.e 40
conv.i.v
pushi.e 20
conv.i.v
push.v builtin.ptSmokeBottom
call.i part_type_life(argc=3)
popz.v
pushi.e 0
conv.i.v
push.d -0.016
conv.d.v
push.d 1.5
conv.d.v
pushi.e 1
conv.i.v
push.v builtin.ptSmokeBottom
call.i part_type_speed(argc=5)
popz.v
pushi.e 2
conv.i.v
pushi.e 20
conv.i.v
pushi.e 285
conv.i.v
pushi.e 255
conv.i.v
push.v builtin.ptSmokeBottom
call.i part_type_direction(argc=5)
popz.v
call.i part_type_create(argc=0)
pop.v.v builtin.ptSmokeDeath
push.l 6
conv.l.v
push.v builtin.ptSmokeDeath
call.i gml_Script_add_to_clean_up(argc=2)
popz.v
pushi.e 0
conv.i.v
push.v builtin.ptSmokeDeath
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
push.v builtin.ptSmokeDeath
call.i part_type_size(argc=5)
popz.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
push.v builtin.ptSmokeDeath
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
push.v builtin.ptSmokeDeath
call.i part_type_orientation(argc=6)
popz.v
pushglb.v global.color
pushi.e -9
push.v [stacktop]self.grey5
push.v builtin.ptSmokeDeath
call.i part_type_color1(argc=2)
popz.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
push.v builtin.ptSmokeDeath
call.i part_type_alpha2(argc=3)
popz.v
pushi.e 0
conv.i.v
push.v builtin.ptSmokeDeath
call.i part_type_blend(argc=2)
popz.v
pushi.e 80
conv.i.v
pushi.e 40
conv.i.v
push.v builtin.ptSmokeDeath
call.i part_type_life(argc=3)
popz.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
push.d 0.2
conv.d.v
push.d 0.1
conv.d.v
push.v builtin.ptSmokeDeath
call.i part_type_speed(argc=5)
popz.v
pushi.e 2
conv.i.v
pushi.e 3
conv.i.v
pushi.e 360
conv.i.v
pushi.e 0
conv.i.v
push.v builtin.ptSmokeDeath
call.i part_type_direction(argc=5)
popz.v
push.v builtin.ptSmokeDeath
pushi.e -30
conv.i.v
push.v builtin.ptSmokeBottom
call.i part_type_step(argc=3)
popz.v
push.v builtin.ptSmokeDeath
pushi.e -30
conv.i.v
push.v builtin.ptSmokeTop
call.i part_type_step(argc=3)
popz.v
pushglb.v global.particlesSys
call.i part_emitter_create(argc=1)
pop.v.v builtin.partEmitConfettiBlue
pushglb.v global.particlesSys
call.i part_emitter_create(argc=1)
pop.v.v builtin.partEmitConfettiRed
pushglb.v global.particlesSys
call.i part_emitter_create(argc=1)
pop.v.v builtin.partEmitConfettiGreen
pushglb.v global.particlesSys
call.i part_emitter_create(argc=1)
pop.v.v builtin.partEmitConfettiYellow
pushglb.v global.particlesSys
push.l 5
conv.l.v
push.v builtin.partEmitConfettiBlue
call.i gml_Script_add_to_clean_up(argc=3)
popz.v
pushglb.v global.particlesSys
push.l 5
conv.l.v
push.v builtin.partEmitConfettiRed
call.i gml_Script_add_to_clean_up(argc=3)
popz.v
pushglb.v global.particlesSys
push.l 5
conv.l.v
push.v builtin.partEmitConfettiGreen
call.i gml_Script_add_to_clean_up(argc=3)
popz.v
pushglb.v global.particlesSys
push.l 5
conv.l.v
push.v builtin.partEmitConfettiYellow
call.i gml_Script_add_to_clean_up(argc=3)
popz.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushbltn.v builtin.room_height
pushi.e 50
sub.i.v
pushi.e -50
conv.i.v
pushbltn.v builtin.room_width
pushi.e 0
conv.i.v
push.v builtin.partEmitConfettiBlue
pushglb.v global.particlesSys
call.i part_emitter_region(argc=8)
popz.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushbltn.v builtin.room_height
pushi.e 50
sub.i.v
pushi.e -50
conv.i.v
pushbltn.v builtin.room_width
pushi.e 0
conv.i.v
push.v builtin.partEmitConfettiRed
pushglb.v global.particlesSys
call.i part_emitter_region(argc=8)
popz.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushbltn.v builtin.room_height
pushi.e 50
sub.i.v
pushi.e -50
conv.i.v
pushbltn.v builtin.room_width
pushi.e 0
conv.i.v
push.v builtin.partEmitConfettiGreen
pushglb.v global.particlesSys
call.i part_emitter_region(argc=8)
popz.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushbltn.v builtin.room_height
pushi.e 50
sub.i.v
pushi.e -50
conv.i.v
pushbltn.v builtin.room_width
pushi.e 0
conv.i.v
push.v builtin.partEmitConfettiYellow
pushglb.v global.particlesSys
call.i part_emitter_region(argc=8)
popz.v
call.i part_type_create(argc=0)
pop.v.v builtin.ptConfettiBlue
push.l 6
conv.l.v
push.v builtin.ptConfettiBlue
call.i gml_Script_add_to_clean_up(argc=2)
popz.v
pushi.e 1
conv.b.v
pushi.e 1
conv.b.v
pushi.e 1
conv.b.v
pushref.i 16777348
push.v builtin.ptConfettiBlue
call.i part_type_sprite(argc=5)
popz.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
push.v builtin.ptConfettiBlue
call.i part_type_size(argc=5)
popz.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
push.v builtin.ptConfettiBlue
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
push.v builtin.ptConfettiBlue
call.i part_type_orientation(argc=6)
popz.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
push.v builtin.ptConfettiBlue
call.i part_type_alpha2(argc=3)
popz.v
pushi.e 0
conv.i.v
push.v builtin.ptConfettiBlue
call.i part_type_blend(argc=2)
popz.v
pushi.e 120
conv.i.v
pushi.e 120
conv.i.v
push.v builtin.ptConfettiBlue
call.i part_type_life(argc=3)
popz.v
push.d 0.25
conv.d.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
push.v builtin.ptConfettiBlue
call.i part_type_speed(argc=5)
popz.v
pushi.e 20
conv.i.v
pushi.e 0
conv.i.v
pushi.e 290
conv.i.v
pushi.e 250
conv.i.v
push.v builtin.ptConfettiBlue
call.i part_type_direction(argc=5)
popz.v
call.i part_type_create(argc=0)
pop.v.v builtin.ptConfettiGreen
push.l 6
conv.l.v
push.v builtin.ptConfettiGreen
call.i gml_Script_add_to_clean_up(argc=2)
popz.v
pushi.e 1
conv.b.v
pushi.e 1
conv.b.v
pushi.e 1
conv.b.v
pushref.i 16777349
push.v builtin.ptConfettiGreen
call.i part_type_sprite(argc=5)
popz.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
push.v builtin.ptConfettiGreen
call.i part_type_size(argc=5)
popz.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
push.v builtin.ptConfettiGreen
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
push.v builtin.ptConfettiGreen
call.i part_type_orientation(argc=6)
popz.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
push.v builtin.ptConfettiGreen
call.i part_type_alpha2(argc=3)
popz.v
pushi.e 0
conv.i.v
push.v builtin.ptConfettiGreen
call.i part_type_blend(argc=2)
popz.v
pushi.e 120
conv.i.v
pushi.e 120
conv.i.v
push.v builtin.ptConfettiGreen
call.i part_type_life(argc=3)
popz.v
push.d 0.25
conv.d.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
push.v builtin.ptConfettiGreen
call.i part_type_speed(argc=5)
popz.v
pushi.e 20
conv.i.v
pushi.e 0
conv.i.v
pushi.e 290
conv.i.v
pushi.e 250
conv.i.v
push.v builtin.ptConfettiGreen
call.i part_type_direction(argc=5)
popz.v
call.i part_type_create(argc=0)
pop.v.v builtin.ptConfettiYellow
push.l 6
conv.l.v
push.v builtin.ptConfettiYellow
call.i gml_Script_add_to_clean_up(argc=2)
popz.v
pushi.e 1
conv.b.v
pushi.e 1
conv.b.v
pushi.e 1
conv.b.v
pushref.i 16777351
push.v builtin.ptConfettiYellow
call.i part_type_sprite(argc=5)
popz.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
push.v builtin.ptConfettiYellow
call.i part_type_size(argc=5)
popz.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
push.v builtin.ptConfettiYellow
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
push.v builtin.ptConfettiYellow
call.i part_type_orientation(argc=6)
popz.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
push.v builtin.ptConfettiYellow
call.i part_type_alpha2(argc=3)
popz.v
pushi.e 0
conv.i.v
push.v builtin.ptConfettiYellow
call.i part_type_blend(argc=2)
popz.v
pushi.e 120
conv.i.v
pushi.e 120
conv.i.v
push.v builtin.ptConfettiYellow
call.i part_type_life(argc=3)
popz.v
push.d 0.25
conv.d.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
push.v builtin.ptConfettiYellow
call.i part_type_speed(argc=5)
popz.v
pushi.e 20
conv.i.v
pushi.e 0
conv.i.v
pushi.e 290
conv.i.v
pushi.e 250
conv.i.v
push.v builtin.ptConfettiYellow
call.i part_type_direction(argc=5)
popz.v
call.i part_type_create(argc=0)
pop.v.v builtin.ptConfettiRed
push.l 6
conv.l.v
push.v builtin.ptConfettiRed
call.i gml_Script_add_to_clean_up(argc=2)
popz.v
pushi.e 1
conv.b.v
pushi.e 1
conv.b.v
pushi.e 1
conv.b.v
pushref.i 16777350
push.v builtin.ptConfettiRed
call.i part_type_sprite(argc=5)
popz.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
push.v builtin.ptConfettiRed
call.i part_type_size(argc=5)
popz.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
push.v builtin.ptConfettiRed
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
push.v builtin.ptConfettiRed
call.i part_type_orientation(argc=6)
popz.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
push.v builtin.ptConfettiRed
call.i part_type_alpha2(argc=3)
popz.v
pushi.e 0
conv.i.v
push.v builtin.ptConfettiRed
call.i part_type_blend(argc=2)
popz.v
pushi.e 120
conv.i.v
pushi.e 120
conv.i.v
push.v builtin.ptConfettiRed
call.i part_type_life(argc=3)
popz.v
push.d 0.25
conv.d.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
push.v builtin.ptConfettiRed
call.i part_type_speed(argc=5)
popz.v
pushi.e 20
conv.i.v
pushi.e 0
conv.i.v
pushi.e 290
conv.i.v
pushi.e 250
conv.i.v
push.v builtin.ptConfettiRed
call.i part_type_direction(argc=5)
popz.v
call.i part_type_create(argc=0)
pop.v.v builtin.pFloatAround
push.l 6
conv.l.v
push.v builtin.pFloatAround
call.i gml_Script_add_to_clean_up(argc=2)
popz.v
pushi.e 0
conv.i.v
push.v builtin.pFloatAround
call.i part_type_shape(argc=2)
popz.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
pushi.e 1
conv.i.v
push.v builtin.pFloatAround
call.i part_type_size(argc=5)
popz.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
push.v builtin.pFloatAround
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
push.v builtin.pFloatAround
call.i part_type_orientation(argc=6)
popz.v
pushglb.v global.color
pushi.e -9
push.v [stacktop]self.grey8
pushglb.v global.color
pushi.e -9
push.v [stacktop]self.blue6
pushglb.v global.color
pushi.e -9
push.v [stacktop]self.grey8
push.v builtin.pFloatAround
call.i part_type_color3(argc=4)
popz.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
push.v builtin.pFloatAround
call.i part_type_alpha3(argc=4)
popz.v
pushi.e 0
conv.i.v
push.v builtin.pFloatAround
call.i part_type_blend(argc=2)
popz.v
pushi.e 1000
conv.i.v
pushi.e 500
conv.i.v
push.v builtin.pFloatAround
call.i part_type_life(argc=3)
popz.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
push.d 0.1
conv.d.v
push.d 0.01
conv.d.v
push.v builtin.pFloatAround
call.i part_type_speed(argc=5)
popz.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 360
conv.i.v
pushi.e 0
conv.i.v
push.v builtin.pFloatAround
call.i part_type_direction(argc=5)
popz.v
pushi.e 270
conv.i.v
pushi.e 0
conv.i.v
push.v builtin.pFloatAround
call.i part_type_gravity(argc=3)
popz.v
pushi.e -8
pop.v.i builtin.emmiterFullScreenNbr
pushglb.v global.particlesSys
call.i part_emitter_create(argc=1)
pop.v.v builtin.emmiterFullScreen
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushbltn.v builtin.room_height
pushi.e 0
conv.i.v
pushbltn.v builtin.room_width
pushi.e 0
conv.i.v
push.v builtin.emmiterFullScreen
pushglb.v global.particlesSys
call.i part_emitter_region(argc=8)
popz.v
push.v builtin.emmiterFullScreenNbr
push.v builtin.pFloatAround
push.v builtin.emmiterFullScreen
pushglb.v global.particlesSys
call.i part_emitter_stream(argc=4)
popz.v
b [2]

> gml_Script_anon@13094@gml_Object_oParticle_Create_0 (locals=0, argc=0)
:[1]
pushi.e -8
pop.v.i builtin.emmiterFullScreenNbr
pushi.e 0
conv.i.v
push.v builtin.pFloatAround
call.i part_type_shape(argc=2)
popz.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
pushi.e 1
conv.i.v
push.v builtin.pFloatAround
call.i part_type_size(argc=5)
popz.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
push.v builtin.pFloatAround
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
push.v builtin.pFloatAround
call.i part_type_orientation(argc=6)
popz.v
pushglb.v global.color
pushi.e -9
push.v [stacktop]self.grey8
pushglb.v global.color
pushi.e -9
push.v [stacktop]self.blue6
pushglb.v global.color
pushi.e -9
push.v [stacktop]self.grey8
push.v builtin.pFloatAround
call.i part_type_color3(argc=4)
popz.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
push.v builtin.pFloatAround
call.i part_type_alpha3(argc=4)
popz.v
pushi.e 0
conv.i.v
push.v builtin.pFloatAround
call.i part_type_blend(argc=2)
popz.v
pushi.e 1000
conv.i.v
pushi.e 500
conv.i.v
push.v builtin.pFloatAround
call.i part_type_life(argc=3)
popz.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
push.d 0.1
conv.d.v
push.d 0.01
conv.d.v
push.v builtin.pFloatAround
call.i part_type_speed(argc=5)
popz.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 360
conv.i.v
pushi.e 0
conv.i.v
push.v builtin.pFloatAround
call.i part_type_direction(argc=5)
popz.v
pushi.e 270
conv.i.v
pushi.e 0
conv.i.v
push.v builtin.pFloatAround
call.i part_type_gravity(argc=3)
popz.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushbltn.v builtin.room_height
pushi.e 0
conv.i.v
pushbltn.v builtin.room_width
pushi.e 0
conv.i.v
push.v builtin.emmiterFullScreen
pushglb.v global.particlesSys
call.i part_emitter_region(argc=8)
popz.v
push.v builtin.emmiterFullScreenNbr
push.v builtin.pFloatAround
push.v builtin.emmiterFullScreen
pushglb.v global.particlesSys
call.i part_emitter_stream(argc=4)
popz.v
exit.i

:[2]
push.i [function]gml_Script_anon@13094@gml_Object_oParticle_Create_0
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
pop.v.v builtin.reset_particles_around
call.i part_type_create(argc=0)
pop.v.v builtin.partTypeDial0
push.l 6
conv.l.v
push.v builtin.partTypeDial0
call.i gml_Script_add_to_clean_up(argc=2)
popz.v
pushi.e 0
conv.i.v
push.v builtin.partTypeDial0
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
push.v builtin.partTypeDial0
call.i part_type_size(argc=5)
popz.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
push.v builtin.partTypeDial0
call.i part_type_scale(argc=3)
popz.v
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
push.v builtin.partTypeDial0
call.i part_type_orientation(argc=6)
popz.v
pushglb.v global.color
pushi.e -9
push.v [stacktop]self.blue2
push.v builtin.partTypeDial0
call.i part_type_color1(argc=2)
popz.v
pushi.e 1
conv.i.v
push.v builtin.partTypeDial0
call.i part_type_alpha1(argc=2)
popz.v
pushi.e 0
conv.i.v
push.v builtin.partTypeDial0
call.i part_type_blend(argc=2)
popz.v
pushi.e 15
conv.i.v
pushi.e 10
conv.i.v
push.v builtin.partTypeDial0
call.i part_type_life(argc=3)
popz.v
pushi.e 0
conv.i.v
push.d -0.1
conv.d.v
pushi.e 3
conv.i.v
pushi.e 1
conv.i.v
push.v builtin.partTypeDial0
call.i part_type_speed(argc=5)
popz.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 360
conv.i.v
pushi.e 0
conv.i.v
push.v builtin.partTypeDial0
call.i part_type_direction(argc=5)
popz.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
push.v builtin.partTypeDial0
call.i part_type_gravity(argc=3)
popz.v
pushi.e 0
conv.b.v
pushi.e 1
conv.b.v
pushi.e 1
conv.b.v
pushref.i 16777379
push.v builtin.partTypeDial0
call.i part_type_sprite(argc=5)
popz.v
call.i part_type_create(argc=0)
pop.v.v builtin.partTypeDial0Death
push.l 6
conv.l.v
push.v builtin.partTypeDial0Death
call.i gml_Script_add_to_clean_up(argc=2)
popz.v
pushi.e 0
conv.i.v
push.v builtin.partTypeDial0Death
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
push.v builtin.partTypeDial0Death
call.i part_type_size(argc=5)
popz.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
push.v builtin.partTypeDial0Death
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
push.v builtin.partTypeDial0Death
call.i part_type_orientation(argc=6)
popz.v
pushglb.v global.color
pushi.e -9
push.v [stacktop]self.blue2
push.v builtin.partTypeDial0Death
call.i part_type_color1(argc=2)
popz.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
push.v builtin.partTypeDial0Death
call.i part_type_alpha2(argc=3)
popz.v
pushi.e 0
conv.i.v
push.v builtin.partTypeDial0Death
call.i part_type_blend(argc=2)
popz.v
pushi.e 20
conv.i.v
pushi.e 20
conv.i.v
push.v builtin.partTypeDial0Death
call.i part_type_life(argc=3)
popz.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
push.d 0.2
conv.d.v
push.d 0.1
conv.d.v
push.v builtin.partTypeDial0Death
call.i part_type_speed(argc=5)
popz.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 270
conv.i.v
pushi.e 270
conv.i.v
push.v builtin.partTypeDial0Death
call.i part_type_direction(argc=5)
popz.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
push.v builtin.partTypeDial0Death
call.i part_type_gravity(argc=3)
popz.v
call.i part_type_create(argc=0)
pop.v.v builtin.partTypeDial1
push.l 6
conv.l.v
push.v builtin.partTypeDial1
call.i gml_Script_add_to_clean_up(argc=2)
popz.v
pushi.e 0
conv.i.v
push.v builtin.partTypeDial1
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
push.v builtin.partTypeDial1
call.i part_type_size(argc=5)
popz.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
push.v builtin.partTypeDial1
call.i part_type_scale(argc=3)
popz.v
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
push.v builtin.partTypeDial1
call.i part_type_orientation(argc=6)
popz.v
pushglb.v global.color
pushi.e -9
push.v [stacktop]self.orange1
push.v builtin.partTypeDial1
call.i part_type_color1(argc=2)
popz.v
pushi.e 1
conv.i.v
push.v builtin.partTypeDial1
call.i part_type_alpha1(argc=2)
popz.v
pushi.e 0
conv.i.v
push.v builtin.partTypeDial1
call.i part_type_blend(argc=2)
popz.v
pushi.e 15
conv.i.v
pushi.e 10
conv.i.v
push.v builtin.partTypeDial1
call.i part_type_life(argc=3)
popz.v
pushi.e 0
conv.i.v
push.d -0.1
conv.d.v
pushi.e 3
conv.i.v
pushi.e 1
conv.i.v
push.v builtin.partTypeDial1
call.i part_type_speed(argc=5)
popz.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 360
conv.i.v
pushi.e 0
conv.i.v
push.v builtin.partTypeDial1
call.i part_type_direction(argc=5)
popz.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
push.v builtin.partTypeDial1
call.i part_type_gravity(argc=3)
popz.v
pushi.e 0
conv.b.v
pushi.e 1
conv.b.v
pushi.e 1
conv.b.v
pushref.i 16777379
push.v builtin.partTypeDial1
call.i part_type_sprite(argc=5)
popz.v
call.i part_type_create(argc=0)
pop.v.v builtin.partTypeDial1Death
push.l 6
conv.l.v
push.v builtin.partTypeDial1Death
call.i gml_Script_add_to_clean_up(argc=2)
popz.v
pushi.e 0
conv.i.v
push.v builtin.partTypeDial1Death
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
push.v builtin.partTypeDial1Death
call.i part_type_size(argc=5)
popz.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
push.v builtin.partTypeDial1Death
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
push.v builtin.partTypeDial1Death
call.i part_type_orientation(argc=6)
popz.v
pushglb.v global.color
pushi.e -9
push.v [stacktop]self.orange1
push.v builtin.partTypeDial1Death
call.i part_type_color1(argc=2)
popz.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
push.v builtin.partTypeDial1Death
call.i part_type_alpha2(argc=3)
popz.v
pushi.e 0
conv.i.v
push.v builtin.partTypeDial1Death
call.i part_type_blend(argc=2)
popz.v
pushi.e 20
conv.i.v
pushi.e 20
conv.i.v
push.v builtin.partTypeDial1Death
call.i part_type_life(argc=3)
popz.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
push.d 0.2
conv.d.v
push.d 0.1
conv.d.v
push.v builtin.partTypeDial1Death
call.i part_type_speed(argc=5)
popz.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 270
conv.i.v
pushi.e 270
conv.i.v
push.v builtin.partTypeDial1Death
call.i part_type_direction(argc=5)
popz.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
push.v builtin.partTypeDial1Death
call.i part_type_gravity(argc=3)
popz.v
call.i part_type_create(argc=0)
pop.v.v builtin.partTypeDial2
push.l 6
conv.l.v
push.v builtin.partTypeDial2
call.i gml_Script_add_to_clean_up(argc=2)
popz.v
pushi.e 0
conv.i.v
push.v builtin.partTypeDial2
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
push.v builtin.partTypeDial2
call.i part_type_size(argc=5)
popz.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
push.v builtin.partTypeDial2
call.i part_type_scale(argc=3)
popz.v
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
push.v builtin.partTypeDial2
call.i part_type_orientation(argc=6)
popz.v
pushglb.v global.color
pushi.e -9
push.v [stacktop]self.green2
push.v builtin.partTypeDial2
call.i part_type_color1(argc=2)
popz.v
pushi.e 1
conv.i.v
push.v builtin.partTypeDial2
call.i part_type_alpha1(argc=2)
popz.v
pushi.e 0
conv.i.v
push.v builtin.partTypeDial2
call.i part_type_blend(argc=2)
popz.v
pushi.e 15
conv.i.v
pushi.e 10
conv.i.v
push.v builtin.partTypeDial2
call.i part_type_life(argc=3)
popz.v
pushi.e 0
conv.i.v
push.d -0.1
conv.d.v
pushi.e 3
conv.i.v
pushi.e 1
conv.i.v
push.v builtin.partTypeDial2
call.i part_type_speed(argc=5)
popz.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 360
conv.i.v
pushi.e 0
conv.i.v
push.v builtin.partTypeDial2
call.i part_type_direction(argc=5)
popz.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
push.v builtin.partTypeDial2
call.i part_type_gravity(argc=3)
popz.v
pushi.e 0
conv.b.v
pushi.e 1
conv.b.v
pushi.e 1
conv.b.v
pushref.i 16777379
push.v builtin.partTypeDial2
call.i part_type_sprite(argc=5)
popz.v
call.i part_type_create(argc=0)
pop.v.v builtin.partTypeDial2Death
push.l 6
conv.l.v
push.v builtin.partTypeDial2Death
call.i gml_Script_add_to_clean_up(argc=2)
popz.v
pushi.e 0
conv.i.v
push.v builtin.partTypeDial2Death
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
push.v builtin.partTypeDial2Death
call.i part_type_size(argc=5)
popz.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
push.v builtin.partTypeDial2Death
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
push.v builtin.partTypeDial2Death
call.i part_type_orientation(argc=6)
popz.v
pushglb.v global.color
pushi.e -9
push.v [stacktop]self.green2
push.v builtin.partTypeDial2Death
call.i part_type_color1(argc=2)
popz.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
push.v builtin.partTypeDial2Death
call.i part_type_alpha2(argc=3)
popz.v
pushi.e 0
conv.i.v
push.v builtin.partTypeDial2Death
call.i part_type_blend(argc=2)
popz.v
pushi.e 20
conv.i.v
pushi.e 20
conv.i.v
push.v builtin.partTypeDial2Death
call.i part_type_life(argc=3)
popz.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
push.d 0.2
conv.d.v
push.d 0.1
conv.d.v
push.v builtin.partTypeDial2Death
call.i part_type_speed(argc=5)
popz.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 270
conv.i.v
pushi.e 270
conv.i.v
push.v builtin.partTypeDial2Death
call.i part_type_direction(argc=5)
popz.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
push.v builtin.partTypeDial2Death
call.i part_type_gravity(argc=3)
popz.v
call.i part_type_create(argc=0)
pop.v.v builtin.partTypeDial3
push.l 6
conv.l.v
push.v builtin.partTypeDial3
call.i gml_Script_add_to_clean_up(argc=2)
popz.v
pushi.e 0
conv.i.v
push.v builtin.partTypeDial3
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
push.v builtin.partTypeDial3
call.i part_type_size(argc=5)
popz.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
push.v builtin.partTypeDial3
call.i part_type_scale(argc=3)
popz.v
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
push.v builtin.partTypeDial3
call.i part_type_orientation(argc=6)
popz.v
pushglb.v global.color
pushi.e -9
push.v [stacktop]self.red1
push.v builtin.partTypeDial3
call.i part_type_color1(argc=2)
popz.v
pushi.e 1
conv.i.v
push.v builtin.partTypeDial3
call.i part_type_alpha1(argc=2)
popz.v
pushi.e 0
conv.i.v
push.v builtin.partTypeDial3
call.i part_type_blend(argc=2)
popz.v
pushi.e 15
conv.i.v
pushi.e 10
conv.i.v
push.v builtin.partTypeDial3
call.i part_type_life(argc=3)
popz.v
pushi.e 0
conv.i.v
push.d -0.1
conv.d.v
pushi.e 3
conv.i.v
pushi.e 1
conv.i.v
push.v builtin.partTypeDial3
call.i part_type_speed(argc=5)
popz.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 360
conv.i.v
pushi.e 0
conv.i.v
push.v builtin.partTypeDial3
call.i part_type_direction(argc=5)
popz.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
push.v builtin.partTypeDial3
call.i part_type_gravity(argc=3)
popz.v
pushi.e 0
conv.b.v
pushi.e 1
conv.b.v
pushi.e 1
conv.b.v
pushref.i 16777379
push.v builtin.partTypeDial3
call.i part_type_sprite(argc=5)
popz.v
call.i part_type_create(argc=0)
pop.v.v builtin.partTypeDial3Death
push.l 6
conv.l.v
push.v builtin.partTypeDial3Death
call.i gml_Script_add_to_clean_up(argc=2)
popz.v
pushi.e 0
conv.i.v
push.v builtin.partTypeDial3Death
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
push.v builtin.partTypeDial3Death
call.i part_type_size(argc=5)
popz.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
push.v builtin.partTypeDial3Death
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
push.v builtin.partTypeDial3Death
call.i part_type_orientation(argc=6)
popz.v
pushglb.v global.color
pushi.e -9
push.v [stacktop]self.red1
push.v builtin.partTypeDial3Death
call.i part_type_color1(argc=2)
popz.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
push.v builtin.partTypeDial3Death
call.i part_type_alpha2(argc=3)
popz.v
pushi.e 0
conv.i.v
push.v builtin.partTypeDial3Death
call.i part_type_blend(argc=2)
popz.v
pushi.e 20
conv.i.v
pushi.e 20
conv.i.v
push.v builtin.partTypeDial3Death
call.i part_type_life(argc=3)
popz.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
push.d 0.2
conv.d.v
push.d 0.1
conv.d.v
push.v builtin.partTypeDial3Death
call.i part_type_speed(argc=5)
popz.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 270
conv.i.v
pushi.e 270
conv.i.v
push.v builtin.partTypeDial3Death
call.i part_type_direction(argc=5)
popz.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
push.v builtin.partTypeDial3Death
call.i part_type_gravity(argc=3)
popz.v
push.v builtin.partTypeDial0Death
pushi.e -30
conv.i.v
push.v builtin.partTypeDial0
call.i part_type_step(argc=3)
popz.v
push.v builtin.partTypeDial0Death
pushi.e 1
conv.i.v
push.v builtin.partTypeDial0
call.i part_type_death(argc=3)
popz.v
push.v builtin.partTypeDial1Death
pushi.e -30
conv.i.v
push.v builtin.partTypeDial1
call.i part_type_step(argc=3)
popz.v
push.v builtin.partTypeDial1Death
pushi.e 1
conv.i.v
push.v builtin.partTypeDial1
call.i part_type_death(argc=3)
popz.v
push.v builtin.partTypeDial2Death
pushi.e -30
conv.i.v
push.v builtin.partTypeDial2
call.i part_type_step(argc=3)
popz.v
push.v builtin.partTypeDial2Death
pushi.e 1
conv.i.v
push.v builtin.partTypeDial2
call.i part_type_death(argc=3)
popz.v
push.v builtin.partTypeDial3Death
pushi.e -30
conv.i.v
push.v builtin.partTypeDial3
call.i part_type_step(argc=3)
popz.v
push.v builtin.partTypeDial3Death
pushi.e 1
conv.i.v
push.v builtin.partTypeDial3
call.i part_type_death(argc=3)
popz.v

:[end]