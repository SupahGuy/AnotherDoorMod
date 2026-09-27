; WARNING: Missing code locals, possibly due to unsupported bytecode version or a brand new code entry.

:[0]
call.i gml_Script_upscale_pixelart_start(argc=0)
popz.v
push.v builtin.partSysDial
call.i part_system_drawit(argc=1)
popz.v
push.v builtin.image_alpha
push.i 16777215
conv.i.v
push.v builtin.height
push.v builtin.textBgWidth
push.v builtin.y
push.v builtin.x
pushi.e 0
conv.i.v
push.v builtin.bgDialogueSprite
call.i draw_sprite_stretched_ext(argc=8)
popz.v
push.v builtin.closeType
push.l 1
cmp.l.v EQ
bf [7]

:[1]
pushi.e 0
pop.v.i local._p

:[2]
pushloc.v local._p
pushglb.v global.playersCount
cmp.v.v LT
bf [6]

:[3]
push.v builtin.image_alpha
push.v builtin.image_blend
push.v builtin.image_angle
push.v builtin.image_yscale
push.v builtin.image_xscale
push.v builtin.y
push.v builtin.yCheck
add.v.v
push.v builtin.x
push.v builtin.xCheck
add.v.v
pushloc.v local._p
pushi.e 8
mul.i.v
add.v.v
pushi.e 0
conv.i.v
pushref.i 16777347
call.i draw_sprite_ext(argc=9)
popz.v
call.i @@Global@@(argc=0)
pushi.e -9
pushloc.v local._p
conv.v.i
push.v [array]self.dialogueValidated
conv.v.b
bf [5]

:[4]
push.v builtin.image_alpha
push.v builtin.image_blend
push.v builtin.image_angle
push.v builtin.image_yscale
push.v builtin.image_xscale
push.v builtin.y
push.v builtin.yCheck
add.v.v
pushi.e 1
add.i.v
push.v builtin.x
push.v builtin.xCheck
add.v.v
pushloc.v local._p
pushi.e 8
mul.i.v
add.v.v
pushi.e 1
add.i.v
pushi.e -1
pushloc.v local._p
conv.v.i
push.v [array]self.animCheckArray
dup.v 0 8
dup.v 0
push.v stacktop.get_current_frame
callv.v 0
pushi.e -1
pushloc.v local._p
conv.v.i
push.v [array]self.animCheckArray
dup.v 0 8
dup.v 0
push.v stacktop.get_sprite
callv.v 0
call.i draw_sprite_ext(argc=9)
popz.v

:[5]
push.v local._p
push.e 1
add.i.v
pop.v.v local._p
b [2]

:[6]
push.v builtin.image_alpha
push.v builtin.image_blend
push.v builtin.image_angle
push.v builtin.image_yscale
push.v builtin.image_xscale
push.v builtin.y
push.v builtin.height
add.v.v
push.v builtin.paddingBottom
sub.v.v
push.v builtin.animBtn
dup.v 0 8
dup.v 0
push.v stacktop.get_sprite
callv.v 0
call.i sprite_get_height(argc=1)
sub.v.v
push.v builtin.x
push.v builtin.width
add.v.v
push.v builtin.caretW
sub.v.v
push.v builtin.paddingRight
sub.v.v
pushi.e 2
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

:[7]
call.i gml_Script_upscale_pixelart_end(argc=0)
popz.v
push.v builtin.textBody
push.v builtin.image_alpha
push.i 16777215
conv.i.v
dup.v 2 8
dup.v 0
push.v stacktop.blend
callv.v 2
push.v builtin.typist
push.v builtin.y
pushglb.v global.zoom
mul.v.v
push.v builtin.x
pushglb.v global.zoom
mul.v.v
dup.v 3 8
dup.v 0
push.v stacktop.draw
callv.v 3
popz.v

:[end]