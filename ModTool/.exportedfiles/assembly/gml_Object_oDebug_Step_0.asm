; WARNING: Missing code locals, possibly due to unsupported bytecode version or a brand new code entry.

:[0]
call.i gml_Script_live_call(argc=0)
conv.v.b
bf [2]

:[1]
pushglb.v global.live_result
ret.v

:[2]
pushi.e 2
conv.i.v
call.i mouse_check_button_pressed(argc=1)
conv.v.b
bf [5]

:[3]
pushbltn.v builtin.room
pushref.i 50331655
cmp.v.v EQ
bf [5]

:[4]
pushi.e 0
b [6]

:[5]
push.e 0

:[6]
bf [end]

:[7]
pushglb.v global.playersManager
pushi.e 0
conv.i.v
dup.v 1 8
dup.v 0
push.v stacktop.get_cursor
callv.v 1
pushi.e -9
push.v [stacktop]self.x
pop.v.v local._mouseX
pushglb.v global.playersManager
pushi.e 0
conv.i.v
dup.v 1 8
dup.v 0
push.v stacktop.get_cursor
callv.v 1
pushi.e -9
push.v [stacktop]self.y
pop.v.v local._mouseY
pushi.e 40
conv.i.v
pushi.e 40
conv.i.v
pushi.e 16
conv.i.v
pushi.e 16
conv.i.v
pushloc.v local._mouseY
pushloc.v local._mouseX
call.i point_in_rectangle(argc=6)
conv.v.b
bf [23]

:[8]
pushglb.v global.effectRandom
call.i array_length(argc=1)
pop.v.v local._length
pushi.e 0
pop.v.i local._p

:[9]
pushloc.v local._p
pushglb.v global.playersCount
cmp.v.v LT
bf [23]

:[10]
pushi.e 0
pop.v.i local._z

:[11]
pushloc.v local._z
pushi.e 1
cmp.i.v LT
bf [22]

:[12]
pushloc.v local._length
pushi.e 1
sub.i.v
call.i irandom(argc=1)
pop.v.v local._index
call.i @@Global@@(argc=0)
pushi.e -9
pushloc.v local._index
conv.v.i
push.v [array]self.effectRandom
pop.v.v local._effect
pushloc.v local._effect
pushglb.v global.effect
pushi.e -9
push.v [stacktop]self.murkyWater
cmp.v.v EQ
bt [16]

:[13]
pushloc.v local._effect
pushglb.v global.effect
pushi.e -9
push.v [stacktop]self.magnyfyingGlass
cmp.v.v EQ
bt [16]

:[14]
pushloc.v local._effect
pushglb.v global.effect
pushi.e -9
push.v [stacktop]self.ladybug
cmp.v.v EQ
bt [16]

:[15]
pushloc.v local._effect
pushglb.v global.effect
pushi.e -9
push.v [stacktop]self.mother
cmp.v.v EQ
b [17]

:[16]
push.e 1

:[17]
bf [19]

:[18]
b [21]

:[19]
pushglb.v global.effect
pushi.e -9
push.v [stacktop]self.armor
pop.v.v local._effect
pushglb.v global.playersManager
pushloc.v local._p
dup.v 1 8
dup.v 0
push.v stacktop.get_characters
callv.v 1
dup.v 0 8
dup.v 0
push.v stacktop.is_alive
callv.v 0
conv.v.b
bf [21]

:[20]
pushglb.v global.playersManager
pushloc.v local._p
dup.v 1 8
dup.v 0
push.v stacktop.get_characters
callv.v 1
pushi.e 10
conv.i.v
pushi.e 10
conv.i.v
pushi.e 1
conv.i.v
pushloc.v local._effect
dup.v 4 8
dup.v 0
push.v stacktop.receive_effect
callv.v 4
popz.v

:[21]
push.v local._z
push.e 1
add.i.v
pop.v.v local._z
b [11]

:[22]
push.v local._p
push.e 1
add.i.v
pop.v.v local._p
b [9]

:[23]
pushi.e 72
conv.i.v
pushi.e 40
conv.i.v
pushi.e 48
conv.i.v
pushi.e 16
conv.i.v
pushloc.v local._mouseY
pushloc.v local._mouseX
call.i point_in_rectangle(argc=6)
conv.v.b
bf [29]

:[24]
pushi.e 0
pop.v.i local._p

:[25]
pushloc.v local._p
pushglb.v global.playersCount
cmp.v.v LT
bf [29]

:[26]
pushglb.v global.playersManager
pushloc.v local._p
dup.v 1 8
dup.v 0
push.v stacktop.get_characters
callv.v 1
pushi.e -9
push.v [stacktop]self.effects
call.i array_length(argc=1)
pushi.e 0
cmp.i.v GT
bf [28]

:[27]
pushglb.v global.playersManager
pushloc.v local._p
dup.v 1 8
dup.v 0
push.v stacktop.get_characters
callv.v 1
pushi.e 0
conv.i.v
pushbltn.v builtin.undefined
pushbltn.v builtin.undefined
dup.v 3 8
dup.v 0
push.v stacktop.delete_effect
callv.v 3
popz.v

:[28]
push.v local._p
push.e 1
add.i.v
pop.v.v local._p
b [25]

:[29]
pushi.e 104
conv.i.v
pushi.e 40
conv.i.v
pushi.e 80
conv.i.v
pushi.e 16
conv.i.v
pushloc.v local._mouseY
pushloc.v local._mouseX
call.i point_in_rectangle(argc=6)
conv.v.b
bf [41]

:[30]
pushi.e 0
pop.v.i local._p

:[31]
pushloc.v local._p
pushglb.v global.playersCount
cmp.v.v LT
bf [33]

:[32]
push.v local._p
push.e 1
add.i.v
pop.v.v local._p
b [31]

:[33]
pushi.e 0
pop.v.i local._p

:[34]
pushloc.v local._p
pushglb.v global.playersCount
cmp.v.v LT
bf [41]

:[35]
pushglb.v global.playersManager
pushloc.v local._p
dup.v 1 8
dup.v 0
push.v stacktop.get_characters
callv.v 1
pop.v.v local._char
pushloc.v local._char
dup.v 0 8
dup.v 0
push.v stacktop.is_alive
callv.v 0
conv.v.b
bf [37]

:[36]
pushloc.v local._p
pushi.e 0
cmp.i.v EQ
b [38]

:[37]
push.e 0

:[38]
bf [40]

:[39]
pushloc.v local._char
pushi.e 0
conv.b.v
pushref.i 16777773
pushi.e 60
conv.i.v
pushi.e 1
conv.b.v
dup.v 4 8
dup.v 0
push.v stacktop.receive_damage
callv.v 4
popz.v
push.l 1
conv.l.v
pushloc.v local._char
call.i gml_Script_execute_effect(argc=2)
popz.v

:[40]
push.v local._p
push.e 1
add.i.v
pop.v.v local._p
b [34]

:[41]
pushi.e 136
conv.i.v
pushi.e 40
conv.i.v
pushi.e 112
conv.i.v
pushi.e 16
conv.i.v
pushloc.v local._mouseY
pushloc.v local._mouseX
call.i point_in_rectangle(argc=6)
conv.v.b
bf [47]

:[42]
pushi.e 0
pop.v.i local._p

:[43]
pushloc.v local._p
pushglb.v global.playersCount
cmp.v.v LT
bf [47]

:[44]
pushglb.v global.playersManager
pushloc.v local._p
dup.v 1 8
dup.v 0
push.v stacktop.get_characters
callv.v 1
dup.v 0 8
dup.v 0
push.v stacktop.is_alive
callv.v 0
conv.v.b
bf [46]

:[45]
pushglb.v global.playersManager
pushloc.v local._p
dup.v 1 8
dup.v 0
push.v stacktop.get_characters
callv.v 1
pushi.e 100
conv.i.v
pushi.e 1
conv.b.v
dup.v 2 8
dup.v 0
push.v stacktop.receive_heal
callv.v 2
popz.v

:[46]
push.v local._p
push.e 1
add.i.v
pop.v.v local._p
b [43]

:[47]
pushi.e 168
conv.i.v
pushi.e 40
conv.i.v
pushi.e 144
conv.i.v
pushi.e 16
conv.i.v
pushloc.v local._mouseY
pushloc.v local._mouseX
call.i point_in_rectangle(argc=6)
conv.v.b
bf [end]

:[48]
pushi.e 0
pop.v.i local._p

:[49]
pushloc.v local._p
pushglb.v global.playersCount
cmp.v.v LT
bf [end]

:[50]
pushloc.v local._p
push.l 0
conv.l.v
pushbltn.v builtin.undefined
push.l 2
conv.l.v
pushi.e 1
conv.i.v
pushbltn.v builtin.room_height
pushi.e 2
conv.i.d
div.d.v
pushbltn.v builtin.room_width
pushi.e 2
conv.i.d
div.d.v
pushbltn.v builtin.room_height
pushi.e 0
conv.i.v
call.i irandom_range(argc=2)
pushbltn.v builtin.room_width
pushi.e 0
conv.i.v
call.i irandom_range(argc=2)
call.i gml_Script_g_exchange_gem(argc=9)
popz.v
push.v local._p
push.e 1
add.i.v
pop.v.v local._p
b [49]

:[end]