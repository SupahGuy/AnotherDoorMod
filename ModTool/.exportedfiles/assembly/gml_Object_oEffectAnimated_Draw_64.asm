:[0]
call.i gml_Script_upscale_pixelart_start(argc=0)
popz.v
push.v builtin.state
push.l 0
cmp.l.v EQ
bf [2]

:[1]
push.v builtin.y
push.v builtin.x
pushi.e 0
conv.i.v
push.v builtin.sprite_index
call.i draw_sprite(argc=4)
popz.v
b [6]

:[2]
push.v builtin.state
push.l 1
cmp.l.v EQ
bf [4]

:[3]
push.v builtin.executeAlpha
push.v builtin.image_blend
push.v builtin.image_angle
push.v builtin.executeScale
push.v builtin.executeScale
push.v builtin.y
push.v builtin.x
pushi.e 0
conv.i.v
push.v builtin.sprite_index
call.i draw_sprite_ext(argc=9)
popz.v
b [6]

:[4]
push.v builtin.state
push.l 2
cmp.l.v EQ
bf [6]

:[5]
push.v builtin.decreaseAlpha
push.v builtin.image_blend
push.v builtin.image_angle
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
push.v builtin.y
push.v builtin.x
pushi.e 0
conv.i.v
push.v builtin.sprite_index
call.i draw_sprite_ext(argc=9)
popz.v

:[6]
call.i gml_Script_upscale_pixelart_end(argc=0)
popz.v

:[end]