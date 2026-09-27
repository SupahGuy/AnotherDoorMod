; WARNING: Missing code locals, possibly due to unsupported bytecode version or a brand new code entry.

:[0]
call.i gml_Script_live_call(argc=0)
conv.v.b
bf [2]

:[1]
pushglb.v global.live_result
ret.v

:[2]
call.i event_inherited(argc=0)
popz.v
push.v builtin.value
push.s ""@61
cmp.s.v NEQ
bf [22]

:[3]
push.v builtin.clipMaskSurface
call.i surface_exists(argc=1)
conv.v.b
not.b
bf [5]

:[4]
push.v builtin.theHeight
pushglb.v global.zoom
mul.v.v
push.v builtin.theWidth
push.v builtin.padX
sub.v.v
pushglb.v global.zoom
mul.v.v
call.i surface_create(argc=2)
pop.v.v builtin.clipMaskSurface

:[5]
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
pushi.e 1
conv.i.v
call.i draw_set_valign(argc=1)
popz.v
pushglb.v global.color
pushi.e -9
push.v [stacktop]self.grey1
call.i draw_set_color(argc=1)
popz.v
pushglb.v global.currentLanguage
pushi.e 7
cmp.i.v EQ
bf [7]

:[6]
pushglb.v global.fontStyle
pushi.e 0
cmp.i.v EQ
b [8]

:[7]
push.e 0

:[8]
bf [10]

:[9]
pushglb.v global.zoom
pushi.e 3
add.i.v
pop.v.v local._offsetTextBorder
b [16]

:[10]
pushglb.v global.currentLanguage
pushi.e 7
cmp.i.v NEQ
bf [12]

:[11]
pushglb.v global.fontStyle
pushi.e 0
cmp.i.v EQ
b [13]

:[12]
push.e 0

:[13]
bf [15]

:[14]
pushglb.v global.zoom
pop.v.v local._offsetTextBorder
b [16]

:[15]
pushi.e 0
pop.v.i local._offsetTextBorder

:[16]
pushi.e 0
conv.i.v
pushglb.v global.fontScaleOpenEnded
pushglb.v global.fontScaleOpenEnded
push.v builtin.value
push.v builtin.theHeight
pushglb.v global.zoom
mul.v.v
pushi.e 2
conv.i.d
div.d.v
pushloc.v local._offsetTextBorder
push.v builtin.textOffsetX
add.v.v
call.i draw_text_transformed(argc=6)
popz.v
pushi.e 0
conv.i.v
call.i draw_set_valign(argc=1)
popz.v
pushi.e 1
conv.i.v
call.i draw_set_alpha(argc=1)
popz.v
call.i surface_reset_target(argc=0)
popz.v
pushglb.v global.fontOpenEnded
pushglb.v global.fntCjk
cmp.v.v NEQ
bf [18]

:[17]
pushglb.v global.fontOpenEnded
pushglb.v global.fntLatin
cmp.v.v NEQ
b [19]

:[18]
push.e 0

:[19]
bf [21]

:[20]
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
push.v builtin.y
pushglb.v global.zoom
mul.v.v
push.v builtin.x
push.v builtin.padLeft
add.v.v
pushglb.v global.zoom
mul.v.v
push.v builtin.clipMaskSurface
call.i draw_surface(argc=3)
popz.v
call.i shader_reset(argc=0)
popz.v
b [22]

:[21]
push.v builtin.y
pushglb.v global.zoom
mul.v.v
push.v builtin.x
push.v builtin.padLeft
add.v.v
pushglb.v global.zoom
mul.v.v
push.v builtin.clipMaskSurface
call.i draw_surface(argc=3)
popz.v

:[22]
call.i @@This@@(argc=0)
push.v builtin.is_focus
callv.v 0
conv.v.b
bf [end]

:[23]
call.i gml_Script_upscale_pixelart_start(argc=0)
popz.v
pushbltn.v builtin.current_time
pushi.e 100
conv.i.d
div.d.v
call.i cos(argc=1)
pushi.e 1
add.i.v
pushi.e 2
conv.i.d
div.d.v
call.i round(argc=1)
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
push.v builtin.y
push.v builtin.theHeight
pushref.i 16777429
call.i sprite_get_height(argc=1)
sub.v.v
pushi.e 2
conv.i.d
div.d.v
add.v.v
push.v builtin.x
push.v builtin.padLeft
add.v.v
push.v builtin.theWidth
push.v builtin.padX
sub.v.v
push.v builtin.textWidth
pushglb.v global.zoom
div.v.v
call.i min(argc=2)
add.v.v
pushi.e 0
conv.i.v
pushref.i 16777429
call.i draw_sprite_ext(argc=9)
popz.v
call.i gml_Script_upscale_pixelart_end(argc=0)
popz.v

:[end]