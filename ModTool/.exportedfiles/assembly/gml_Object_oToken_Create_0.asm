:[0]
call.i event_inherited(argc=0)
popz.v
pushi.e 0
conv.b.v
call.i @@This@@(argc=0)
push.v builtin.set_sprite_managed_by_parent
callv.v 1
popz.v
pushref.i 33554445
pushref.i 33554444
pushref.i 33554443
call.i @@NewGMLArray@@(argc=3)
call.i @@This@@(argc=0)
push.v builtin.set_hover_sound
callv.v 1
popz.v
pushi.e 0
pop.v.b builtin.hostValidate
push.d 0.5
conv.d.v
push.v builtin.id
push.i [function]gml_Script_myTimer
conv.i.v
call.i @@NewGMLObject@@(argc=3)
pop.v.v builtin.shakeTimer
pushi.e 1
pop.v.b builtin.isVisible
b [2]

> gml_Script_anon@351@gml_Object_oToken_Create_0 (locals=0, argc=0)
:[1]
pushi.e 1
pop.v.b builtin.isVisible
pushi.e 1
pop.v.i builtin.image_alpha
exit.i

:[2]
push.i [function]gml_Script_anon@351@gml_Object_oToken_Create_0
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
pop.v.v builtin.show
b [5]

> gml_Script_anon@456@gml_Object_oToken_Create_0 (locals=0, argc=0)
:[3]
push.v builtin.isVisible
ret.v

:[4]
exit.i

:[5]
push.i [function]gml_Script_anon@456@gml_Object_oToken_Create_0
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
pop.v.v builtin.is_visible
pushi.e -4
pop.v.i builtin.cardIdLand
b [59]

> gml_Script_anon@615@gml_Object_oToken_Create_0 (locals=6, argc=0)
:[6]
pushglb.v global.fightManager
pushi.e -9
push.v [stacktop]self.encounter
pushi.e -4
cmp.i.v NEQ
bf [15]

:[7]
pushglb.v global.fightManager
pushi.e -9
push.v [stacktop]self.encounter
pushi.e -9
push.v [stacktop]self.structMonster
pushglb.v global.monsters
pushi.e -9
push.v [stacktop]self.babayaga
cmp.v.v EQ
bt [12]

:[8]
pushglb.v global.fightManager
pushi.e -9
push.v [stacktop]self.encounter
pushi.e -9
push.v [stacktop]self.structMonster
pushglb.v global.monsters
pushi.e -9
push.v [stacktop]self.funfair
cmp.v.v EQ
bt [12]

:[9]
pushglb.v global.fightManager
pushi.e -9
push.v [stacktop]self.encounter
pushi.e -9
push.v [stacktop]self.structMonster
pushglb.v global.monsters
pushi.e -9
push.v [stacktop]self.platonia
cmp.v.v EQ
bt [12]

:[10]
pushglb.v global.fightManager
pushi.e -9
push.v [stacktop]self.encounter
pushi.e -9
push.v [stacktop]self.structMonster
pushglb.v global.monsters
pushi.e -9
push.v [stacktop]self.blackMarket
cmp.v.v EQ
bt [12]

:[11]
pushglb.v global.fightManager
pushi.e -9
push.v [stacktop]self.encounter
pushi.e -9
push.v [stacktop]self.structMonster
pushglb.v global.monsters
pushi.e -9
push.v [stacktop]self.faun
cmp.v.v EQ
b [13]

:[12]
push.e 1

:[13]
bf [15]

:[14]
exit.i

:[15]
pushglb.v global.playersManager
push.v builtin.number
dup.v 1 8
dup.v 0
push.v stacktop.get_action
callv.v 1
pop.v.v local._action
pushglb.v global.playersManager
push.v builtin.number
dup.v 1 8
dup.v 0
push.v stacktop.get_characters
callv.v 1
pop.v.v local._char
pushloc.v local._action
push.l 14
cmp.l.v NEQ
bf [18]

:[16]
pushloc.v local._action
push.l 13
cmp.l.v NEQ
bf [18]

:[17]
pushloc.v local._action
push.l 0
cmp.l.v NEQ
b [19]

:[18]
push.e 0

:[19]
bf [25]

:[20]
pushglb.v global.fightManager
pushi.e -9
push.v [stacktop]self.isFightActive
conv.v.b
bf [24]

:[21]
push.l 5
conv.l.v
pushloc.v local._char
call.i gml_Script_execute_effect(argc=2)
popz.v
pushglb.v global.dayNightCycle
dup.v 0 8
dup.v 0
push.v stacktop.get_event
callv.v 0
push.l 7
cmp.l.v EQ
bf [23]

:[22]
push.l 0
conv.l.v
pushglb.v global.effect
pushi.e -9
push.v [stacktop]self.confusedMoon
pushi.e -4
conv.i.v
push.l 5
conv.l.v
pushloc.v local._char
call.i gml_Script_execute_effect(argc=5)
popz.v

:[23]
b [25]

:[24]
push.l 6
conv.l.v
pushloc.v local._char
call.i gml_Script_execute_effect(argc=2)
popz.v

:[25]
pushi.e -4
pop.v.i builtin.cardIdLand
pushglb.v global.playersManager
push.v builtin.number
dup.v 1 8
dup.v 0
push.v stacktop.get_action
callv.v 1
pop.v.v local._action
pushloc.v local._action
dup.v 0
push.l 3
cmp.l.v EQ
bt [33]

:[26]
dup.v 0
push.l 4
cmp.l.v EQ
bt [33]

:[27]
dup.v 0
push.l 5
cmp.l.v EQ
bt [33]

:[28]
dup.v 0
push.l 6
cmp.l.v EQ
bt [33]

:[29]
dup.v 0
push.l 1
cmp.l.v EQ
bt [54]

:[30]
dup.v 0
push.l 2
cmp.l.v EQ
bt [55]

:[31]
b [56]

:[32]
b [58]

:[33]
pushi.e 0
pop.v.i local._cardNumber
pushloc.v local._action
dup.v 0
push.l 3
cmp.l.v EQ
bt [39]

:[34]
dup.v 0
push.l 4
cmp.l.v EQ
bt [40]

:[35]
dup.v 0
push.l 5
cmp.l.v EQ
bt [41]

:[36]
dup.v 0
push.l 6
cmp.l.v EQ
bt [42]

:[37]
b [43]

:[38]
b [44]

:[39]
pushi.e 0
pop.v.i local._cardNumber
b [44]

:[40]
pushi.e 1
pop.v.i local._cardNumber
b [44]

:[41]
pushi.e 2
pop.v.i local._cardNumber
b [44]

:[42]
pushi.e 3
pop.v.i local._cardNumber
b [44]

:[43]
b [44]

:[44]
popz.v
pushglb.v global.actionCards
pushi.e -9
pushloc.v local._cardNumber
conv.v.i
push.v [array]self.theHand
pop.v.v builtin.cardIdLand
push.v builtin.cardIdLand
dup.v 0 8
dup.v 0
push.v stacktop.set_depth_priority
callv.v 0
popz.v
pushglb.v global.fightManager
pushi.e -9
push.v [stacktop]self.encounter
pushi.e -9
push.v [stacktop]self.structMonster
pushglb.v global.monsters
pushi.e -9
push.v [stacktop]self.shop
cmp.v.v EQ
bf [46]

:[45]
push.v builtin.cardIdLand
pushi.e -9
push.v [stacktop]self.x
pop.v.v builtin.xToLinkToCard
push.v builtin.cardIdLand
pushi.e -9
push.v [stacktop]self.y
pop.v.v builtin.yToLinkToCard
b [47]

:[46]
pushi.e 23
pop.v.i local._xMinCard
pushi.e 107
pop.v.i local._xMaxCard
pushloc.v local._xMaxCard
pushloc.v local._xMinCard
sub.v.v
pushglb.v global.playersCount
div.v.v
pop.v.v local._posInCard
push.v builtin.cardIdLand
pushi.e -9
push.v [stacktop]self.x
pushloc.v local._xMinCard
add.v.v
pushloc.v local._posInCard
push.v builtin.number
pushi.e 1
add.i.v
mul.v.v
pushloc.v local._posInCard
push.v builtin.number
mul.v.v
call.i irandom_range(argc=2)
add.v.v
pop.v.v builtin.xToLinkToCard
push.v builtin.cardIdLand
pushi.e -9
push.v [stacktop]self.y
pushi.e 70
conv.i.v
pushi.e 38
conv.i.v
call.i irandom_range(argc=2)
add.v.v
pop.v.v builtin.yToLinkToCard

:[47]
push.v builtin.x
pop.v.v builtin.xThrowInit
push.v builtin.y
pop.v.v builtin.yThrowInit
push.v builtin.cardIdLand
pushi.e -9
push.v [stacktop]self.isLeftmostCard
conv.v.b
bf [49]

:[48]
pushi.e 1
conv.b.v
pushloc.v local._char
pushi.e -9
push.v [stacktop]self.lastChoiceWasLeftmost
call.i array_push(argc=2)
popz.v
b [50]

:[49]
pushi.e 0
conv.b.v
pushloc.v local._char
pushi.e -9
push.v [stacktop]self.lastChoiceWasLeftmost
call.i array_push(argc=2)
popz.v

:[50]
push.v builtin.cardIdLand
pushi.e -9
push.v [stacktop]self.isRightmostCard
conv.v.b
bf [52]

:[51]
pushi.e 1
conv.b.v
pushloc.v local._char
pushi.e -9
push.v [stacktop]self.lastChoiceWasRightmost
call.i array_push(argc=2)
popz.v
b [53]

:[52]
pushi.e 0
conv.b.v
pushloc.v local._char
pushi.e -9
push.v [stacktop]self.lastChoiceWasRightmost
call.i array_push(argc=2)
popz.v

:[53]
b [58]

:[54]
pushglb.v global.uiPos
pushi.e -9
push.v builtin.number
conv.v.i
push.v [array]self.stopGem
pushi.e -9
push.v [stacktop]self.x
pop.v.v builtin.xToLinkToCard
pushglb.v global.uiPos
pushi.e -9
push.v builtin.number
conv.v.i
push.v [array]self.stopGem
pushi.e -9
push.v [stacktop]self.y
pop.v.v builtin.yToLinkToCard
push.v builtin.xDraw
pop.v.v builtin.xThrowInit
push.v builtin.yDraw
pop.v.v builtin.yThrowInit
b [58]

:[55]
pushglb.v global.uiPos
pushi.e -9
push.v builtin.number
conv.v.i
push.v [array]self.continueGem
pushi.e -9
push.v [stacktop]self.x
pop.v.v builtin.xToLinkToCard
pushglb.v global.uiPos
pushi.e -9
push.v builtin.number
conv.v.i
push.v [array]self.continueGem
pushi.e -9
push.v [stacktop]self.y
pop.v.v builtin.yToLinkToCard
push.v builtin.xDraw
pop.v.v builtin.xThrowInit
push.v builtin.yDraw
pop.v.v builtin.yThrowInit
b [58]

:[56]
exit.i

:[57]
b [58]

:[58]
popz.v
pushglb.v global.waitingList
push.v builtin.id
dup.v 1 8
dup.v 0
push.v stacktop.set
callv.v 1
popz.v
push.l 1
pop.v.l builtin.stateNext
exit.i

:[59]
push.i [function]gml_Script_anon@615@gml_Object_oToken_Create_0
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
pop.v.v builtin.throw_it
push.s "number"@5108
conv.s.v
push.v builtin.id
call.i variable_instance_exists(argc=2)
conv.v.b
not.b
bf [61]

:[60]
pushi.e 0
pop.v.i builtin.number

:[61]
push.s "numberBuy"@10539
conv.s.v
push.v builtin.id
call.i variable_instance_exists(argc=2)
conv.v.b
not.b
bf [63]

:[62]
pushi.e -1
pop.v.i builtin.numberBuy

:[63]
pushi.e -4
pop.v.i builtin.chainLinked
pushi.e 0
pop.v.i builtin.xToLinkToCard
pushi.e 0
pop.v.i builtin.yToLinkToCard
push.v builtin.y
pop.v.v builtin.yInit
push.v builtin.x
pop.v.v builtin.xInit
push.v builtin.y
pop.v.v builtin.yOrigin
push.v builtin.x
pop.v.v builtin.xOrigin
push.v builtin.x
pop.v.v builtin.xThrowInit
push.v builtin.y
pop.v.v builtin.yThrowInit
push.v builtin.x
pop.v.v builtin.xDraw
push.v builtin.y
pop.v.v builtin.yDraw
pushi.e 0
pop.v.i builtin.imgIndex
push.s "curve1"@8565
conv.s.v
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
push.d 0.4
conv.d.v
push.v builtin.id
push.i [function]gml_Script_myTimer
conv.i.v
call.i @@NewGMLObject@@(argc=6)
pop.v.v builtin.tokenBounceTimer
pushbltn.v builtin.undefined
pop.v.v builtin.state
pushbltn.v builtin.undefined
pop.v.v builtin.statePrev
push.s "stateNext"@4982
conv.s.v
push.v builtin.id
call.i variable_instance_exists(argc=2)
conv.v.b
not.b
bf [65]

:[64]
push.l 0
pop.v.l builtin.stateNext

:[65]
push.s "theType"@5168
conv.s.v
push.v builtin.id
call.i variable_instance_exists(argc=2)
conv.v.b
not.b
bf [67]

:[66]
push.l 0
pop.v.l builtin.theType

:[67]
b [71]

> gml_Script_anon@5100@gml_Object_oToken_Create_0 (locals=0, argc=1)
:[68]
push.v arg.argument0
pop.v.v builtin.number
push.v builtin.theType
push.l 0
cmp.l.v EQ
bf [70]

:[69]
call.i @@This@@(argc=0)
push.v builtin.initialize
callv.v 0
popz.v

:[70]
exit.i

:[71]
push.i [function]gml_Script_anon@5100@gml_Object_oToken_Create_0
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
pop.v.v builtin.set_number
b [138]

> gml_Script_anon@5349@gml_Object_oToken_Create_0 (locals=9, argc=1)
:[72]
pushbltn.v builtin.argument0
pushbltn.v builtin.undefined
cmp.v.v EQ
bf [74]

:[73]
push.v builtin.theType
pop.v.v builtin.argument0

:[74]
push.v builtin.number
pushi.e -1
cmp.i.v EQ
bf [76]

:[75]
pushi.e -4
conv.i.v
b [77]

:[76]
pushglb.v global.playersManager
push.v builtin.number
dup.v 1 8
dup.v 0
push.v stacktop.get_characters
callv.v 1

:[77]
pop.v.v local._char
push.v arg.argument0
pop.v.v builtin.theType
push.v builtin.number
pushi.e 1
add.i.v
push.s "sprToken{0}"@11330
conv.s.v
call.i @@string@@(argc=2)
pop.v.v builtin.theTokenName
call.i @@NewGMLArray@@(argc=0)
pop.v.v builtin.effectLinked
push.s "token._default"@11332
pop.v.s local._tooltipName
push.s "token._defaultDesc"@11333
pop.v.s local._tooltipDesc
push.v builtin.theType
dup.v 0
push.l 3
cmp.l.v EQ
bt [101]

:[78]
dup.v 0
push.l 4
cmp.l.v EQ
bt [102]

:[79]
dup.v 0
push.l 5
cmp.l.v EQ
bt [103]

:[80]
dup.v 0
push.l 6
cmp.l.v EQ
bt [104]

:[81]
dup.v 0
push.l 10
cmp.l.v EQ
bt [105]

:[82]
dup.v 0
push.l 11
cmp.l.v EQ
bt [106]

:[83]
dup.v 0
push.l 12
cmp.l.v EQ
bt [109]

:[84]
dup.v 0
push.l 13
cmp.l.v EQ
bt [112]

:[85]
dup.v 0
push.l 14
cmp.l.v EQ
bt [113]

:[86]
dup.v 0
push.l 15
cmp.l.v EQ
bt [114]

:[87]
dup.v 0
push.l 16
cmp.l.v EQ
bt [117]

:[88]
dup.v 0
push.l 17
cmp.l.v EQ
bt [118]

:[89]
dup.v 0
push.l 1
cmp.l.v EQ
bt [121]

:[90]
dup.v 0
push.l 20
cmp.l.v EQ
bt [122]

:[91]
dup.v 0
push.l 19
cmp.l.v EQ
bt [123]

:[92]
dup.v 0
push.l 18
cmp.l.v EQ
bt [124]

:[93]
dup.v 0
push.l 9
cmp.l.v EQ
bt [125]

:[94]
dup.v 0
push.l 7
cmp.l.v EQ
bt [126]

:[95]
dup.v 0
push.l 8
cmp.l.v EQ
bt [127]

:[96]
dup.v 0
push.l 21
cmp.l.v EQ
bt [128]

:[97]
dup.v 0
push.l 2
cmp.l.v EQ
bt [129]

:[98]
dup.v 0
push.l 0
cmp.l.v EQ
bt [130]

:[99]
b [130]

:[100]
b [131]

:[101]
push.s "sprTokenLostInTime"@11334
pop.v.s builtin.theTokenName
push.s "token._lostInTime"@11335
pop.v.s local._tooltipName
push.s "token._lostInTimeDesc"@11336
pop.v.s local._tooltipDesc
b [131]

:[102]
push.s "sprTokenFourLeaf"@11337
pop.v.s builtin.theTokenName
push.s "token._fourLeaf"@4787
pop.v.s local._tooltipName
pushglb.v global.effect
pushi.e -9
push.v [stacktop]self.cloverToken
call.i gml_Script_add_var_to_text(argc=1)
pop.v.v local._tooltipDesc
pushglb.v global.effect
pushi.e -9
push.v [stacktop]self.cloverToken
pop.v.v builtin.effectLinked
b [131]

:[103]
push.s "sprTokenForeverKing"@11338
pop.v.s builtin.theTokenName
push.s "token._foreverKing"@4779
pop.v.s local._tooltipName
pushglb.v global.effect
pushi.e -9
push.v [stacktop]self.foreverKing
call.i gml_Script_add_var_to_text(argc=1)
pop.v.v local._tooltipDesc
pushglb.v global.effect
pushi.e -9
push.v [stacktop]self.foreverKing
pop.v.v builtin.effectLinked
b [131]

:[104]
push.s "sprTokenGnomish"@11339
pop.v.s builtin.theTokenName
push.s "token._gnomish"@4777
pop.v.s local._tooltipName
pushglb.v global.effect
pushi.e -9
push.v [stacktop]self.gnomish
call.i gml_Script_add_var_to_text(argc=1)
pop.v.v local._tooltipDesc
pushglb.v global.effect
pushi.e -9
push.v [stacktop]self.gnomish
pop.v.v builtin.effectLinked
b [131]

:[105]
push.s "sprTokenCalculatedRisk"@11340
pop.v.s builtin.theTokenName
push.s "token._calculatedRisk"@4783
pop.v.s local._tooltipName
pushglb.v global.effect
pushi.e -9
push.v [stacktop]self.calculatedRisk
call.i gml_Script_add_var_to_text(argc=1)
pop.v.v local._tooltipDesc
pushglb.v global.effect
pushi.e -9
push.v [stacktop]self.calculatedRisk
call.i @@NewGMLArray@@(argc=1)
pop.v.v builtin.effectLinked
b [131]

:[106]
push.s "sprTokenValor"@11341
pop.v.s builtin.theTokenName
push.s "token._valor"@4767
pop.v.s local._tooltipName
pushglb.v global.effect
pushi.e -9
push.v [stacktop]self.valor
call.i gml_Script_add_var_to_text(argc=1)
pop.v.v local._tooltipDesc
pushglb.v global.effect
pushi.e -9
push.v [stacktop]self.valor
pop.v.v builtin.effectLinked
pushloc.v local._char
pushi.e -4
cmp.i.v NEQ
bf [108]

:[107]
pushloc.v local._char
pushi.e 1
conv.b.v
pushglb.v global.effect
pushi.e -9
push.v [stacktop]self.valor
pushi.e -9
pushi.e 0
push.v [array]self.amount
pushloc.v local._char
pushi.e -9
push.v [stacktop]self.hp
sub.v.v
pushi.e 1
conv.b.v
pushbltn.v builtin.undefined
pushbltn.v builtin.undefined
pushglb.v global.effect
pushi.e -9
push.v [stacktop]self.valor
pushi.e -9
pushi.e 0
push.v [array]self.amount
pushloc.v local._char
pushi.e -9
push.v [stacktop]self.hpMax
sub.v.v
dup.v 6 8
dup.v 0
push.v stacktop.update_hp_max
callv.v 6
popz.v

:[108]
b [131]

:[109]
push.s "sprTokenBlessed"@11342
pop.v.s builtin.theTokenName
push.s "token._blessed"@4789
pop.v.s local._tooltipName
pushglb.v global.effect
pushi.e -9
push.v [stacktop]self.blessed
call.i gml_Script_add_var_to_text(argc=1)
pop.v.v local._tooltipDesc
pushglb.v global.effect
pushi.e -9
push.v [stacktop]self.blessed
pop.v.v builtin.effectLinked
pushloc.v local._char
pushi.e -4
cmp.i.v NEQ
bf [111]

:[110]
pushloc.v local._char
pushglb.v global.effect
pushi.e -9
push.v [stacktop]self.blessed
pushi.e -9
pushi.e 0
push.v [array]self.amount
pushloc.v local._char
pushi.e -9
push.v [stacktop]self.hp
sub.v.v
pushi.e 1
conv.b.v
pushbltn.v builtin.undefined
pushbltn.v builtin.undefined
pushglb.v global.effect
pushi.e -9
push.v [stacktop]self.blessed
pushi.e -9
pushi.e 0
push.v [array]self.amount
pushloc.v local._char
pushi.e -9
push.v [stacktop]self.hpMax
sub.v.v
dup.v 5 8
dup.v 0
push.v stacktop.update_hp_max
callv.v 5
popz.v

:[111]
b [131]

:[112]
push.s "sprTokenLoniless"@11343
pop.v.s builtin.theTokenName
push.s "token._loniless"@4775
pop.v.s local._tooltipName
pushglb.v global.effect
pushi.e -9
push.v [stacktop]self.loniless
call.i gml_Script_add_var_to_text(argc=1)
pop.v.v local._tooltipDesc
pushglb.v global.effect
pushi.e -9
push.v [stacktop]self.loniless
pop.v.v builtin.effectLinked
b [131]

:[113]
push.s "sprTokenUnstable"@11344
pop.v.s builtin.theTokenName
push.s "token._unstable"@11345
pop.v.s local._tooltipName
push.s "token._unstableDesc"@11346
pop.v.s local._tooltipDesc
pushglb.v global.effect
pushi.e -9
push.v [stacktop]self.dynamite
pop.v.v builtin.effectLinked
b [131]

:[114]
push.s "sprTokenPhilosopher"@11347
pop.v.s builtin.theTokenName
push.s "token._philosopher"@4771
pop.v.s local._tooltipName
pushglb.v global.effect
pushi.e -9
push.v [stacktop]self.philosopherToken
call.i gml_Script_add_var_to_text(argc=1)
pop.v.v local._tooltipDesc
pushglb.v global.effect
pushi.e -9
push.v [stacktop]self.philosopherToken
pop.v.v builtin.effectLinked
pushloc.v local._char
pushi.e -4
cmp.i.v NEQ
bf [116]

:[115]
pushloc.v local._char
pushi.e 1
conv.b.v
pushglb.v global.effect
pushi.e -9
push.v [stacktop]self.philosopherToken
pushi.e -9
pushi.e 0
push.v [array]self.amount
pushloc.v local._char
pushi.e -9
push.v [stacktop]self.hp
sub.v.v
pushi.e 1
conv.b.v
pushbltn.v builtin.undefined
pushbltn.v builtin.undefined
pushglb.v global.effect
pushi.e -9
push.v [stacktop]self.philosopherToken
pushi.e -9
pushi.e 0
push.v [array]self.amount
pushloc.v local._char
pushi.e -9
push.v [stacktop]self.hpMax
sub.v.v
dup.v 6 8
dup.v 0
push.v stacktop.update_hp_max
callv.v 6
popz.v

:[116]
b [131]

:[117]
push.s "sprTokenMasterKey"@11348
pop.v.s builtin.theTokenName
push.s "token._masterKey"@11349
pop.v.s local._tooltipName
push.s "token._masterKeyDesc"@11350
pop.v.s local._tooltipDesc
b [131]

:[118]
push.s "sprTokenNecrotic"@11351
pop.v.s builtin.theTokenName
push.s "token._necrotic"@4773
pop.v.s local._tooltipName
pushglb.v global.effect
pushi.e -9
push.v [stacktop]self.necrotic
call.i gml_Script_add_var_to_text(argc=1)
pop.v.v local._tooltipDesc
pushloc.v local._char
pushi.e -4
cmp.i.v NEQ
bf [120]

:[119]
pushloc.v local._char
pushi.e 1
conv.b.v
pushi.e -1
conv.i.v
pushloc.v local._char
pushi.e -9
push.v [stacktop]self.hp
pushi.e 1
conv.b.v
dup.v 4 8
dup.v 0
push.v stacktop.receive_damage
callv.v 4
popz.v
pushloc.v local._char
pushi.e -9
push.v [stacktop]self.number
push.l 1
conv.l.v
pushbltn.v builtin.undefined
push.l 2
conv.l.v
pushglb.v global.effect
pushi.e -9
push.v [stacktop]self.necrotic
pushi.e -9
pushi.e 0
push.v [array]self.amount
pushbltn.v builtin.undefined
pushbltn.v builtin.undefined
pushloc.v local._char
pushi.e -9
push.v [stacktop]self.token
pushi.e -9
push.v [stacktop]self.y
pushloc.v local._char
pushi.e -9
push.v [stacktop]self.token
pushi.e -9
push.v [stacktop]self.x
call.i gml_Script_g_exchange_gem(argc=9)
popz.v

:[120]
b [131]

:[121]
push.s "sprTokenDead"@11352
pop.v.s builtin.theTokenName
push.s "token._dead"@11353
pop.v.s local._tooltipName
pushi.e 3
conv.i.v
push.s "#{0}"@4429
conv.s.v
call.i @@string@@(argc=2)
push.s "token._deadDesc"@11354
conv.s.v
call.i string_concat(argc=2)
pop.v.v local._tooltipDesc
b [131]

:[122]
push.s "sprTokenCan"@11355
pop.v.s builtin.theTokenName
push.s "token._can"@4769
pop.v.s local._tooltipName
pushglb.v global.effect
pushi.e -9
push.v [stacktop]self.tocanToken
call.i gml_Script_add_var_to_text(argc=1)
pop.v.v local._tooltipDesc
pushglb.v global.effect
pushi.e -9
push.v [stacktop]self.tocanToken
pop.v.v builtin.effectLinked
b [131]

:[123]
push.s "sprTokenDonkeyCap"@11356
pop.v.s builtin.theTokenName
push.s "token._donkeyCap"@11357
pop.v.s local._tooltipName
push.s "token._donkeyCapDesc"@11358
pop.v.s local._tooltipDesc
b [131]

:[124]
push.s "sprTokenVulture"@11359
pop.v.s builtin.theTokenName
push.s "token._vulture"@4765
pop.v.s local._tooltipName
pushglb.v global.effect
pushi.e -9
push.v [stacktop]self.vulture
call.i gml_Script_add_var_to_text(argc=1)
pop.v.v local._tooltipDesc
pushglb.v global.effect
pushi.e -9
push.v [stacktop]self.vulture
pop.v.v builtin.effectLinked
b [131]

:[125]
push.s "sprTokenAutocracy"@11360
pop.v.s builtin.theTokenName
push.s "token._autocracy"@5344
pop.v.s local._tooltipName
push.s "token._autocracyDesc"@11361
pop.v.s local._tooltipDesc
pushglb.v global.effect
pushi.e -9
push.v [stacktop]self.autocracy
pop.v.v builtin.effectLinked
b [131]

:[126]
push.s "sprTokenCursedLoverLeft"@11362
pop.v.s builtin.theTokenName
push.s "token._cursedLover"@11363
pop.v.s local._tooltipName
pushglb.v global.effect
pushi.e -9
push.v [stacktop]self.cursedLoverDeath
pushi.e -9
pushi.e 0
push.v [array]self.amount
pushglb.v global.effect
pushi.e -9
push.v [stacktop]self.cursedLoverSameChoice
pushi.e -9
pushi.e 0
push.v [array]self.amount
push.s "#{0}#{1}"@4442
conv.s.v
call.i @@string@@(argc=3)
push.s "token._cursedLoverDesc"@11364
conv.s.v
call.i string_concat(argc=2)
pop.v.v local._tooltipDesc
pushglb.v global.effect
pushi.e -9
push.v [stacktop]self.cursedLoverDeath
pushglb.v global.effect
pushi.e -9
push.v [stacktop]self.cursedLoverSameChoice
call.i @@NewGMLArray@@(argc=2)
pop.v.v builtin.effectLinked
b [131]

:[127]
push.s "sprTokenCursedLoverRight"@11365
pop.v.s builtin.theTokenName
push.s "token._cursedLover"@11363
pop.v.s local._tooltipName
pushglb.v global.effect
pushi.e -9
push.v [stacktop]self.cursedLoverDeath
pushi.e -9
pushi.e 0
push.v [array]self.amount
pushglb.v global.effect
pushi.e -9
push.v [stacktop]self.cursedLoverSameChoice
pushi.e -9
pushi.e 0
push.v [array]self.amount
push.s "#{0}#{1}"@4442
conv.s.v
call.i @@string@@(argc=3)
push.s "token._cursedLoverDesc"@11364
conv.s.v
call.i string_concat(argc=2)
pop.v.v local._tooltipDesc
pushglb.v global.effect
pushi.e -9
push.v [stacktop]self.cursedLoverDeath
pushglb.v global.effect
pushi.e -9
push.v [stacktop]self.cursedLoverSameChoice
call.i @@NewGMLArray@@(argc=2)
pop.v.v builtin.effectLinked
b [131]

:[128]
push.s "sprTokenWerewolf"@11366
pop.v.s builtin.theTokenName
push.s "token._werewolf"@11367
pop.v.s local._tooltipName
push.s "token._werewolfDesc"@11368
pop.v.s local._tooltipDesc
b [131]

:[129]
push.s "sprTokenLeft"@11369
pop.v.s builtin.theTokenName
push.s "token._left"@11370
pop.v.s local._tooltipName
push.s "token._leftDesc"@11371
pop.v.s local._tooltipDesc
b [131]

:[130]
b [131]

:[131]
popz.v
push.v builtin.effectLinked
call.i is_array(argc=1)
conv.v.b
not.b
bf [133]

:[132]
push.v builtin.effectLinked
call.i @@NewGMLArray@@(argc=1)
pop.v.v builtin.effectLinked

:[133]
push.v builtin.theTokenName
call.i asset_get_index(argc=1)
pop.v.v builtin.sprite_index
push.v builtin.sprite_index
pop.v.v builtin.sprIdle
push.v builtin.theTokenName
push.s "{0}Throw"@10399
conv.s.v
call.i @@string@@(argc=2)
call.i asset_get_index(argc=1)
pop.v.v builtin.sprThrow
call.i @@This@@(argc=0)
push.v builtin.delete_tooltip
callv.v 0
popz.v
pushi.e -4
pop.v.i local._tooltipParent
pushi.e -16
pop.v.i local._heightOffsetTooltipBefore
push.v builtin.theType
push.l 14
cmp.l.v EQ
bf [135]

:[134]
pushglb.v global.effect
pushi.e -9
push.v [stacktop]self.kaboom
pushglb.v global.effect
pushi.e -9
push.v [stacktop]self.kaboom
pushi.e -9
push.v [stacktop]self.sprite
push.l 0
conv.l.v
push.l 2
conv.l.v
pushglb.v global.effect
pushi.e -9
push.v [stacktop]self.kaboom
pushi.e -9
push.v [stacktop]self.chance
pushglb.v global.effect
pushi.e -9
push.v [stacktop]self.kaboom
pushi.e -9
push.v [stacktop]self.amount
pushglb.v global.effect
pushi.e -9
push.v [stacktop]self.kaboom
pushi.e -9
push.v [stacktop]self.stack
pushglb.v global.effect
pushi.e -9
push.v [stacktop]self.kaboom
call.i gml_Script_add_var_to_text(argc=4)
pushglb.v global.effect
pushi.e -9
push.v [stacktop]self.kaboom
pushi.e -9
push.v [stacktop]self.name
push.v builtin.id
push.i [function]gml_Script_cTooltip
conv.i.v
call.i @@NewGMLObject@@(argc=8)
pop.v.v local._structTooltipBefore
pushloc.v local._structTooltipBefore
pushref.i 61
pushi.e 0
conv.i.v
push.v builtin.y
pushi.e 16
sub.i.v
push.v builtin.x
call.i instance_create_depth(argc=5)
pop.v.v local._tooltipBefore
pushi.e 1
pushloc.v local._tooltipBefore
pushi.e -9
pop.v.b [stacktop]self.persistent
pushloc.v local._tooltipBefore
pop.v.v local._tooltipParent
push.v local._heightOffsetTooltipBefore
pushloc.v local._tooltipBefore
pushi.e -9
push.v [stacktop]self.height
neg.v
add.v.v
pop.v.v local._heightOffsetTooltipBefore
pushloc.v local._tooltipBefore
call.i @@This@@(argc=0)
push.v builtin.set_tooltip
callv.v 1
popz.v

:[135]
pushloc.v local._tooltipParent
pushbltn.v builtin.undefined
pushbltn.v builtin.undefined
pushbltn.v builtin.undefined
pushbltn.v builtin.undefined
push.l 0
conv.l.v
push.l 2
conv.l.v
pushloc.v local._tooltipDesc
pushloc.v local._tooltipName
push.v builtin.id
push.i [function]gml_Script_cTooltip
conv.i.v
call.i @@NewGMLObject@@(argc=11)
pop.v.v local._structTooltip
pushloc.v local._structTooltip
pushref.i 61
pushi.e 0
conv.i.v
push.v builtin.y
pushloc.v local._heightOffsetTooltipBefore
add.v.v
push.v builtin.x
call.i instance_create_depth(argc=5)
pop.v.v local._tooltip
pushi.e 1
pushloc.v local._tooltip
pushi.e -9
pop.v.b [stacktop]self.persistent
pushloc.v local._tooltip
call.i @@This@@(argc=0)
push.v builtin.set_tooltip
callv.v 1
popz.v
push.v builtin.numberBuy
pushi.e -1
cmp.i.v NEQ
bf [137]

:[136]
pushloc.v local._tooltip
dup.v 0 8
dup.v 0
push.v stacktop.inverse_order_parent
callv.v 0
popz.v

:[137]
push.v builtin.sprite_index
call.i @@This@@(argc=0)
push.v builtin.define_sprite
callv.v 1
popz.v
exit.i

:[138]
push.i [function]gml_Script_anon@5349@gml_Object_oToken_Create_0
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
pop.v.v builtin.initialize
push.v builtin.theType
call.i @@This@@(argc=0)
push.v builtin.initialize
callv.v 1
popz.v
push.s "ease-out"@8749
conv.s.v
pushi.e 1
conv.i.v
pushbltn.v builtin.undefined
push.d 0.41
conv.d.v
push.v builtin.id
push.i [function]gml_Script_myTimer
conv.i.v
call.i @@NewGMLObject@@(argc=6)
pop.v.v builtin.timerThrow
push.s "ease-out"@8749
conv.s.v
pushbltn.v builtin.undefined
pushbltn.v builtin.undefined
push.d 0.3
conv.d.v
push.v builtin.id
push.i [function]gml_Script_myTimer
conv.i.v
call.i @@NewGMLObject@@(argc=6)
pop.v.v builtin.timerBackToNormal
pushglb.v global.particlesSys
call.i part_emitter_create(argc=1)
pop.v.v builtin.peBuyToken
push.l 5
conv.l.v
push.v builtin.peBuyToken
call.i gml_Script_add_to_clean_up(argc=2)
popz.v
b [161]

> gml_Script_anon@13268@gml_Object_oToken_Create_0 (locals=1, argc=3)
:[139]
pushglb.v global.playersManager
push.v arg.argument0
dup.v 1 8
dup.v 0
push.v stacktop.get_characters
callv.v 1
pop.v.v local._player
push.v arg.argument0
pushi.e 0
cmp.i.v EQ
bf [141]

:[140]
pushglb.v global.color
pushi.e -9
push.v [stacktop]self.blue2
pushglb.v global.color
pushi.e -9
push.v [stacktop]self.blue2
pushglb.v global.color
pushi.e -9
push.v [stacktop]self.blue1
pushglb.v global.particles
pushi.e -9
push.v [stacktop]self.ptBuyToken
call.i part_type_color3(argc=4)
popz.v
b [147]

:[141]
push.v arg.argument0
pushi.e 1
cmp.i.v EQ
bf [143]

:[142]
pushglb.v global.color
pushi.e -9
push.v [stacktop]self.orange1
pushglb.v global.color
pushi.e -9
push.v [stacktop]self.orange1
pushglb.v global.color
pushi.e -9
push.v [stacktop]self.yellow1
pushglb.v global.particles
pushi.e -9
push.v [stacktop]self.ptBuyToken
call.i part_type_color3(argc=4)
popz.v
b [147]

:[143]
push.v arg.argument0
pushi.e 2
cmp.i.v EQ
bf [145]

:[144]
pushglb.v global.color
pushi.e -9
push.v [stacktop]self.green2
pushglb.v global.color
pushi.e -9
push.v [stacktop]self.green2
pushglb.v global.color
pushi.e -9
push.v [stacktop]self.green1
pushglb.v global.particles
pushi.e -9
push.v [stacktop]self.ptBuyToken
call.i part_type_color3(argc=4)
popz.v
b [147]

:[145]
push.v arg.argument0
pushi.e 3
cmp.i.v EQ
bf [147]

:[146]
pushglb.v global.color
pushi.e -9
push.v [stacktop]self.purple2
pushglb.v global.color
pushi.e -9
push.v [stacktop]self.purple2
pushglb.v global.color
pushi.e -9
push.v [stacktop]self.purple1
pushglb.v global.particles
pushi.e -9
push.v [stacktop]self.ptBuyToken
call.i part_type_color3(argc=4)
popz.v

:[147]
pushi.e 0
conv.i.v
pushi.e 3
conv.i.v
pushloc.v local._player
pushi.e -9
push.v [stacktop]self.token
pushi.e -9
push.v [stacktop]self.yDraw
push.v arg.argument2
pushloc.v local._player
pushi.e -9
push.v [stacktop]self.token
pushi.e -9
push.v [stacktop]self.xDraw
push.v arg.argument1
push.v builtin.peBuyToken
pushglb.v global.particlesSys
call.i part_emitter_region(argc=8)
popz.v
pushi.e 256
conv.i.v
pushglb.v global.particles
pushi.e -9
push.v [stacktop]self.ptBuyToken
push.v builtin.peBuyToken
pushglb.v global.particlesSys
call.i part_emitter_burst(argc=4)
popz.v
push.v arg.argument0
pushi.e 1
add.i.v
push.s "sprTokenActed{0}"@11381
conv.s.v
call.i @@string@@(argc=2)
call.i asset_get_index(argc=1)
b [149]

> gml_Script____struct___594@anon@13268@gml_Object_oToken_Create_0 (locals=0, argc=0)
:[148]
call.i @@SetStatic@@(argc=0)
pushi.e -15
pushi.e 0
push.v [array]self.argument
pop.v.v self.sprite_index
exit.i

:[149]
push.i [function]gml_Script____struct___594@anon@13268@gml_Object_oToken_Create_0
conv.i.v
call.i @@NullObject@@(argc=0)
call.i method(argc=2)
dup.v 0
pop.v.v global.___struct___594
call.i @@NewGMLObject@@(argc=2)
pushref.i 15
push.v builtin.depth
push.v arg.argument2
push.v arg.argument1
call.i instance_create_depth(argc=5)
popz.v
push.d 1.1
conv.d.v
push.d 0.9
conv.d.v
call.i random_range(argc=2)
pushbltn.v builtin.undefined
pushbltn.v builtin.undefined
pushi.e 0
conv.b.v
pushi.e 1
conv.i.v
pushref.i 33554442
call.i audio_play_sound(argc=6)
popz.v
pushref.i 7
pushi.e -9
pushenv [154]

:[150]
pushi.e 0
pop.v.i builtin.distanceTraveled
pushi.e 50
conv.i.v
pushi.e 10
conv.i.v
call.i random_range(argc=2)
pop.v.v builtin.distanceToReachMax
push.v builtin.chainAngleVelocity
pushi.e 3
conv.i.v
push.d 0.5
conv.d.v
call.i random_range(argc=2)
push.v other.x
push.v builtin.x
cmp.v.v LT
bf [152]

:[151]
pushi.e 1
conv.i.v
b [153]

:[152]
pushi.e -1
conv.i.v

:[153]
mul.v.v
add.v.v
pop.v.v builtin.chainAngleVelocity

:[154]
popenv [150]
push.v builtin.chainLinked
pushi.e -4
cmp.i.v NEQ
bf [156]

:[155]
pushi.e -4
push.v builtin.chainLinked
pushi.e -9
pop.v.i [stacktop]self.token
pushi.e 0
push.v builtin.chainLinked
pushi.e -9
pop.v.b [stacktop]self.chainFixed
pushi.e -4
pop.v.i builtin.chainLinked
push.d 1.1
conv.d.v
push.d 0.9
conv.d.v
call.i random_range(argc=2)
pushbltn.v builtin.undefined
pushbltn.v builtin.undefined
pushi.e 0
conv.b.v
pushi.e 1
conv.i.v
pushref.i 33554456
call.i audio_play_sound(argc=6)
popz.v

:[156]
pushloc.v local._player
pushi.e -9
push.v [stacktop]self.token
push.v builtin.theType
dup.v 1 8
dup.v 0
push.v stacktop.initialize
callv.v 1
popz.v
push.v arg.argument0
pushi.e 1
add.i.v
push.s "sprTokenActed{0}"@11381
conv.s.v
call.i @@string@@(argc=2)
call.i asset_get_index(argc=1)
b [158]

> gml_Script____struct___595@anon@13268@gml_Object_oToken_Create_0 (locals=0, argc=0)
:[157]
call.i @@SetStatic@@(argc=0)
pushi.e -15
pushi.e 0
push.v [array]self.argument
pop.v.v self.sprite_index
exit.i

:[158]
push.i [function]gml_Script____struct___595@anon@13268@gml_Object_oToken_Create_0
conv.i.v
call.i @@NullObject@@(argc=0)
call.i method(argc=2)
dup.v 0
pop.v.v global.___struct___595
call.i @@NewGMLObject@@(argc=2)
pushref.i 15
push.v builtin.depth
pushloc.v local._player
pushi.e -9
push.v [stacktop]self.token
pushi.e -9
push.v [stacktop]self.yDraw
pushloc.v local._player
pushi.e -9
push.v [stacktop]self.token
pushi.e -9
push.v [stacktop]self.xDraw
call.i instance_create_depth(argc=5)
popz.v
push.v builtin.numberBuy
pushi.e -1
cmp.i.v NEQ
bf [160]

:[159]
call.i instance_destroy(argc=0)
popz.v

:[160]
exit.i

:[161]
push.i [function]gml_Script_anon@13268@gml_Object_oToken_Create_0
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
pop.v.v builtin.clone
b [168]

> gml_Script_anon@15530@gml_Object_oToken_Create_0 (locals=0, argc=1)
:[162]
push.v arg.argument0
call.i @@This@@(argc=0)
push.v builtin.initialize
callv.v 1
popz.v
push.v arg.argument0
push.l 1
cmp.l.v EQ
bt [164]

:[163]
push.v arg.argument0
push.l 2
cmp.l.v EQ
b [165]

:[164]
push.e 1

:[165]
bf [167]

:[166]
pushi.e 0
pop.v.i builtin.image_alpha
push.l 6
pop.v.l builtin.stateNext

:[167]
exit.i

:[168]
push.i [function]gml_Script_anon@15530@gml_Object_oToken_Create_0
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
pop.v.v builtin.change_type

:[end]