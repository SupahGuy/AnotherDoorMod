:[0]
call.i gml_Script_upscale_pixelart_start(argc=0)
popz.v
push.v builtin.y
push.v builtin.x
push.v builtin.image_index
push.v builtin.sprite_index
call.i draw_sprite(argc=4)
popz.v
call.i gml_Script_upscale_pixelart_end(argc=0)
popz.v

:[end]