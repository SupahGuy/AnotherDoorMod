; WARNING: Missing code locals, possibly due to unsupported bytecode version or a brand new code entry.

:[0]
pushbltn.v builtin.room
pushref.i 50331655
cmp.v.v EQ
bf [12]

:[1]
call.i gml_Script_upscale_pixelart_start(argc=0)
popz.v
push.v builtin.cardIdLand
pushi.e -4
cmp.i.v NEQ
bf [3]

:[2]
push.v builtin.cardIdLand
call.i instance_exists(argc=1)
conv.v.b
b [4]

:[3]
push.e 0

:[4]
bf [10]

:[5]
push.v builtin.cardIdLand
pushi.e -9
push.v [stacktop]self.x
push.v builtin.cardIdLand
pushi.e -9
push.v [stacktop]self.xprevious
cmp.v.v NEQ
bf [7]

:[6]
push.v builtin.xDraw
push.v builtin.cardIdLand
pushi.e -9
push.v [stacktop]self.x
push.v builtin.cardIdLand
pushi.e -9
push.v [stacktop]self.xprevious
sub.v.v
add.v.v
pop.v.v builtin.xDraw

:[7]
push.v builtin.cardIdLand
pushi.e -9
push.v [stacktop]self.y
push.v builtin.cardIdLand
pushi.e -9
push.v [stacktop]self.yprevious
cmp.v.v NEQ
bf [9]

:[8]
push.v builtin.yDraw
push.v builtin.cardIdLand
pushi.e -9
push.v [stacktop]self.y
push.v builtin.cardIdLand
pushi.e -9
push.v [stacktop]self.yprevious
sub.v.v
add.v.v
pop.v.v builtin.yDraw

:[9]
push.v builtin.cardIdLand
pushi.e -9
push.v [stacktop]self.x
push.v builtin.cardIdLand
pushi.e -9
push.v [stacktop]self.width
pushi.e 2
conv.i.d
div.d.v
add.v.v
push.v builtin.cardIdLand
pushi.e -9
push.v [stacktop]self.sprite_xoffset
sub.v.v
pop.v.v local._cardCenterX
push.v builtin.cardIdLand
pushi.e -9
push.v [stacktop]self.y
push.v builtin.cardIdLand
pushi.e -9
push.v [stacktop]self.height
pushi.e 2
conv.i.d
div.d.v
add.v.v
push.v builtin.cardIdLand
pushi.e -9
push.v [stacktop]self.sprite_yoffset
sub.v.v
pop.v.v local._cardCenterY
push.v builtin.cardIdLand
pushi.e -9
push.v [stacktop]self.image_angle
push.v builtin.cardIdLand
pushi.e -9
push.v [stacktop]self.wiggle
dup.v 0 8
dup.v 0
push.v stacktop.get_angle
callv.v 0
add.v.v
pop.v.v local._cardAngle
pushloc.v local._cardAngle
neg.v
pushloc.v local._cardCenterY
pushloc.v local._cardCenterX
pushloc.v local._cardCenterY
pushloc.v local._cardCenterY
push.v builtin.yDraw
sub.v.v
add.v.v
pushloc.v local._cardCenterX
pushloc.v local._cardCenterX
push.v builtin.xDraw
sub.v.v
add.v.v
call.i gml_Script_getCoordinatesRotatedPoint(argc=5)
pop.v.v local._coordinateRelativeCard
push.v builtin.image_alpha
push.v builtin.image_blend
pushloc.v local._cardAngle
push.v builtin.image_yscale
push.v builtin.image_xscale
pushi.e -7
pushi.e 1
push.v [array]self._coordinateRelativeCard
pushi.e -7
pushi.e 0
push.v [array]self._coordinateRelativeCard
push.v builtin.image_index
push.v builtin.sprite_index
call.i draw_sprite_ext(argc=9)
popz.v
b [11]

:[10]
push.v builtin.image_alpha
push.v builtin.image_blend
push.v builtin.image_angle
push.v builtin.image_yscale
push.v builtin.image_xscale
push.v builtin.yDraw
push.v builtin.xDraw
push.v builtin.image_index
push.v builtin.sprite_index
call.i draw_sprite_ext(argc=9)
popz.v

:[11]
call.i gml_Script_upscale_pixelart_end(argc=0)
popz.v
b [end]

:[12]
pushbltn.v builtin.room
pushref.i 50331656
cmp.v.v EQ
bf [end]

:[13]
call.i gml_Script_upscale_pixelart_start(argc=0)
popz.v
push.v builtin.image_alpha
push.v builtin.image_blend
push.v builtin.image_angle
push.v builtin.image_yscale
push.v builtin.image_xscale
push.v builtin.y
push.v builtin.x
push.v builtin.image_index
push.v builtin.sprite_index
call.i draw_sprite_ext(argc=9)
popz.v
call.i gml_Script_upscale_pixelart_end(argc=0)
popz.v

:[end]