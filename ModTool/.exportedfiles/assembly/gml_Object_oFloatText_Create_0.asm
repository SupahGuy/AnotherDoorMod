; WARNING: Missing code locals, possibly due to unsupported bytecode version or a brand new code entry.

:[0]
push.s "label"@8853
conv.s.v
push.v builtin.id
call.i variable_instance_exists(argc=2)
conv.v.b
not.b
bf [2]

:[1]
push.s ""@61
pop.v.s builtin.label

:[2]
push.s "labelOriginal"@9333
conv.s.v
push.v builtin.id
call.i variable_instance_exists(argc=2)
conv.v.b
not.b
bf [4]

:[3]
push.s "1"@1481
pop.v.s builtin.labelOriginal

:[4]
push.s "sprSource"@9334
conv.s.v
push.v builtin.id
call.i variable_instance_exists(argc=2)
conv.v.b
not.b
bf [6]

:[5]
pushi.e -1
pop.v.i builtin.sprSource

:[6]
push.s "category"@4864
conv.s.v
push.v builtin.id
call.i variable_instance_exists(argc=2)
conv.v.b
not.b
bf [8]

:[7]
push.l 1
pop.v.l builtin.category

:[8]
push.s "owner"@8981
conv.s.v
push.v builtin.id
call.i variable_instance_exists(argc=2)
conv.v.b
not.b
bf [10]

:[9]
pushbltn.v builtin.undefined
pop.v.v builtin.owner

:[10]
push.v builtin.owner
pushbltn.v builtin.undefined
cmp.v.v NEQ
bf [18]

:[11]
push.v builtin.owner
pushi.e -9
pushenv [17]

:[12]
pushi.e 0
pop.v.i local._i

:[13]
pushloc.v local._i
push.v builtin.fightText
call.i array_length(argc=1)
cmp.v.v LT
bf [17]

:[14]
pushi.e -6
pushloc.v local._i
conv.v.i
push.v [array]self.fightText
call.i instance_exists(argc=1)
conv.v.b
bf [16]

:[15]
pushi.e 16
pop.v.i local._offset
pushi.e -1
pushloc.v local._i
conv.v.i
push.v [array]self.fightText
pushi.e -9
dup.i 4
push.v [stacktop]self.yTo
pushloc.v local._offset
sub.v.v
pop.i.v [stacktop]self.yTo
pushi.e -1
pushloc.v local._i
conv.v.i
push.v [array]self.fightText
pushi.e -9
dup.i 4
push.v [stacktop]self.yInitTo
pushloc.v local._offset
sub.v.v
pop.i.v [stacktop]self.yInitTo

:[16]
push.v local._i
push.e 1
add.i.v
pop.v.v local._i
b [13]

:[17]
popenv [12]
push.v builtin.id
push.v builtin.owner
pushi.e -9
push.v [stacktop]self.fightText
call.i array_push(argc=2)
popz.v

:[18]
pushbltn.v builtin.undefined
pop.v.v builtin.state
push.l 0
pop.v.l builtin.stateNext
pushbltn.v builtin.undefined
pop.v.v builtin.statePrev
pushglb.v global.depthManager
push.s "floatText"@4999
conv.s.v
dup.v 1 8
dup.v 0
push.v stacktop.get_depth
callv.v 1
pop.v.v builtin.depth
pushbltn.v builtin.undefined
pop.v.v builtin.shakeStrenght
push.v builtin.sprSource
push.s ""@61
cmp.s.v NEQ
bf [20]

:[19]
push.v builtin.sprSource
call.i asset_get_index(argc=1)
b [21]

:[20]
pushi.e -1
conv.i.v

:[21]
pop.v.v builtin.theSprite
push.v builtin.sprSource
pushi.e -1
cmp.i.v NEQ
bf [23]

:[22]
push.v builtin.theSprite
call.i sprite_get_width(argc=1)
pop.v.v builtin.sprW
b [24]

:[23]
pushi.e 0
pop.v.i builtin.sprW

:[24]
push.v builtin.y
pop.v.v builtin.yInit
push.v builtin.y
pop.v.v builtin.yInitTo
push.v builtin.y
pushi.e 16
sub.i.v
pop.v.v builtin.yTo
push.v builtin.owner
pushbltn.v builtin.undefined
cmp.v.v NEQ
bf [29]

:[25]
push.v builtin.owner
pushi.e -9
push.v [stacktop]self.fightTextPosition
pushi.e 2
mod.i.v
conv.v.b
bf [27]

:[26]
pushi.e -16
conv.i.v
b [28]

:[27]
pushi.e 16
conv.i.v

:[28]
pop.v.v local._offsetXto
push.v builtin.owner
pushi.e -9
dup.i 4
push.v [stacktop]self.fightTextPosition
push.e 1
add.i.v
pop.i.v [stacktop]self.fightTextPosition
b [30]

:[29]
pushi.e 16
conv.i.v
pushi.e -16
conv.i.v
call.i choose(argc=2)
pop.v.v local._offsetXto

:[30]
push.v builtin.category
push.l 3
cmp.l.v NEQ
bf [32]

:[31]
pushi.e 0
conv.i.v
b [33]

:[32]
pushi.e 0
conv.i.v

:[33]
pop.v.v local._offsetX
push.v builtin.x
pushloc.v local._offsetX
add.v.v
pop.v.v builtin.xInit
push.v builtin.xInit
pushloc.v local._offsetXto
add.v.v
pop.v.v builtin.xTo
pushi.e 1
pop.v.i builtin.scaleInit
pushi.e 1
pop.v.i builtin.scaleCur
pushi.e 1
pop.v.i builtin.scaleTo
push.s "damage"@9541
pop.v.s local._easeAppear
push.d 0.2
pop.v.d local._timerAppear
push.s "ease-in-out"@8753
pop.v.s local._easeWait
push.d 2.5
pop.v.d local._timerWait
push.s "ease-in"@9546
pop.v.s local._easeDisappear
push.d 0.5
pop.v.d local._timerDisappear
push.s "ease-out"@8749
pop.v.s local._easeAll
push.s "ease-out"@8749
pop.v.s local._easeAll2
push.v builtin.category
push.l 2
cmp.l.v EQ
bf [35]

:[34]
push.v builtin.label
push.s "+{0}"@9551
conv.s.v
call.i @@string@@(argc=2)
pop.v.v builtin.label
push.s "green1"@7336
pop.v.s local._color
push.s "floatHeal"@9553
pop.v.s local._cache
push.s "ftNbrBig"@5422
pop.v.s local._font
push.s "pingpong-ease-inout"@9555
pop.v.s local._easeAppear
pushi.e 2
pop.v.i builtin.scaleTo
b [44]

:[35]
push.v builtin.category
push.l 0
cmp.l.v EQ
bf [40]

:[36]
push.s "grey1"@5384
pop.v.s local._color
push.s "floatInfo"@9556
pop.v.s local._cache
push.s "pingpong-ease-inout"@9555
pop.v.s local._easeAppear
pushi.e 2
pop.v.i builtin.scaleTo
push.v builtin.label
call.i is_numeric(argc=1)
conv.v.b
bf [38]

:[37]
push.s "ftNbrBig"@5422
pop.v.s local._font
b [39]

:[38]
push.s "ftAlkhemikalSh"@5419
pop.v.s local._font

:[39]
b [44]

:[40]
push.v builtin.category
push.l 1
cmp.l.v EQ
bf [42]

:[41]
push.s "grey1"@5384
pop.v.s local._color
push.s "floatDamage"@9557
pop.v.s local._cache
push.s "ftNbrBig"@5422
pop.v.s local._font
push.d 0.2
pop.v.d local._timerAppear
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
pushi.e 1
conv.i.v
pushi.e 50
conv.i.v
pushi.e 1
conv.i.v
push.v builtin.labelOriginal
call.i gml_Script_map_value(argc=5)
push.d 1.5
conv.d.v
call.i max(argc=2)
call.i min(argc=2)
pop.v.v builtin.scaleTo
pushglb.v global.particlesSys
call.i part_emitter_create(argc=1)
pop.v.v builtin.peText
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
push.v builtin.y
push.v builtin.y
push.v builtin.x
push.v builtin.x
push.v builtin.peText
pushglb.v global.particlesSys
call.i part_emitter_region(argc=8)
popz.v
pushi.e 50
conv.i.v
push.v builtin.labelOriginal
pushi.e 2
conv.i.d
div.d.v
call.i ceil(argc=1)
call.i min(argc=2)
pushglb.v global.particles
pushi.e -9
push.v [stacktop]self.ptHit
push.v builtin.peText
pushglb.v global.particlesSys
call.i part_emitter_burst(argc=4)
popz.v
push.v builtin.peText
pushglb.v global.particlesSys
call.i part_emitter_destroy(argc=2)
popz.v
b [44]

:[42]
push.v builtin.category
push.l 3
cmp.l.v EQ
bf [44]

:[43]
push.s "grey1"@5384
pop.v.s local._color
push.s "floatEffect"@9560
pop.v.s local._cache
push.s "ftNbrSmall"@5423
pop.v.s local._font

:[44]
pushloc.v local._timerAppear
pushloc.v local._timerWait
add.v.v
pushloc.v local._timerDisappear
add.v.v
pop.v.v local._timerAll
call.i gml_Script_scribble_typist(argc=0)
pop.v.v builtin.typist
push.v builtin.label
pushloc.v local._color
push.s "[{0}]{1}[/c]"@9562
conv.s.v
call.i @@string@@(argc=3)
call.i gml_Script_scribble(argc=1)
dup.v 0
pushi.e -9
push.v [stacktop]self.scale
pushglb.v global.fontScaleTitle
dup.e 2 8
callv.v 1
dup.v 0
pushi.e -9
push.v [stacktop]self.align
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
dup.e 2 16
callv.v 2
dup.v 0
pushi.e -9
push.v [stacktop]self.starting_format
pushglb.v global.color
pushi.e -9
push.v [stacktop]self.grey1
pushloc.v local._font
dup.e 2 16
callv.v 2
pop.v.v builtin.labelDraw
push.v builtin.labelDraw
dup.v 0 8
dup.v 0
push.v stacktop.get_width
callv.v 0
pop.v.v builtin.labelDrawW
push.v builtin.labelDraw
dup.v 0 8
dup.v 0
push.v stacktop.get_height
callv.v 0
pop.v.v builtin.labelDrawH
pushloc.v local._easeAll
pushbltn.v builtin.undefined
pushbltn.v builtin.undefined
pushloc.v local._timerAll
pushglb.v global.vfxEffectSpeed
div.v.v
push.v builtin.id
push.i [function]gml_Script_myTimer
conv.i.v
call.i @@NewGMLObject@@(argc=6)
pop.v.v builtin.timerAll
push.v builtin.timerAll
dup.v 0 8
dup.v 0
push.v stacktop.run
callv.v 0
popz.v
pushloc.v local._easeAll2
pushbltn.v builtin.undefined
pushbltn.v builtin.undefined
pushloc.v local._timerAll
pushglb.v global.vfxEffectSpeed
div.v.v
push.v builtin.id
push.i [function]gml_Script_myTimer
conv.i.v
call.i @@NewGMLObject@@(argc=6)
pop.v.v builtin.timerAll2
push.v builtin.timerAll2
dup.v 0 8
dup.v 0
push.v stacktop.run
callv.v 0
popz.v
pushloc.v local._easeAppear
pushbltn.v builtin.undefined
pushbltn.v builtin.undefined
pushloc.v local._timerAppear
pushglb.v global.vfxEffectSpeed
div.v.v
push.v builtin.id
push.i [function]gml_Script_myTimer
conv.i.v
call.i @@NewGMLObject@@(argc=6)
pop.v.v builtin.timerAppear
pushloc.v local._easeWait
pushbltn.v builtin.undefined
pushbltn.v builtin.undefined
pushloc.v local._timerWait
pushglb.v global.vfxEffectSpeed
div.v.v
push.v builtin.id
push.i [function]gml_Script_myTimer
conv.i.v
call.i @@NewGMLObject@@(argc=6)
pop.v.v builtin.timerWait
pushloc.v local._easeDisappear
pushbltn.v builtin.undefined
pushbltn.v builtin.undefined
pushloc.v local._timerDisappear
pushglb.v global.vfxEffectSpeed
div.v.v
push.v builtin.id
push.i [function]gml_Script_myTimer
conv.i.v
call.i @@NewGMLObject@@(argc=6)
pop.v.v builtin.timerDisappear
push.d 0.75
pushglb.v global.vfxEffectSpeed
div.v.d
push.v builtin.id
push.i [function]gml_Script_myTimer
conv.i.v
call.i @@NewGMLObject@@(argc=3)
pop.v.v builtin.timerWaitinglist
push.v builtin.timerWaitinglist
dup.v 0 8
dup.v 0
push.v stacktop.run
callv.v 0
popz.v
pushglb.v global.waitingList
push.v builtin.id
dup.v 1 8
dup.v 0
push.v stacktop.set
callv.v 1
popz.v

:[end]