:[0]
push.v builtin.x
pushi.e 8
conv.i.v
pushi.e -8
conv.i.v
call.i irandom_range(argc=2)
add.v.v
pop.v.v builtin.x
push.v builtin.y
pushi.e 8
conv.i.v
pushi.e -8
conv.i.v
call.i irandom_range(argc=2)
add.v.v
pop.v.v builtin.y
pushref.i 16777413
pushref.i 16777412
pushref.i 16777411
call.i choose(argc=3)
pop.v.v builtin.sprite_index
pushi.e 270
conv.i.v
pushi.e 180
conv.i.v
pushi.e 90
conv.i.v
pushi.e 0
conv.i.v
call.i choose(argc=4)
pop.v.v builtin.image_angle
pushglb.v global.particlesSys
call.i part_emitter_create(argc=1)
pop.v.v builtin.peGemAdd
pushglb.v global.particlesSys
push.l 5
conv.l.v
push.v builtin.peGemAdd
call.i gml_Script_add_to_clean_up(argc=3)
popz.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
push.v builtin.y
pushi.e 1
add.i.v
push.v builtin.y
pushi.e 1
sub.i.v
push.v builtin.x
pushi.e 1
add.i.v
push.v builtin.x
pushi.e 1
sub.i.v
push.v builtin.peGemAdd
pushglb.v global.particlesSys
call.i part_emitter_region(argc=8)
popz.v
pushi.e 3
conv.i.v
pushi.e 2
conv.i.v
call.i irandom_range(argc=2)
pushglb.v global.particles
pushi.e -9
push.v [stacktop]self.ptGemBreak
push.v builtin.peGemAdd
pushglb.v global.particlesSys
call.i part_emitter_burst(argc=4)
popz.v
push.v builtin.idSender
pushi.e -1
cmp.i.v NEQ
bf [3]

:[1]
push.v builtin.idSender
call.i instance_exists(argc=1)
conv.v.b
bf [3]

:[2]
push.v builtin.idSender
dup.v 0 8
dup.v 0
push.v stacktop.delete_gem_callback
callv.v 0
popz.v

:[3]
push.d 1.1
conv.d.v
push.d 0.9
conv.d.v
call.i random_range(argc=2)
pushbltn.v builtin.undefined
pushbltn.v builtin.undefined
pushi.e 0
conv.b.v
pushi.e 1
conv.i.v
pushref.i 33554475
pushref.i 33554474
pushref.i 33554473
pushref.i 33554472
call.i choose(argc=4)
call.i audio_play_sound(argc=6)
popz.v
pushglb.v global.camera
pushi.e -9
push.v [stacktop]self.shakeTimer
dup.v 0 8
dup.v 0
push.v stacktop.reset
callv.v 0
popz.v
pushglb.v global.camera
pushi.e -9
push.v [stacktop]self.shakeTimer
dup.v 0 8
dup.v 0
push.v stacktop.run
callv.v 0
popz.v
pushglb.v global.shake
push.l 0
conv.l.v
pushglb.v global.camera
pushi.e -9
push.v [stacktop]self.id
dup.v 2 8
dup.v 0
push.v stacktop.add_element
callv.v 2
popz.v

:[end]