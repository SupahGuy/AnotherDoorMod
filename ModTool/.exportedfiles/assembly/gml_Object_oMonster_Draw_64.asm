; WARNING: Missing code locals, possibly due to unsupported bytecode version or a brand new code entry.

:[0]
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
push.v builtin.structMonster
pushglb.v global.monsters
pushi.e -9
push.v [stacktop]self.funfair
cmp.v.v EQ
bf [2]

:[1]
pushglb.v global.fightManager
pushi.e -9
push.v [stacktop]self.state
push.l 3
cmp.l.v GTE
b [3]

:[2]
push.e 0

:[3]
bf [10]

:[4]
pushglb.v global.uiPos
pushi.e -9
push.v [stacktop]self.monsterScene
pushi.e -9
push.v [stacktop]self.y
pushglb.v global.uiPos
pushi.e -9
push.v [stacktop]self.monsterScene
pushi.e -9
push.v [stacktop]self.x
pushi.e 0
conv.i.v
pushref.i 16777996
call.i draw_sprite(argc=4)
popz.v
pushglb.v global.playersManager
dup.v 0 8
dup.v 0
push.v stacktop.get_characters
callv.v 0
pop.v.v local._fighters
pushi.e 0
pop.v.i local._p

:[5]
pushloc.v local._p
pushloc.v local._fighters
call.i gml_Script_get_size(argc=1)
cmp.v.v LT
bf [9]

:[6]
pushi.e -7
pushloc.v local._p
conv.v.i
push.v [array]self._fighters
dup.v 0 8
dup.v 0
push.v stacktop.is_in_fight
callv.v 0
conv.v.b
bf [8]

:[7]
pushglb.v global.playersManager
pushi.e -7
pushloc.v local._p
conv.v.i
push.v [array]self._fighters
pushi.e -9
push.v [stacktop]self.number
dup.v 1 8
dup.v 0
push.v stacktop.get_cursor
callv.v 1
pushi.e -9
push.v [stacktop]self.alphaFunfair
push.i 16777215
conv.i.v
pushglb.v global.playersManager
pushi.e -7
pushloc.v local._p
conv.v.i
push.v [array]self._fighters
pushi.e -9
push.v [stacktop]self.number
dup.v 1 8
dup.v 0
push.v stacktop.get_cursor
callv.v 1
pushi.e -9
push.v [stacktop]self.angleFunfair
pushi.e 90
sub.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
pushglb.v global.uiPos
pushi.e -9
push.v [stacktop]self.monsterScene
pushi.e -9
push.v [stacktop]self.y
pushglb.v global.uiPos
pushi.e -9
push.v [stacktop]self.monsterScene
pushi.e -9
push.v [stacktop]self.x
pushi.e 1
sub.i.v
pushi.e 34
add.i.v
push.v builtin.animArrow
dup.v 0 8
dup.v 0
push.v stacktop.get_current_frame
callv.v 0
push.v builtin.animArrow
dup.v 0 8
dup.v 0
push.v stacktop.get_sprite
callv.v 0
call.i draw_sprite_ext(argc=9)
popz.v
pushglb.v global.playersManager
pushi.e -7
pushloc.v local._p
conv.v.i
push.v [array]self._fighters
pushi.e -9
push.v [stacktop]self.number
dup.v 1 8
dup.v 0
push.v stacktop.get_cursor
callv.v 1
pushi.e -9
push.v [stacktop]self.alphaFunfair
push.i 16777215
conv.i.v
pushglb.v global.playersManager
pushi.e -7
pushloc.v local._p
conv.v.i
push.v [array]self._fighters
pushi.e -9
push.v [stacktop]self.number
dup.v 1 8
dup.v 0
push.v stacktop.get_cursor
callv.v 1
pushi.e -9
push.v [stacktop]self.angleFunfair
pushi.e 90
sub.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
pushglb.v global.uiPos
pushi.e -9
push.v [stacktop]self.monsterScene
pushi.e -9
push.v [stacktop]self.y
pushglb.v global.uiPos
pushi.e -9
push.v [stacktop]self.monsterScene
pushi.e -9
push.v [stacktop]self.x
pushi.e 1
sub.i.v
pushi.e 34
add.i.v
pushi.e 0
conv.i.v
pushi.e -7
pushloc.v local._p
conv.v.i
push.v [array]self._fighters
pushi.e -9
push.v [stacktop]self.number
pushi.e 1
add.i.v
push.s "sprWheelArrow{0}"@10661
conv.s.v
call.i @@string@@(argc=2)
call.i asset_get_index(argc=1)
call.i draw_sprite_ext(argc=9)
popz.v

:[8]
push.v local._p
push.e 1
add.i.v
pop.v.v local._p
b [5]

:[9]
pushglb.v global.uiPos
pushi.e -9
push.v [stacktop]self.monsterScene
pushi.e -9
push.v [stacktop]self.y
pushglb.v global.uiPos
pushi.e -9
push.v [stacktop]self.monsterScene
pushi.e -9
push.v [stacktop]self.x
pushi.e 1
sub.i.v
pushi.e 34
add.i.v
pushi.e 0
conv.i.v
pushref.i 16778004
call.i draw_sprite(argc=4)
popz.v
b [28]

:[10]
push.v builtin.structMonster
pushglb.v global.monsters
pushi.e -9
push.v [stacktop]self.babayaga
cmp.v.v EQ
bf [20]

:[11]
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
pushglb.v global.uiPos
pushi.e -9
push.v [stacktop]self.monsterScene
pushi.e -9
push.v [stacktop]self.y
pushglb.v global.uiPos
pushi.e -9
push.v [stacktop]self.monsterScene
pushi.e -9
push.v [stacktop]self.x
pushi.e 0
conv.i.v
pushref.i 16777245
call.i draw_sprite_ext(argc=9)
popz.v
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
pushglb.v global.uiPos
pushi.e -9
push.v [stacktop]self.monsterScene
pushi.e -9
push.v [stacktop]self.y
pushi.e 30
sub.i.v
push.v builtin.bellOffset
add.v.v
pushglb.v global.uiPos
pushi.e -9
push.v [stacktop]self.monsterScene
pushi.e -9
push.v [stacktop]self.x
pushi.e 1
sub.i.v
pushi.e 0
conv.i.v
pushref.i 16777244
call.i draw_sprite_ext(argc=9)
popz.v
pushglb.v global.displayControllerAsset
push.l 0
cmp.l.v NEQ
bf [13]

:[12]
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
pushglb.v global.uiPos
pushi.e -9
push.v [stacktop]self.monsterScene
pushi.e -9
push.v [stacktop]self.y
pushi.e 90
sub.i.v
pushglb.v global.uiPos
pushi.e -9
push.v [stacktop]self.monsterScene
pushi.e -9
push.v [stacktop]self.x
pushi.e 0
conv.i.v
pushref.i 16777334
call.i draw_sprite_ext(argc=9)
popz.v
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
pushglb.v global.uiPos
pushi.e -9
push.v [stacktop]self.monsterScene
pushi.e -9
push.v [stacktop]self.y
pushi.e 90
sub.i.v
pushglb.v global.uiPos
pushi.e -9
push.v [stacktop]self.monsterScene
pushi.e -9
push.v [stacktop]self.x
push.v builtin.animBtnStop
dup.v 0 8
dup.v 0
push.v stacktop.get_current_frame
callv.v 0
push.v builtin.animBtnStop
dup.v 0 8
dup.v 0
push.v stacktop.get_sprite
callv.v 0
call.i draw_sprite_ext(argc=9)
popz.v

:[13]
pushi.e 0
pop.v.i local._i

:[14]
pushloc.v local._i
push.v builtin.babaHands
call.i array_length(argc=1)
cmp.v.v LT
bf [19]

:[15]
pushi.e -1
pushloc.v local._i
conv.v.i
push.v [array]self.babaHands
pushi.e -9
push.v [stacktop]self.alpha
pushi.e 0
cmp.i.v EQ
bf [17]

:[16]
b [18]

:[17]
pushi.e -1
pushloc.v local._i
conv.v.i
push.v [array]self.babaHands
pushi.e -9
push.v [stacktop]self.alpha
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
pushi.e -1
pushloc.v local._i
conv.v.i
push.v [array]self.babaHands
pushi.e -9
push.v [stacktop]self.y
pushi.e -1
pushloc.v local._i
conv.v.i
push.v [array]self.babaHands
pushi.e -9
push.v [stacktop]self.x
pushi.e 0
conv.i.v
pushi.e -1
pushloc.v local._i
conv.v.i
push.v [array]self.babaHands
pushi.e -9
push.v [stacktop]self.sprite
call.i draw_sprite_ext(argc=9)
popz.v

:[18]
push.v local._i
push.e 1
add.i.v
pop.v.v local._i
b [14]

:[19]
b [28]

:[20]
push.v builtin.structMonster
pushglb.v global.monsters
pushi.e -9
push.v [stacktop]self.faun
cmp.v.v EQ
bf [22]

:[21]
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
pushi.e 146
conv.i.v
pushglb.v global.uiPos
pushi.e -9
push.v [stacktop]self.monsterScene
pushi.e -9
push.v [stacktop]self.x
pushi.e 3
conv.i.v
pushref.i 16777393
call.i draw_sprite_ext(argc=9)
popz.v
pushbltn.v builtin.current_time
pushi.e 300
conv.i.d
div.d.v
call.i cos(argc=1)
pushi.e 1
add.i.v
pushi.e 2
conv.i.d
div.d.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
pushi.e 146
conv.i.v
pushglb.v global.uiPos
pushi.e -9
push.v [stacktop]self.monsterScene
pushi.e -9
push.v [stacktop]self.x
pushi.e 0
conv.i.v
pushref.i 16777393
call.i draw_sprite_ext(argc=9)
popz.v
b [28]

:[22]
push.v builtin.structMonster
pushglb.v global.monsters
pushi.e -9
push.v [stacktop]self.platonia
cmp.v.v EQ
bf [24]

:[23]
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
pushglb.v global.uiPos
pushi.e -9
push.v [stacktop]self.monsterScene
pushi.e -9
push.v [stacktop]self.y
pushglb.v global.uiPos
pushi.e -9
push.v [stacktop]self.monsterScene
pushi.e -9
push.v [stacktop]self.x
pushi.e 0
conv.i.v
pushref.i 16777772
call.i draw_sprite_ext(argc=9)
popz.v
pushglb.v global.uiPos
pushi.e -9
pushi.e 0
push.v [array]self.platoniaClock
pushi.e -9
push.v [stacktop]self.y
pushglb.v global.uiPos
pushi.e -9
pushi.e 0
push.v [array]self.platoniaClock
pushi.e -9
push.v [stacktop]self.x
push.v builtin.clockCurrentImage
pushref.i 16777767
call.i draw_sprite(argc=4)
popz.v
pushglb.v global.uiPos
pushi.e -9
pushi.e 1
push.v [array]self.platoniaClock
pushi.e -9
push.v [stacktop]self.y
pushglb.v global.uiPos
pushi.e -9
pushi.e 1
push.v [array]self.platoniaClock
pushi.e -9
push.v [stacktop]self.x
push.v builtin.clockCurrentImage
pushref.i 16777767
call.i draw_sprite(argc=4)
popz.v
b [28]

:[24]
push.v builtin.structMonster
pushglb.v global.monsters
pushi.e -9
push.v [stacktop]self.blackMarket
cmp.v.v EQ
bf [26]

:[25]
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
pushglb.v global.uiPos
pushi.e -9
push.v [stacktop]self.monsterScene
pushi.e -9
push.v [stacktop]self.y
pushglb.v global.uiPos
pushi.e -9
push.v [stacktop]self.monsterScene
pushi.e -9
push.v [stacktop]self.x
pushi.e 0
conv.i.v
pushref.i 16777264
call.i draw_sprite_ext(argc=9)
popz.v
b [28]

:[26]
push.v builtin.structMonster
pushglb.v global.monsters
pushi.e -9
push.v [stacktop]self.shop
cmp.v.v EQ
bf [28]

:[27]
pushglb.v global.uiPos
pushi.e -9
push.v [stacktop]self.monsterScene
pushi.e -9
push.v [stacktop]self.y
pushglb.v global.uiPos
pushi.e -9
push.v [stacktop]self.monsterScene
pushi.e -9
push.v [stacktop]self.x
pushi.e 0
conv.i.v
pushref.i 16777801
call.i draw_sprite(argc=4)
popz.v
pushglb.v global.uiPos
pushi.e -9
push.v [stacktop]self.monsterScene
pushi.e -9
push.v [stacktop]self.y
pushglb.v global.uiPos
pushi.e -9
push.v [stacktop]self.monsterScene
pushi.e -9
push.v [stacktop]self.x
pushi.e 0
conv.i.v
pushref.i 16777803
call.i draw_sprite(argc=4)
popz.v
pushglb.v global.uiPos
pushi.e -9
push.v [stacktop]self.monsterScene
pushi.e -9
push.v [stacktop]self.y
pushglb.v global.uiPos
pushi.e -9
push.v [stacktop]self.monsterScene
pushi.e -9
push.v [stacktop]self.x
pushi.e 0
conv.i.v
pushref.i 16777802
call.i draw_sprite(argc=4)
popz.v

:[28]
call.i gml_Script_upscale_pixelart_end(argc=0)
popz.v
push.v builtin.txtName
pushbltn.v builtin.undefined
cmp.v.v NEQ
bf [30]

:[29]
push.v builtin.txtName
push.v builtin.image_alpha
push.i 16777215
conv.i.v
dup.v 2 8
dup.v 0
push.v stacktop.blend
callv.v 2
pushglb.v global.uiPos
pushi.e -9
push.v [stacktop]self.mobTxt
pushi.e -9
push.v [stacktop]self.y
pushglb.v global.zoom
mul.v.v
pushglb.v global.uiPos
pushi.e -9
push.v [stacktop]self.mobTxt
pushi.e -9
push.v [stacktop]self.x
pushglb.v global.zoom
mul.v.v
dup.v 2 8
dup.v 0
push.v stacktop.draw
callv.v 2
popz.v

:[30]
push.v builtin.structMonster
pushglb.v global.monsters
pushi.e -9
push.v [stacktop]self.babayaga
cmp.v.v EQ
bf [32]

:[31]
pushglb.v global.fightManager
pushi.e -9
push.v [stacktop]self.state
push.l 4
cmp.l.v GTE
b [33]

:[32]
push.e 0

:[33]
bf [37]

:[34]
pushglb.v global.displayControllerAsset
push.l 0
cmp.l.v NEQ
bf [36]

:[35]
push.v builtin.txtStop
pushi.e 22
pushglb.v global.zoom
mul.v.i
pushglb.v global.uiPos
pushi.e -9
push.v [stacktop]self.monsterScene
pushi.e -9
push.v [stacktop]self.x
pushglb.v global.zoom
mul.v.v
dup.v 2 8
dup.v 0
push.v stacktop.draw
callv.v 2
popz.v

:[36]
b [39]

:[37]
push.v builtin.structMonster
pushglb.v global.monsters
pushi.e -9
push.v [stacktop]self.blackMarket
cmp.v.v EQ
bf [39]

:[38]
push.v builtin.txtPendulumValue
pushglb.v global.uiPos
pushi.e -9
push.v [stacktop]self.monsterScene
pushi.e -9
push.v [stacktop]self.y
pushi.e 56
sub.i.v
pushglb.v global.zoom
mul.v.v
pushglb.v global.uiPos
pushi.e -9
push.v [stacktop]self.monsterScene
pushi.e -9
push.v [stacktop]self.x
pushglb.v global.zoom
mul.v.v
dup.v 2 8
dup.v 0
push.v stacktop.draw
callv.v 2
popz.v

:[39]
call.i gml_Script_upscale_pixelart_start(argc=0)
popz.v
push.v builtin.structMonster
pushglb.v global.monsters
pushi.e -9
push.v [stacktop]self.blackMarket
cmp.v.v EQ
bf [41]

:[40]
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
pushglb.v global.uiPos
pushi.e -9
push.v [stacktop]self.monsterScene
pushi.e -9
push.v [stacktop]self.y
pushi.e 53
sub.i.v
pushglb.v global.uiPos
pushi.e -9
push.v [stacktop]self.monsterScene
pushi.e -9
push.v [stacktop]self.x
push.v builtin.hidePriceSprite
dup.v 0 8
dup.v 0
push.v stacktop.get_current_frame
callv.v 0
push.v builtin.hidePriceSprite
dup.v 0 8
dup.v 0
push.v stacktop.get_sprite
callv.v 0
call.i draw_sprite_ext(argc=9)
popz.v

:[41]
call.i gml_Script_upscale_pixelart_end(argc=0)
popz.v

:[end]