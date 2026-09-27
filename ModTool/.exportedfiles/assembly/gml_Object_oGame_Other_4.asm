:[0]
pushbltn.v builtin.room
pushref.i 50331650
cmp.v.v EQ
bf [5]

:[1]
call.i @@This@@(argc=0)
push.v builtin.init_game
callv.v 0
popz.v
pushglb.v global.firstInit
conv.v.b
bf [3]

:[2]
pushref.i 50331654
call.i room_goto(argc=1)
popz.v
b [4]

:[3]
pushref.i 50331656
call.i room_goto(argc=1)
popz.v

:[4]
b [21]

:[5]
pushbltn.v builtin.room
pushref.i 50331655
cmp.v.v EQ
bf [9]

:[6]
pushref.i 11
pushi.e -9
pushenv [8]

:[7]
push.l 0
conv.l.v
call.i @@This@@(argc=0)
push.v builtin.set_sprite
callv.v 1
popz.v
pushi.e 0
conv.b.v
call.i @@This@@(argc=0)
push.v builtin.set_cursor_visibility_forced
callv.v 1
popz.v

:[8]
popenv [7]
b [21]

:[9]
pushbltn.v builtin.room
pushref.i 50331651
cmp.v.v EQ
bf [11]

:[10]
pushref.i 40
push.v builtin.depth
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create_depth(argc=4)
popz.v
b [21]

:[11]
pushbltn.v builtin.room
pushref.i 50331652
cmp.v.v EQ
bf [15]

:[12]
pushref.i 53
pushi.e -9
pushenv [14]

:[13]
call.i @@This@@(argc=0)
push.v builtin.open
callv.v 0
popz.v

:[14]
popenv [13]
pushref.i 18
push.v builtin.depth
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create_depth(argc=4)
popz.v
b [21]

:[15]
pushbltn.v builtin.room
pushref.i 50331653
cmp.v.v EQ
bf [17]

:[16]
pushref.i 50331655
call.i room_goto(argc=1)
popz.v
b [21]

:[17]
pushbltn.v builtin.room
pushref.i 50331648
cmp.v.v EQ
bf [19]

:[18]
pushref.i 3
push.v builtin.depth
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create_depth(argc=4)
popz.v
b [21]

:[19]
pushbltn.v builtin.room
pushref.i 50331656
cmp.v.v EQ
bf [21]

:[20]
pushglb.v global.particlesSys
call.i part_particles_clear(argc=1)
popz.v
pushref.i 45
pushglb.v global.depthManager
push.s "ui"@5003
conv.s.v
dup.v 1 8
dup.v 0
push.v stacktop.get_depth
callv.v 1
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create_depth(argc=4)
popz.v
pushglb.v global.tvState
pushi.e 1
conv.b.v
dup.v 1 8
dup.v 0
push.v stacktop.turn_off
callv.v 1
popz.v

:[21]
pushglb.v global.networkingManager
dup.v 0 8
dup.v 0
push.v stacktop.state_switched
callv.v 0
popz.v

:[end]