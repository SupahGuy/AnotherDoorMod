:[0]
call.i gml_Script_upscale_pixelart_start(argc=0)
popz.v
push.v builtin.number
call.i gml_Script_InputPlayerGetGhost(argc=1)
conv.v.b
not.b
bt [3]

:[1]
push.v builtin.isCursorVisible
conv.v.b
bt [3]

:[2]
push.v builtin.isCursorVisibilityForced
conv.v.b
b [4]

:[3]
push.e 1

:[4]
bf [9]

:[5]
push.v builtin.isCursorVisible
conv.v.b
bf [7]

:[6]
pushi.e 0
conv.i.v
push.v builtin.sprite_index
call.i sprite_get_texture(argc=2)
pop.v.v builtin.textureSpr
push.v builtin.textureSpr
call.i texture_get_texel_width(argc=1)
pop.v.v builtin.textureW
push.v builtin.textureSpr
call.i texture_get_texel_height(argc=1)
pop.v.v builtin.textureH
pushref.i 134217750
call.i shader_set(argc=1)
popz.v
push.v builtin.outlineColorValue
push.v builtin.outlineColor
call.i shader_set_uniform_f_array(argc=2)
popz.v
push.v builtin.textureW
push.v builtin.pixelW
call.i shader_set_uniform_f(argc=2)
popz.v
push.v builtin.textureH
push.v builtin.pixelH
call.i shader_set_uniform_f(argc=2)
popz.v

:[7]
push.v builtin.image_alpha
push.v builtin.image_blend
push.v builtin.image_angle
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
push.v builtin.y
push.v builtin.x
push.v builtin.image_index
push.v builtin.sprite_index
call.i draw_sprite_ext(argc=9)
popz.v
push.v builtin.isCursorVisible
conv.v.b
bf [9]

:[8]
call.i shader_reset(argc=0)
popz.v

:[9]
call.i gml_Script_upscale_pixelart_end(argc=0)
popz.v
push.v builtin.number
call.i gml_Script_InputPlayerGetGhost(argc=1)
conv.v.b
not.b
bt [12]

:[10]
push.v builtin.isCursorVisible
conv.v.b
bt [12]

:[11]
push.v builtin.isCursorVisibilityForced
conv.v.b
b [13]

:[12]
push.e 1

:[13]
bf [end]

:[14]
push.v builtin.txtPlayer
push.v builtin.image_alpha
push.i 16777215
conv.i.v
dup.v 2 8
dup.v 0
push.v stacktop.blend
callv.v 2
push.v builtin.y
pushi.e 9
add.i.v
pushglb.v global.zoom
mul.v.v
push.v builtin.x
pushi.e 10
add.i.v
pushglb.v global.zoom
mul.v.v
dup.v 2 8
dup.v 0
push.v stacktop.draw
callv.v 2
popz.v

:[end]