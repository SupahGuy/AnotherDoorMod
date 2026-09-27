; WARNING: Missing code locals, possibly due to unsupported bytecode version or a brand new code entry.

:[0]
pushref.i 19
pushi.e -9
pushenv [2]

:[1]
call.i gml_Script_upscale_pixelart_start(argc=0)
popz.v
pushi.e 16
pop.v.i local._spacing
pushref.i 16777784
call.i sprite_get_width(argc=1)
pop.v.v local._spriteWidth
pushglb.v global.gameWidth
pushi.e 2
conv.i.d
div.d.v
pushloc.v local._spriteWidth
pushglb.v global.playersCount
mul.v.v
pushloc.v local._spacing
pushglb.v global.playersCount
pushi.e 1
sub.i.v
mul.v.v
add.v.v
pushi.e 2
conv.i.d
div.d.v
sub.v.v
push.v builtin.number
pushloc.v local._spriteWidth
pushloc.v local._spacing
add.v.v
mul.v.v
add.v.v
pop.v.v local._x
pushi.e 280
pop.v.i local._y
pushloc.v local._x
call.i round(argc=1)
pop.v.v local._x
pushloc.v local._y
call.i round(argc=1)
pop.v.v local._y
push.v builtin.image_alpha
push.v builtin.image_blend
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
pushloc.v local._y
pushloc.v local._x
pushi.e 0
conv.i.v
pushref.i 16777784
call.i draw_sprite_ext(argc=9)
popz.v
push.v builtin.image_alpha
push.v builtin.image_blend
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
pushloc.v local._y
pushi.e 20
add.i.v
pushloc.v local._x
pushi.e 32
add.i.v
pushref.i 58
pushi.e -9
push.v [stacktop]self.frameSynchEight
dup.v 0 8
dup.v 0
push.v stacktop.get_current_frame
callv.v 0
push.v builtin.spriteName
push.s "spr{0}"@9289
conv.s.v
call.i @@string@@(argc=2)
call.i asset_get_index(argc=1)
call.i draw_sprite_ext(argc=9)
popz.v
push.v builtin.image_alpha
push.v builtin.image_blend
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
pushloc.v local._y
pushi.e 40
add.i.v
pushloc.v local._x
pushi.e 32
add.i.v
pushi.e 0
conv.i.v
pushref.i 16777775
call.i draw_sprite_ext(argc=9)
popz.v
pushloc.v local._y
pushi.e 52
add.i.v
pushloc.v local._x
pushi.e 44
add.i.v
pushi.e 0
conv.i.v
pushref.i 16777957
call.i draw_sprite(argc=4)
popz.v
call.i gml_Script_upscale_pixelart_end(argc=0)
popz.v
push.v builtin.gemTxt
pushloc.v local._y
pushi.e 56
add.i.v
pushglb.v global.zoom
mul.v.v
pushloc.v local._x
pushi.e 42
add.i.v
pushglb.v global.zoom
mul.v.v
dup.v 2 8
dup.v 0
push.v stacktop.draw
callv.v 2
popz.v

:[2]
popenv [1]

:[end]