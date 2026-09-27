; WARNING: Missing code locals, possibly due to unsupported bytecode version or a brand new code entry.

:[0]
push.v builtin.timerAppear
dup.v 0 8
dup.v 0
push.v stacktop.is_running
callv.v 0
conv.v.b
bf [2]

:[1]
push.v builtin.timerAppear
dup.v 0 8
dup.v 0
push.v stacktop.is_delay_running
callv.v 0
conv.v.b
not.b
b [3]

:[2]
push.e 0

:[3]
bf [5]

:[4]
push.v builtin.timerAppear
dup.v 0 8
dup.v 0
push.v stacktop.get_cur_length_normalize
callv.v 0
pop.v.v local._norm
pushi.e 2
conv.i.v
pushi.e 1
pushloc.v local._norm
sub.v.i
call.i power(argc=2)
push.v builtin.xInit
mul.v.v
pushi.e 2
pushi.e 1
pushloc.v local._norm
sub.v.i
mul.v.i
pushloc.v local._norm
mul.v.v
push.v builtin.x3
mul.v.v
add.v.v
pushi.e 2
conv.i.v
pushloc.v local._norm
call.i power(argc=2)
push.v builtin.xTo
mul.v.v
add.v.v
pop.v.v builtin.x
pushi.e 2
conv.i.v
pushi.e 1
pushloc.v local._norm
sub.v.i
call.i power(argc=2)
push.v builtin.yInit
mul.v.v
pushi.e 2
pushi.e 1
pushloc.v local._norm
sub.v.i
mul.v.i
pushloc.v local._norm
mul.v.v
push.v builtin.y3
mul.v.v
add.v.v
pushi.e 2
conv.i.v
pushloc.v local._norm
call.i power(argc=2)
push.v builtin.yTo
mul.v.v
add.v.v
pop.v.v builtin.y
pushi.e 0
pop.v.i builtin.image_angle

:[5]
push.v builtin.timerAppear
dup.v 0 8
dup.v 0
push.v stacktop.is_finished
callv.v 0
conv.v.b
bf [14]

:[6]
push.v builtin.idReceiver
pushi.e -1
cmp.i.v NEQ
bf [12]

:[7]
push.v builtin.idReceiver
call.i instance_exists(argc=1)
conv.v.b
bf [11]

:[8]
push.v builtin.typeReceiver
push.l 1
cmp.l.v EQ
bf [10]

:[9]
push.v builtin.idReceiver
dup.v 0 8
dup.v 0
push.v stacktop.add_gem_secure_callback
callv.v 0
popz.v
b [11]

:[10]
push.v builtin.idReceiver
dup.v 0 8
dup.v 0
push.v stacktop.add_gem_callback
callv.v 0
popz.v

:[11]
b [13]

:[12]
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
pushi.e 3
conv.i.v
pushi.e 1
conv.i.v
call.i irandom_range(argc=2)
pushglb.v global.particles
pushi.e -9
push.v [stacktop]self.ptGemBreak
push.v builtin.peGemAdd
pushglb.v global.particlesSys
call.i part_emitter_burst(argc=4)
popz.v

:[13]
call.i instance_destroy(argc=0)
popz.v

:[14]
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

:[end]