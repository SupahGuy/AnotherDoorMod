; WARNING: Missing code locals, possibly due to unsupported bytecode version or a brand new code entry.

:[0]
pushbltn.v builtin.room
pushref.i 50331655
cmp.v.v NEQ
bf [2]

:[1]
exit.i

:[2]
push.v builtin.isFightActive
conv.v.b
not.b
bf [4]

:[3]
exit.i

:[4]
call.i gml_Script_upscale_pixelart_start(argc=0)
popz.v
pushglb.v global.gameHeight
pushi.e 87
sub.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushref.i 16777955
call.i draw_sprite(argc=4)
popz.v
pushi.e 0
conv.b.v
pushglb.v global.color
pushi.e -9
push.v [stacktop]self.grey8
pushglb.v global.color
pushi.e -9
push.v [stacktop]self.grey8
pushglb.v global.color
pushi.e -9
push.v [stacktop]self.grey8
pushglb.v global.color
pushi.e -9
push.v [stacktop]self.grey8
pushglb.v global.gameHeight
pushglb.v global.gameWidth
pushglb.v global.gameHeight
pushi.e 86
sub.i.v
pushi.e 0
conv.i.v
call.i draw_rectangle_color(argc=9)
popz.v
pushglb.v global.shader
pushi.e 272
conv.i.v
pushglb.v global.gameWidth
pushi.e 19
conv.i.v
pushi.e 214
conv.i.v
dup.v 4 8
dup.v 0
push.v stacktop.draw_shape
callv.v 4
popz.v
pushi.e 20
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushref.i 16777395
call.i draw_sprite(argc=4)
popz.v
pushi.e 40
conv.i.v
pushi.e 22
conv.i.v
pushref.i 58
pushi.e -9
push.v [stacktop]self.frameSynchEight
dup.v 0 8
dup.v 0
push.v stacktop.get_current_frame
callv.v 0
pushref.i 16777396
call.i draw_sprite(argc=4)
popz.v
pushi.e 39
conv.i.v
push.v builtin.counterWidth
push.v builtin.counterY
push.v builtin.counterX
pushi.e 0
conv.i.v
pushref.i 16777406
call.i draw_sprite_stretched(argc=6)
popz.v
pushi.e 0
pop.v.i local._i

:[5]
pushloc.v local._i
push.v builtin.counterTotal
cmp.v.v LT
bf [10]

:[6]
push.v builtin.counterY
pushi.e 16
add.i.v
push.v builtin.counterX
pushloc.v local._i
pushi.e 1
sub.i.v
push.v builtin.counterMidW
mul.v.v
add.v.v
push.v builtin.counterStartW
add.v.v
pushglb.v global.loopManager
dup.v 0 8
dup.v 0
push.v stacktop.get_monster_active_number
callv.v 0
pushloc.v local._i
cmp.v.v EQ
bf [8]

:[7]
pushref.i 58
pushi.e -9
push.v [stacktop]self.frameSynchEight
dup.v 0 8
dup.v 0
push.v stacktop.get_current_frame
callv.v 0
b [9]

:[8]
pushi.e 0
conv.i.v

:[9]
pushi.e -6
pushloc.v local._i
conv.v.i
push.v [array]self.counterArray
call.i draw_sprite(argc=4)
popz.v
push.v local._i
push.e 1
add.i.v
pop.v.v local._i
b [5]

:[10]
push.v builtin.counterY
pushi.e 16
add.i.v
push.v builtin.counterX
push.v builtin.counterTotal
pushi.e 1
sub.i.v
push.v builtin.counterMidW
mul.v.v
add.v.v
push.v builtin.counterStartW
add.v.v
pushi.e 0
conv.i.v
pushref.i 16777403
call.i draw_sprite(argc=4)
popz.v
pushi.e 39
conv.i.v
push.v builtin.counterWidth
push.v builtin.counterY
push.v builtin.counterX
pushref.i 58
pushi.e -9
push.v [stacktop]self.frameSynchEight
dup.v 0 8
dup.v 0
push.v stacktop.get_current_frame
callv.v 0
pushref.i 16777407
call.i draw_sprite_stretched(argc=6)
popz.v
push.v builtin.counterY
pushi.e 31
add.i.v
push.v builtin.counterX
pushglb.v global.loopManager
dup.v 0 8
dup.v 0
push.v stacktop.get_monster_active_number
callv.v 0
pushi.e 1
sub.i.v
push.v builtin.counterMidW
mul.v.v
add.v.v
push.v builtin.counterStartW
add.v.v
pushi.e 4
add.i.v
pushref.i 58
pushi.e -9
push.v [stacktop]self.frameSynchEight
dup.v 0 8
dup.v 0
push.v stacktop.get_current_frame
callv.v 0
pushref.i 16777400
call.i draw_sprite(argc=4)
popz.v
pushglb.v global.dayNightCycle
dup.v 0 8
dup.v 0
push.v stacktop.get_event
callv.v 0
push.l 1
cmp.l.v EQ
bf [12]

:[11]
pushglb.v global.fightManager
pushi.e -9
push.v [stacktop]self.isFightActive
conv.v.b
b [13]

:[12]
push.e 0

:[13]
bf [17]

:[14]
pushref.i 12
pushi.e -9
pushenv [16]

:[15]
pushi.e 215
pop.v.i local._x
pushi.e 207
pop.v.i local._y
pushglb.v global.dayNightCycle
pushi.e -9
push.v [stacktop]self.timeToYule
dup.v 0 8
dup.v 0
push.v stacktop.get_cur_length_normalize
callv.v 0
pop.v.v local._norm
pushi.e 0
conv.i.v
pushref.i 16778016
call.i sprite_get_width(argc=1)
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
pushloc.v local._norm
call.i gml_Script_map_value(argc=5)
pop.v.v builtin.yuleBarWidthTo
push.d 0.1
conv.d.v
push.v builtin.yuleBarWidthTo
push.v builtin.yuleBarWidthCur
call.i lerp(argc=3)
pop.v.v builtin.yuleBarWidthCur
pushloc.v local._y
pushloc.v local._x
pushi.e 0
conv.i.v
pushref.i 16778017
call.i draw_sprite(argc=4)
popz.v
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
pushloc.v local._y
pushi.e 51
add.i.v
pushloc.v local._x
pushi.e 19
add.i.v
pushref.i 16778016
call.i sprite_get_height(argc=1)
push.v builtin.yuleBarWidthCur
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushref.i 16778016
call.i draw_sprite_part_ext(argc=12)
popz.v

:[16]
popenv [15]

:[17]
call.i gml_Script_upscale_pixelart_end(argc=0)
popz.v

:[end]