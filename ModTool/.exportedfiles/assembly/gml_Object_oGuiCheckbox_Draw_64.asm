:[0]
call.i @@This@@(argc=0)
push.v builtin.is_visible
callv.v 0
conv.v.b
not.b
bf [2]

:[1]
exit.i

:[2]
call.i event_inherited(argc=0)
popz.v
call.i gml_Script_upscale_pixelart_start(argc=0)
popz.v
push.v builtin.isCheck
conv.v.b
bf [4]

:[3]
push.v builtin.y
push.v builtin.theHeight
pushi.e 2
conv.i.d
div.d.v
add.v.v
push.v builtin.x
push.v builtin.padRight
add.v.v
pushref.i 16777293
call.i sprite_get_xoffset(argc=1)
add.v.v
pushi.e 0
conv.i.v
pushref.i 16777294
call.i draw_sprite(argc=4)
popz.v
b [5]

:[4]
push.v builtin.y
push.v builtin.theHeight
pushi.e 2
conv.i.d
div.d.v
add.v.v
push.v builtin.x
push.v builtin.padRight
add.v.v
pushref.i 16777293
call.i sprite_get_xoffset(argc=1)
add.v.v
pushi.e 0
conv.i.v
pushref.i 16777293
call.i draw_sprite(argc=4)
popz.v

:[5]
call.i gml_Script_upscale_pixelart_end(argc=0)
popz.v
push.v builtin.labelDraw
push.v builtin.y
push.v builtin.theHeight
pushi.e 2
conv.i.d
div.d.v
add.v.v
pushglb.v global.zoom
mul.v.v
push.v builtin.x
push.v builtin.padLeft
add.v.v
pushglb.v global.zoom
mul.v.v
dup.v 2 8
dup.v 0
push.v stacktop.draw
callv.v 2
popz.v

:[end]