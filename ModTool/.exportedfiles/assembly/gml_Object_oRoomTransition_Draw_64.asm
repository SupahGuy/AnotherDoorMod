:[0]
call.i gml_Script_upscale_pixelart_start(argc=0)
popz.v
pushglb.v global.color
pushi.e -9
push.v [stacktop]self.grey8
call.i draw_set_color(argc=1)
popz.v
pushi.e 0
conv.b.v
push.v builtin.heightR1
pushglb.v global.gameWidth
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i draw_rectangle(argc=5)
popz.v
pushi.e 0
conv.b.v
push.v builtin.heightR2
pushglb.v global.gameWidth
pushglb.v global.gameHeight
pushi.e 0
conv.i.v
call.i draw_rectangle(argc=5)
popz.v
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
call.i gml_Script_upscale_pixelart_end(argc=0)
popz.v

:[end]