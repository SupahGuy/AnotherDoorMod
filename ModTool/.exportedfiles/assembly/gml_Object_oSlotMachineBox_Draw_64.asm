; WARNING: Missing code locals, possibly due to unsupported bytecode version or a brand new code entry.

:[0]
push.v builtin.clipMaskSurface
call.i surface_exists(argc=1)
conv.v.b
not.b
bf [2]

:[1]
push.v builtin.slotHeight
pushglb.v global.zoom
mul.v.v
push.v builtin.slotWidth
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
call.i gml_Script_upscale_pixelart_start(argc=0)
popz.v
push.v builtin.spriteBg
pushbltn.v builtin.undefined
cmp.v.v NEQ
bf [4]

:[3]
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
push.v builtin.spriteBg
call.i draw_sprite(argc=4)
popz.v

:[4]
pushi.e 0
pop.v.i local._i

:[5]
pushloc.v local._i
push.v builtin.itemsList
call.i array_length(argc=1)
cmp.v.v LT
bf [13]

:[6]
push.v builtin.bearingOffset
push.v builtin.heightItem
pushloc.v local._i
mul.v.v
add.v.v
push.v builtin.yModuloMax
mod.v.v
push.v builtin.yItemDrawMin
add.v.v
pop.v.v local._y
pushloc.v local._y
push.v builtin.yItemDrawMin
cmp.v.v LT
bt [8]

:[7]
pushloc.v local._y
push.v builtin.yItemDrawMax
cmp.v.v GT
b [9]

:[8]
push.e 1

:[9]
bf [11]

:[10]
b [12]

:[11]
pushloc.v local._y
push.v builtin.heightItem
pushi.e 2
conv.i.d
div.d.v
add.v.v
push.v builtin.slotWidth
pushi.e 2
conv.i.d
div.d.v
pushi.e 0
conv.i.v
pushi.e -6
pushloc.v local._i
conv.v.i
push.v [array]self.itemsList
call.i draw_sprite(argc=4)
popz.v

:[12]
push.v local._i
push.e 1
add.i.v
pop.v.v local._i
b [5]

:[13]
call.i gml_Script_upscale_pixelart_end(argc=0)
popz.v
call.i gml_Script_upscale_pixelart_start(argc=0)
popz.v
push.v builtin.paneTopY
pushglb.v global.zoom
div.v.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
push.v builtin.spritePaneTop
call.i draw_sprite(argc=4)
popz.v
push.v builtin.paneBottomY
pushglb.v global.zoom
div.v.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
push.v builtin.spritePaneBottom
call.i draw_sprite(argc=4)
popz.v
call.i gml_Script_upscale_pixelart_end(argc=0)
popz.v
call.i surface_reset_target(argc=0)
popz.v
push.v builtin.y
pushglb.v global.zoom
mul.v.v
push.v builtin.x
pushglb.v global.zoom
mul.v.v
push.v builtin.clipMaskSurface
call.i draw_surface(argc=3)
popz.v

:[end]