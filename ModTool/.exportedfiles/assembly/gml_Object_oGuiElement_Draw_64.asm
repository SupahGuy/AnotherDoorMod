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
call.i gml_Script_upscale_pixelart_start(argc=0)
popz.v
push.v builtin.image_alpha
push.v builtin.image_blend
push.v builtin.image_angle
push.v builtin.image_yscale
push.v builtin.image_xscale
push.v builtin.y
push.v builtin.x
push.v builtin.image_index
push.v builtin.sprite_index
call.i draw_sprite_ext(argc=9)
popz.v
call.i gml_Script_upscale_pixelart_end(argc=0)
popz.v

:[end]