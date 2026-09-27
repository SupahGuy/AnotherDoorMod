; WARNING: Missing code locals, possibly due to unsupported bytecode version or a brand new code entry.

:[0]
push.v builtin.wiggle
dup.v 0 8
dup.v 0
push.v stacktop.get_angle
callv.v 0
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
push.v builtin.y
push.v builtin.halfHeight
add.v.v
pushglb.v global.zoom
mul.v.v
push.v builtin.x
push.v builtin.halfWidth
add.v.v
pushglb.v global.zoom
mul.v.v
call.i gml_Script_upscale_pixelart_start(argc=6)
popz.v
push.v builtin.image_alpha
push.i 16777215
conv.i.v
push.v builtin.height
push.v builtin.width
push.v builtin.halfHeight
neg.v
push.v builtin.halfWidth
neg.v
pushi.e 0
conv.i.v
push.v builtin.bgDialogueSprite
call.i draw_sprite_stretched_ext(argc=8)
popz.v
push.v builtin.image_alpha
push.v builtin.image_blend
push.v builtin.image_angle
push.v builtin.image_yscale
push.v builtin.image_xscale
push.v builtin.halfHeight
neg.v
push.v builtin.height
add.v.v
pushi.e 2
sub.i.v
push.v builtin.halfWidth
neg.v
pushi.e 7
add.i.v
pushi.e 0
conv.i.v
pushref.i 16777243
call.i draw_sprite_ext(argc=9)
popz.v
call.i gml_Script_upscale_pixelart_end(argc=0)
popz.v
push.v builtin.clipMaskSurface
call.i surface_exists(argc=1)
conv.v.b
not.b
bf [2]

:[1]
push.v builtin.height
pushglb.v global.zoom
mul.v.v
push.v builtin.width
pushglb.v global.zoom
mul.v.v
call.i surface_create(argc=2)
pop.v.v builtin.clipMaskSurface

:[2]
push.v builtin.clipMaskSurface
call.i surface_set_target(argc=1)
popz.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i draw_clear_alpha(argc=2)
popz.v
pushglb.v global.fontOpenEnded
call.i draw_set_font(argc=1)
popz.v
push.v builtin.image_alpha
call.i draw_set_alpha(argc=1)
popz.v
pushglb.v global.color
pushi.e -9
push.v [stacktop]self.grey1
call.i draw_set_color(argc=1)
popz.v
pushi.e 0
conv.i.v
pushglb.v global.fontScaleOpenEnded
pushglb.v global.fontScaleOpenEnded
push.v builtin.body
push.v builtin.paddingY
pushglb.v global.zoom
mul.v.v
push.v builtin.paddingX
pushglb.v global.zoom
mul.v.v
call.i draw_text_transformed(argc=6)
popz.v
pushi.e 1
conv.i.v
call.i draw_set_alpha(argc=1)
popz.v
call.i surface_reset_target(argc=0)
popz.v
pushi.e 2
conv.i.v
call.i matrix_get(argc=1)
pop.v.v local.wm
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
push.v builtin.wiggle
dup.v 0 8
dup.v 0
push.v stacktop.get_angle
callv.v 0
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
push.v builtin.y
pushglb.v global.zoom
mul.v.v
push.v builtin.halfHeight
add.v.v
push.v builtin.x
pushglb.v global.zoom
mul.v.v
push.v builtin.halfWidth
add.v.v
call.i matrix_build(argc=9)
pushi.e 2
conv.i.v
call.i matrix_set(argc=2)
popz.v
pushglb.v global.fontOpenEnded
pushglb.v global.fntCjk
cmp.v.v NEQ
bf [4]

:[3]
pushglb.v global.fontOpenEnded
pushglb.v global.fntLatin
cmp.v.v NEQ
b [5]

:[4]
push.e 0

:[5]
bf [7]

:[6]
pushref.i 134217750
call.i shader_set(argc=1)
popz.v
push.v builtin.clipMaskSurface
call.i surface_get_texture(argc=1)
pop.v.v builtin.textureSpr
push.v builtin.textureSpr
call.i texture_get_texel_width(argc=1)
pop.v.v builtin.textureW
push.v builtin.textureSpr
call.i texture_get_texel_height(argc=1)
pop.v.v builtin.textureH
push.s "u_pixel_w"@9060
conv.s.v
pushref.i 134217750
call.i shader_get_uniform(argc=2)
pop.v.v builtin.pixelW
push.s "u_pixel_h"@9062
conv.s.v
pushref.i 134217750
call.i shader_get_uniform(argc=2)
pop.v.v builtin.pixelH
push.s "u_outline_color"@9064
conv.s.v
pushref.i 134217750
call.i shader_get_uniform(argc=2)
pop.v.v builtin.outlineColor
pushglb.v global.color
pushi.e -9
push.v [stacktop]self.grey8
call.i gml_Script_hex_to_vec3(argc=1)
pop.v.v builtin.outlineColorValue
push.v builtin.outlineColorValue
push.v builtin.outlineColor
call.i shader_set_uniform_f_array(argc=2)
popz.v
push.v builtin.textureW
pushglb.v global.zoom
mul.v.v
push.v builtin.pixelW
call.i shader_set_uniform_f(argc=2)
popz.v
push.v builtin.textureH
pushglb.v global.zoom
mul.v.v
push.v builtin.pixelH
call.i shader_set_uniform_f(argc=2)
popz.v
push.v builtin.halfHeight
neg.v
push.v builtin.halfWidth
neg.v
push.v builtin.clipMaskSurface
call.i draw_surface(argc=3)
popz.v
call.i shader_reset(argc=0)
popz.v
b [8]

:[7]
push.v builtin.halfHeight
neg.v
push.v builtin.halfWidth
neg.v
push.v builtin.clipMaskSurface
call.i draw_surface(argc=3)
popz.v

:[8]
pushloc.v local.wm
pushi.e 2
conv.i.v
call.i matrix_set(argc=2)
popz.v

:[end]