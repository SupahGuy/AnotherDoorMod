:[0]
pushbltn.v builtin.room
pushref.i 50331651
cmp.v.v EQ
bf [2]

:[1]
exit.i

:[2]
push.v builtin.theSprite
pushi.e -1
cmp.i.v NEQ
bf [4]

:[3]
call.i gml_Script_upscale_pixelart_start(argc=0)
popz.v
push.v builtin.image_alpha
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
push.v builtin.scaleCur
push.v builtin.scaleCur
push.v builtin.y
push.v builtin.x
push.v builtin.labelDrawW
pushi.e 2
conv.i.d
div.d.v
pushglb.v global.zoom
div.v.v
call.i round(argc=1)
sub.v.v
push.v builtin.sprW
pushi.e 2
conv.i.d
div.d.v
sub.v.v
pushi.e 0
conv.i.v
push.v builtin.theSprite
call.i draw_sprite_ext(argc=9)
popz.v
call.i gml_Script_upscale_pixelart_end(argc=0)
popz.v

:[4]
push.v builtin.labelDraw
push.v builtin.scaleCur
pushglb.v global.fontScaleTitle
mul.v.v
dup.v 1 8
dup.v 0
push.v stacktop.scale
callv.v 1
push.v builtin.image_alpha
push.i 16777215
conv.i.v
dup.v 2 8
dup.v 0
push.v stacktop.blend
callv.v 2
push.v builtin.y
pushglb.v global.zoom
mul.v.v
call.i round(argc=1)
push.v builtin.x
pushglb.v global.zoom
mul.v.v
call.i round(argc=1)
dup.v 2 8
dup.v 0
push.v stacktop.draw
callv.v 2
popz.v

:[end]