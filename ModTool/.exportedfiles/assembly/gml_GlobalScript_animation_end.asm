:[0]
b [16]

> gml_Script_animation_end (locals=4, argc=0)
:[1]
pushbltn.v builtin.argument_count
pushi.e 0
cmp.i.v GT
bf [3]

:[2]
pushi.e -15
pushi.e 0
push.v [array]self.argument
b [4]

:[3]
push.v builtin.sprite_index

:[4]
pop.v.v local._sprite
pushbltn.v builtin.argument_count
pushi.e 1
cmp.i.v GT
bf [6]

:[5]
pushi.e -15
pushi.e 1
push.v [array]self.argument
b [7]

:[6]
push.v builtin.image_index

:[7]
pop.v.v local._image
pushloc.v local._sprite
call.i sprite_get_speed_type(argc=1)
pop.v.v local._type
pushloc.v local._sprite
call.i sprite_get_speed(argc=1)
push.v builtin.image_speed
mul.v.v
pop.v.v local._spd
pushloc.v local._type
pushi.e 0
cmp.i.v EQ
bf [9]

:[8]
pushloc.v local._spd
pushbltn.v builtin.room_speed
div.v.v
pop.v.v local._spd

:[9]
pushbltn.v builtin.argument_count
pushi.e 2
cmp.i.v GT
bf [11]

:[10]
pushi.e -15
pushi.e 2
push.v [array]self.argument
pop.v.v local._spd

:[11]
pushloc.v local._spd
call.i sign(argc=1)
conv.v.b
bf [14]

:[12]
pushloc.v local._image
pushloc.v local._spd
add.v.v
pushloc.v local._sprite
call.i sprite_get_number(argc=1)
cmp.v.v GTE
conv.b.v
ret.v

:[13]
b [15]

:[14]
pushloc.v local._image
pushloc.v local._spd
add.v.v
pushi.e 0
cmp.i.v LTE
conv.b.v
ret.v

:[15]
exit.i

:[16]
push.i [function]gml_Script_animation_end
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pop.v.v self.animation_end
popz.v

:[end]