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
push.v builtin.height
pushi.e 2
conv.i.d
div.d.v
add.v.v
push.v builtin.sprite_yoffset
sub.v.v
pushglb.v global.zoom
mul.v.v
push.v builtin.x
push.v builtin.width
pushi.e 2
conv.i.d
div.d.v
add.v.v
push.v builtin.sprite_xoffset
sub.v.v
pushglb.v global.zoom
mul.v.v
call.i gml_Script_upscale_pixelart_start(argc=6)
popz.v
push.v builtin.firstCreationVisual
conv.v.b
not.b
bf [4]

:[1]
pushi.e 0
pop.v.i local._offsetX
pushi.e 0
pop.v.i local._offsetY
push.v builtin.vfxActivation
conv.v.b
bf [3]

:[2]
pushbltn.v builtin.current_time
pushi.e 150
conv.i.d
div.d.v
call.i cos(argc=1)
pushi.e 1
add.i.v
pushi.e 2
conv.i.d
div.d.v
pop.v.v local._int
push.v builtin.pNoiseActivated
push.v builtin.pNoiseInc
add.v.v
pop.v.v builtin.pNoiseActivated
push.v builtin.pNoiseActivated
call.i gml_Script_perlin_noise(argc=1)
pushi.e 2
mul.i.v
pushloc.v local._int
mul.v.v
pop.v.v local._offsetX
push.v builtin.pNoiseActivated
pushi.e 100
add.i.v
call.i gml_Script_perlin_noise(argc=1)
pushi.e 2
mul.i.v
pushloc.v local._int
mul.v.v
pop.v.v local._offsetY

:[3]
pushloc.v local._offsetY
pushloc.v local._offsetX
pushi.e 0
conv.i.v
push.v builtin.sprite_index
call.i draw_sprite(argc=4)
popz.v

:[4]
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
push.v builtin.height
pushi.e 2
conv.i.d
div.d.v
add.v.v
push.v builtin.sprite_yoffset
sub.v.v
pushglb.v global.zoom
mul.v.v
push.v builtin.x
push.v builtin.width
pushi.e 2
conv.i.d
div.d.v
add.v.v
push.v builtin.sprite_xoffset
sub.v.v
pushglb.v global.zoom
mul.v.v
call.i matrix_build(argc=9)
pushi.e 2
conv.i.v
call.i matrix_set(argc=2)
popz.v
push.v builtin.firstCreationVisual
conv.v.b
not.b
bf [7]

:[5]
push.v builtin.stackVisual
pushi.e 1
cmp.i.v GT
bf [7]

:[6]
push.v builtin.stackTxt
pushi.e -12
pushglb.v global.zoom
mul.v.i
pushi.e 8
pushglb.v global.zoom
mul.v.i
dup.v 2 8
dup.v 0
push.v stacktop.draw
callv.v 2
popz.v

:[7]
pushloc.v local.wm
pushi.e 2
conv.i.v
call.i matrix_set(argc=2)
popz.v

:[end]