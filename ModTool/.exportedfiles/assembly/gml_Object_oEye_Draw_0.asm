:[0]
call.i gml_Script_draw_gui(argc=0)
popz.v
call.i draw_self(argc=0)
popz.v
push.v builtin.y
push.v builtin.eyeH
pushi.e 2
conv.i.d
div.d.v
add.v.v
push.v builtin.pupileY
add.v.v
push.v builtin.x
push.v builtin.eyeW
pushi.e 2
conv.i.d
div.d.v
add.v.v
push.v builtin.pupileX
add.v.v
push.v builtin.image_index
push.v builtin.sprSelectionEyePupil
call.i draw_sprite(argc=4)
popz.v
push.v builtin.prevState
push.v builtin.state
cmp.v.v NEQ
bf [7]

:[1]
push.v builtin.state
push.s "open"@9474
cmp.s.v EQ
bf [3]

:[2]
pushi.e 1
pop.v.i builtin.image_speed
b [7]

:[3]
push.v builtin.state
push.s "close"@9457
cmp.s.v EQ
bf [5]

:[4]
pushi.e -1
pop.v.i builtin.image_speed
b [7]

:[5]
push.v builtin.state
push.s "blinkClose"@9475
cmp.s.v EQ
bf [7]

:[6]
pushi.e -1
pop.v.i builtin.image_speed

:[7]
push.v builtin.state
push.s "open"@9474
cmp.s.v EQ
bt [9]

:[8]
push.v builtin.state
push.s "close"@9457
cmp.s.v EQ
b [10]

:[9]
push.e 1

:[10]
bf [12]

:[11]
push.v builtin.image_speed
pushi.e 0
cmp.i.v NEQ
b [13]

:[12]
push.e 0

:[13]
bf [16]

:[14]
call.i gml_Script_animation_end(argc=0)
conv.v.b
bf [16]

:[15]
pushi.e 0
pop.v.i builtin.image_speed

:[16]
push.v builtin.state
push.s "blinkClose"@9475
cmp.s.v EQ
bf [19]

:[17]
call.i gml_Script_animation_end(argc=0)
conv.v.b
bf [19]

:[18]
pushi.e 1
pop.v.i builtin.image_speed
push.s "blinkOpen"@9477
pop.v.s builtin.state

:[19]
push.v builtin.state
push.s "blinkOpen"@9477
cmp.s.v EQ
bf [22]

:[20]
call.i gml_Script_animation_end(argc=0)
conv.v.b
bf [22]

:[21]
pushi.e 0
pop.v.i builtin.image_speed
push.s "open"@9474
pop.v.s builtin.state

:[22]
push.v builtin.state
pop.v.v builtin.prevState
call.i gml_Script_draw_gui_end(argc=0)
popz.v

:[end]