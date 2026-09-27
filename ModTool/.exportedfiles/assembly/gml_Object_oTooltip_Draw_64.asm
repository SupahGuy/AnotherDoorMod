; WARNING: Missing code locals, possibly due to unsupported bytecode version or a brand new code entry.

:[0]
push.v builtin.isVisible
conv.v.b
bf [end]

:[1]
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
push.v builtin.img
pushi.e -1
cmp.i.v NEQ
bf [3]

:[2]
push.v builtin.image_alpha
push.v builtin.image_blend
push.v builtin.image_angle
push.v builtin.image_yscale
push.v builtin.image_xscale
push.v builtin.halfHeight
neg.v
push.v builtin.paddingTop
add.v.v
push.v builtin.imgOffsetY
add.v.v
push.v builtin.halfWidth
neg.v
push.v builtin.textTitleW
add.v.v
pushi.e 0
conv.i.v
push.v builtin.img
call.i draw_sprite_ext(argc=9)
popz.v

:[3]
call.i gml_Script_upscale_pixelart_end(argc=0)
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
push.v builtin.title
pushi.e -1
cmp.i.v NEQ
bf [5]

:[4]
push.v builtin.textTitle
push.v builtin.image_alpha
push.i 16777215
conv.i.v
dup.v 2 8
dup.v 0
push.v stacktop.blend
callv.v 2
push.v builtin.halfHeight
neg.v
push.v builtin.paddingTop
pushglb.v global.zoom
mul.v.v
add.v.v
push.v builtin.halfWidth
neg.v
dup.v 2 8
dup.v 0
push.v stacktop.draw
callv.v 2
popz.v

:[5]
push.v builtin.textBody
push.v builtin.image_alpha
push.i 16777215
conv.i.v
dup.v 2 8
dup.v 0
push.v stacktop.blend
callv.v 2
push.v builtin.halfHeight
neg.v
push.v builtin.paddingTop
pushglb.v global.zoom
mul.v.v
add.v.v
push.v builtin.textTitleH
pushglb.v global.zoom
mul.v.v
add.v.v
push.v builtin.halfWidth
neg.v
dup.v 2 8
dup.v 0
push.v stacktop.draw
callv.v 2
popz.v
pushloc.v local.wm
pushi.e 2
conv.i.v
call.i matrix_set(argc=2)
popz.v

:[end]