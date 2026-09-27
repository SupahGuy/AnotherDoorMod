:[0]
call.i event_inherited(argc=0)
popz.v
call.i @@This@@(argc=0)
push.v builtin.is_visible
callv.v 0
conv.v.b
not.b
bf [2]

:[1]
exit.i

:[2]
call.i gml_Script_upscale_pixelart_start(argc=0)
popz.v
push.v builtin.y
pushi.e 2
add.i.v
push.v builtin.x
push.v builtin.sliderDotX
add.v.v
pushi.e 0
conv.i.v
pushref.i 16777805
call.i draw_sprite(argc=4)
popz.v
call.i gml_Script_upscale_pixelart_end(argc=0)
popz.v
push.v builtin.valueTxt
push.v builtin.y
pushglb.v global.zoom
mul.v.v
push.v builtin.x
call.i @@This@@(argc=0)
push.v builtin.get_width
callv.v 0
add.v.v
pushglb.v global.zoom
mul.v.v
dup.v 2 8
dup.v 0
push.v stacktop.draw
callv.v 2
popz.v

:[end]