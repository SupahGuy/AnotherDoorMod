:[0]
call.i gml_Script_upscale_pixelart_start(argc=0)
popz.v
push.v builtin.image_alpha
push.v builtin.image_blend
push.v builtin.image_angle
pushi.e 90
sub.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
push.v builtin.chainStartY
push.v builtin.chainStartX
pushi.e 0
conv.i.v
push.v builtin.sprite_index
call.i draw_sprite_ext(argc=9)
popz.v
call.i gml_Script_upscale_pixelart_end(argc=0)
popz.v

:[end]