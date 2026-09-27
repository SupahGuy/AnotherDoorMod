; WARNING: Missing code locals, possibly due to unsupported bytecode version or a brand new code entry.

:[0]
pushglb.v global.isLightOn
conv.v.b
not.b
bf [2]

:[1]
pushref.i 134217752
call.i shader_set(argc=1)
popz.v
push.s "palette_texture"@9699
conv.s.v
pushref.i 134217752
call.i shader_get_sampler_index(argc=2)
pop.v.v local._1
pushi.e 0
conv.i.v
pushref.i 16777740
call.i sprite_get_texture(argc=2)
pop.v.v local._tex
pushloc.v local._tex
pushloc.v local._1
call.i texture_set_stage(argc=2)
popz.v
push.s "texel_size"@9703
conv.s.v
pushref.i 134217752
call.i shader_get_uniform(argc=2)
pop.v.v local._2
pushloc.v local._tex
call.i texture_get_texel_height(argc=1)
pushloc.v local._tex
call.i texture_get_texel_width(argc=1)
pushloc.v local._2
call.i shader_set_uniform_f(argc=3)
popz.v
push.s "palette_UVs"@9705
conv.s.v
pushref.i 134217752
call.i shader_get_uniform(argc=2)
pop.v.v local._3
pushi.e 0
conv.i.v
pushref.i 16777740
call.i sprite_get_uvs(argc=2)
pop.v.v local._uv
pushi.e -7
pushi.e 3
push.v [array]self._uv
pushi.e -7
pushi.e 2
push.v [array]self._uv
pushi.e -7
pushi.e 1
push.v [array]self._uv
pushi.e -7
pushi.e 0
push.v [array]self._uv
pushloc.v local._3
call.i shader_set_uniform_f(argc=5)
popz.v
push.s "palette_index"@9708
conv.s.v
pushref.i 134217752
call.i shader_get_uniform(argc=2)
pop.v.v local._4
pushi.e 1
conv.i.v
pushloc.v local._4
call.i shader_set_uniform_f(argc=2)
popz.v

:[2]
call.i @@This@@(argc=0)
push.v builtin.is_visible
callv.v 0
conv.v.b
bf [22]

:[3]
call.i gml_Script_upscale_pixelart_start(argc=0)
popz.v
push.v builtin.isClampVisible
conv.v.b
bf [5]

:[4]
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
push.v builtin.clampAngle
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
push.v builtin.clampYInit
push.v builtin.clampOffsetY
add.v.v
push.v builtin.x
pushi.e 4
sub.i.v
push.v builtin.clampFrame
pushref.i 16777912
call.i draw_sprite_ext(argc=9)
popz.v

:[5]
push.v builtin.image_alpha
push.v builtin.image_blend
push.v builtin.image_angle
push.v builtin.image_yscale
push.v builtin.image_xscale
push.v builtin.doorClampOffsetY
push.v builtin.x
push.v builtin.image_index
push.v builtin.sprite_index
call.i draw_sprite_ext(argc=9)
popz.v
push.v builtin.doorOffsetY
push.v builtin.doorClampOffsetY
add.v.v
push.v builtin.x
push.v builtin.doorOffsetX
add.v.v
push.v builtin.doorFrame
push.v builtin.animDoor
dup.v 0 8
dup.v 0
push.v stacktop.get_sprite
callv.v 0
call.i draw_sprite(argc=4)
popz.v
push.v builtin.doorType
push.l 1
cmp.l.v EQ
bf [7]

:[6]
push.v builtin.doorClampOffsetY
push.v builtin.x
pushi.e 0
conv.i.v
pushref.i 16777638
call.i draw_sprite(argc=4)
popz.v
b [12]

:[7]
push.v builtin.doorType
push.l 0
cmp.l.v EQ
bf [12]

:[8]
push.v builtin.morseRunning
pushi.e 1
cmp.b.v EQ
bf [10]

:[9]
push.v builtin.morseLightOn
b [11]

:[10]
push.v builtin.lightExit

:[11]
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
push.v builtin.y
pushi.e 90
sub.i.v
push.v builtin.x
pushi.e 15
sub.i.v
pushi.e 0
conv.i.v
pushref.i 16777643
call.i draw_sprite_ext(argc=9)
popz.v

:[12]
push.v builtin.doorType
push.l 0
cmp.l.v NEQ
bf [19]

:[13]
push.v builtin.barCompletionWidth
push.v builtin.barCompletionWidthTo
cmp.v.v NEQ
bf [15]

:[14]
push.d 0.05
conv.d.v
push.v builtin.barCompletionWidthTo
push.v builtin.barCompletionWidth
call.i lerp(argc=3)
pop.v.v builtin.barCompletionWidth

:[15]
push.v builtin.doorClampOffsetY
pushi.e 87
sub.i.v
push.v builtin.x
pushi.e 20
sub.i.v
pushi.e 0
conv.i.v
pushref.i 16777386
call.i draw_sprite(argc=4)
popz.v
push.v builtin.morseRunning
pushi.e 1
cmp.b.v EQ
bf [17]

:[16]
push.v builtin.morseLightOn
b [18]

:[17]
pushi.e 1
conv.i.v

:[18]
push.i 16777215
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
push.v builtin.doorClampOffsetY
pushi.e 85
sub.i.v
push.v builtin.x
pushi.e 17
sub.i.v
push.v builtin.sprCompletionDoor
call.i sprite_get_height(argc=1)
push.v builtin.barCompletionWidth
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
push.v builtin.sprCompletionDoor
call.i draw_sprite_part_ext(argc=12)
popz.v

:[19]
push.v builtin.isClampVisible
conv.v.b
bf [21]

:[20]
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
push.v builtin.clampAngle
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
push.v builtin.clampYInit
push.v builtin.clampOffsetY
add.v.v
push.v builtin.x
pushi.e 4
sub.i.v
push.v builtin.clampFrame
push.v builtin.clampTightenTimer
dup.v 0 8
dup.v 0
push.v stacktop.get_sprite
callv.v 0
call.i draw_sprite_ext(argc=9)
popz.v

:[21]
call.i gml_Script_upscale_pixelart_end(argc=0)
popz.v

:[22]
pushglb.v global.isLightOn
conv.v.b
not.b
bf [end]

:[23]
call.i shader_reset(argc=0)
popz.v

:[end]