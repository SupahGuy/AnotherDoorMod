; WARNING: Missing code locals, possibly due to unsupported bytecode version or a brand new code entry.

:[0]
call.i gml_Script_live_call(argc=0)
conv.v.b
bf [2]

:[1]
pushglb.v global.live_result
ret.v

:[2]
call.i @@This@@(argc=0)
push.v builtin.is_visible
callv.v 0
conv.v.b
not.b
bf [4]

:[3]
exit.i

:[4]
push.v builtin.image_angle
push.v builtin.wiggle
dup.v 0 8
dup.v 0
push.v stacktop.get_angle
callv.v 0
add.v.v
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
push.v builtin.cardType
push.l 5
cmp.l.v EQ
bt [6]

:[5]
push.v builtin.cardType
push.l 9
cmp.l.v EQ
b [7]

:[6]
push.e 1

:[7]
bf [9]

:[8]
push.v builtin.image_alpha
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
push.v builtin.height
neg.v
pushi.e 2
conv.i.d
div.d.v
push.v builtin.sprite_yoffset
add.v.v
push.v builtin.width
neg.v
pushi.e 2
conv.i.d
div.d.v
push.v builtin.sprite_xoffset
add.v.v
pushi.e 0
conv.i.v
push.v builtin.sprite_index
call.i draw_sprite_ext(argc=9)
popz.v
b [20]

:[9]
push.v builtin.cardType
push.l 6
cmp.l.v EQ
bt [12]

:[10]
push.v builtin.cardType
push.l 7
cmp.l.v EQ
bt [12]

:[11]
push.v builtin.cardType
push.l 8
cmp.l.v EQ
b [13]

:[12]
push.e 1

:[13]
bf [15]

:[14]
b [20]

:[15]
push.v builtin.image_alpha
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
push.v builtin.height
neg.v
pushi.e 2
conv.i.d
div.d.v
push.v builtin.width
neg.v
pushi.e 2
conv.i.d
div.d.v
push.v builtin.image_index
push.v builtin.sprite_index
call.i draw_sprite_ext(argc=9)
popz.v
push.v builtin.image_alpha
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
push.v builtin.height
neg.v
pushi.e 2
conv.i.d
div.d.v
pushi.e 29
add.i.v
push.v builtin.offsetJiggleItemY
add.v.v
push.v builtin.width
neg.v
pushi.e 2
conv.i.d
div.d.v
pushi.e 65
add.i.v
pushi.e 0
conv.i.v
push.v builtin.item
pushi.e -9
push.v [stacktop]self.sprite
call.i draw_sprite_ext(argc=9)
popz.v
pushglb.v global.displayControllerAsset
push.l 0
cmp.l.v NEQ
bf [20]

:[16]
push.v builtin.spriteButtonLinked
pushbltn.v builtin.undefined
cmp.v.v NEQ
bf [18]

:[17]
push.v builtin.image_alpha
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
push.v builtin.height
neg.v
pushi.e 2
conv.i.d
div.d.v
pushi.e 1
add.i.v
pushi.e 180
add.i.v
push.v builtin.width
neg.v
pushi.e 2
conv.i.d
div.d.v
pushi.e 65
add.i.v
pushi.e 0
conv.i.v
push.v builtin.spriteButtonLinked
call.i draw_sprite_ext(argc=9)
popz.v

:[18]
push.v builtin.animBtn
pushbltn.v builtin.undefined
cmp.v.v NEQ
bf [20]

:[19]
push.v builtin.image_alpha
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
push.v builtin.height
neg.v
pushi.e 2
conv.i.d
div.d.v
pushi.e 181
add.i.v
push.v builtin.width
neg.v
pushi.e 2
conv.i.d
div.d.v
pushi.e 65
add.i.v
push.v builtin.animBtn
dup.v 0 8
dup.v 0
push.v stacktop.get_current_frame
callv.v 0
push.v builtin.animBtn
dup.v 0 8
dup.v 0
push.v stacktop.get_sprite
callv.v 0
call.i draw_sprite_ext(argc=9)
popz.v

:[20]
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
push.v builtin.image_angle
push.v builtin.wiggle
dup.v 0 8
dup.v 0
push.v stacktop.get_angle
callv.v 0
add.v.v
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
push.v builtin.cardType
push.l 5
cmp.l.v NEQ
bf [25]

:[21]
push.v builtin.cardType
push.l 6
cmp.l.v NEQ
bf [25]

:[22]
push.v builtin.cardType
push.l 7
cmp.l.v NEQ
bf [25]

:[23]
push.v builtin.cardType
push.l 8
cmp.l.v NEQ
bf [25]

:[24]
push.v builtin.cardType
push.l 9
cmp.l.v NEQ
b [26]

:[25]
push.e 0

:[26]
bf [31]

:[27]
pushglb.v global.displayControllerAsset
push.l 0
cmp.l.v EQ
bf [29]

:[28]
pushi.e 6
pop.v.i local._offsetDescY
b [30]

:[29]
pushi.e 0
pop.v.i local._offsetDescY

:[30]
push.v builtin.txtName
push.v builtin.image_alpha
push.i 16777215
conv.i.v
dup.v 2 8
dup.v 0
push.v stacktop.blend
callv.v 2
push.v builtin.height
neg.v
pushi.e 2
conv.i.d
div.d.v
pushglb.v global.uiPos
pushi.e -9
push.v [stacktop]self.cardItemName
pushi.e -9
push.v [stacktop]self.y
add.v.v
pushglb.v global.zoom
mul.v.v
push.v builtin.width
neg.v
pushi.e 2
conv.i.d
div.d.v
push.v builtin.spriteWidth
pushi.e 2
conv.i.d
div.d.v
add.v.v
pushglb.v global.zoom
mul.v.v
dup.v 2 8
dup.v 0
push.v stacktop.draw
callv.v 2
popz.v
push.v builtin.txtDesc
push.v builtin.image_alpha
push.i 16777215
conv.i.v
dup.v 2 8
dup.v 0
push.v stacktop.blend
callv.v 2
push.v builtin.height
neg.v
pushi.e 2
conv.i.d
div.d.v
pushloc.v local._offsetDescY
add.v.v
pushglb.v global.uiPos
pushi.e -9
push.v [stacktop]self.cardItemDesc
pushi.e -9
push.v [stacktop]self.y
add.v.v
pushglb.v global.zoom
mul.v.v
push.v builtin.width
neg.v
pushi.e 2
conv.i.d
div.d.v
push.v builtin.spriteWidth
pushi.e 2
conv.i.d
div.d.v
add.v.v
pushglb.v global.zoom
mul.v.v
dup.v 2 8
dup.v 0
push.v stacktop.draw
callv.v 2
popz.v

:[31]
pushloc.v local.wm
pushi.e 2
conv.i.v
call.i matrix_set(argc=2)
popz.v

:[end]