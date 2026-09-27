:[0]
b [427]

> gml_Script_execute_card (locals=52, argc=6)
:[1]
push.v arg.argument1
pop.v.v local._curChar
pushloc.v local._curChar
dup.v 0 8
dup.v 0
push.v stacktop.is_alive
callv.v 0
conv.v.b
not.b
bf [3]

:[2]
pushi.e 1
conv.b.v
ret.v

:[3]
call.i @@NewGMLArray@@(argc=0)
pop.v.v local._fighters
pushi.e 0
pop.v.i local._f

:[4]
pushloc.v local._f
pushglb.v global.playersManager
dup.v 0 8
dup.v 0
push.v stacktop.get_characters
callv.v 0
call.i array_length(argc=1)
cmp.v.v LT
bf [8]

:[5]
pushglb.v global.playersManager
pushloc.v local._f
dup.v 1 8
dup.v 0
push.v stacktop.get_characters
callv.v 1
dup.v 0 8
dup.v 0
push.v stacktop.is_in_fight
callv.v 0
conv.v.b
bf [7]

:[6]
pushglb.v global.playersManager
pushloc.v local._f
dup.v 1 8
dup.v 0
push.v stacktop.get_characters
callv.v 1
pushloc.v local._fighters
call.i array_push(argc=2)
popz.v

:[7]
push.v local._f
push.e 1
add.i.v
pop.v.v local._f
b [4]

:[8]
pushloc.v local._fighters
call.i array_length(argc=1)
pop.v.v local._fightersLength
push.v arg.argument0
pushi.e -9
push.v [stacktop]self.cardType
push.l 4
cmp.l.v EQ
bf [12]

:[9]
pushloc.v local._curChar
pushglb.v global.effect
pushi.e -9
push.v [stacktop]self.hallucinogenicVision
dup.v 1 8
dup.v 0
push.v stacktop.effect_index
callv.v 1
pop.v.v local._hasHallucinogenic
pushloc.v local._hasHallucinogenic
pushi.e -1
cmp.i.v NEQ
bf [12]

:[10]
pushloc.v local._curChar
pushloc.v local._hasHallucinogenic
dup.v 1 8
dup.v 0
push.v stacktop.get_effect
callv.v 1
pop.v.v local._hallucinogenic
pushloc.v local._hallucinogenic
pushi.e -9
push.v [stacktop]self.stack
pushi.e 0
cmp.i.v GT
bf [12]

:[11]
pushloc.v local._hallucinogenic
pushloc.v local._hallucinogenic
pushi.e -9
push.v [stacktop]self.y
pushloc.v local._hallucinogenic
pushi.e -9
push.v [stacktop]self.x
pushi.e -1
conv.i.v
dup.v 3 8
dup.v 0
push.v stacktop.increase_props
callv.v 3
popz.v

:[12]
push.v arg.argument3
pushi.e -9
push.v arg.argument4
conv.v.i
push.v [array]self.effectRequiredToActivate
pushbltn.v builtin.undefined
cmp.v.v NEQ
bf [15]

:[13]
pushloc.v local._curChar
push.v arg.argument3
pushi.e -9
push.v arg.argument4
conv.v.i
push.v [array]self.effectRequiredToActivate
dup.v 1 8
dup.v 0
push.v stacktop.effect_index
callv.v 1
pop.v.v local._hasEffectRequiredToActivate
pushloc.v local._hasEffectRequiredToActivate
pushi.e -1
cmp.i.v EQ
bf [15]

:[14]
pushi.e 0
conv.b.v
ret.v

:[15]
push.v arg.argument3
pushi.e -9
push.v arg.argument4
conv.v.i
push.v [array]self.effectRequiredToSkip
pushbltn.v builtin.undefined
cmp.v.v NEQ
bf [18]

:[16]
pushloc.v local._curChar
push.v arg.argument3
pushi.e -9
push.v arg.argument4
conv.v.i
push.v [array]self.effectRequiredToSkip
dup.v 1 8
dup.v 0
push.v stacktop.effect_index
callv.v 1
pop.v.v local._hasEffectRequiredToSkip
pushloc.v local._hasEffectRequiredToSkip
pushi.e -1
cmp.i.v NEQ
bf [18]

:[17]
pushi.e 0
conv.b.v
ret.v

:[18]
pushloc.v local._curChar
pushi.e -9
push.v [stacktop]self.lastChoiceWasLeftmost
call.i array_length(argc=1)
pushi.e 1
cmp.i.v EQ
bf [20]

:[19]
pushi.e 0
conv.i.v
b [21]

:[20]
pushloc.v local._curChar
pushi.e -9
push.v [stacktop]self.lastChoiceWasLeftmost
call.i array_length(argc=1)
pushi.e 2
sub.i.v

:[21]
pop.v.v local._lenghtLastChoiceLeft
pushloc.v local._curChar
pushi.e -9
push.v [stacktop]self.lastChoiceWasRightmost
call.i array_length(argc=1)
pushi.e 1
cmp.i.v EQ
bf [23]

:[22]
pushi.e 0
conv.i.v
b [24]

:[23]
pushloc.v local._curChar
pushi.e -9
push.v [stacktop]self.lastChoiceWasRightmost
call.i array_length(argc=1)
pushi.e 2
sub.i.v

:[24]
pop.v.v local._lenghtLastChoiceRight
push.v arg.argument3
pushi.e -9
push.v arg.argument4
conv.v.i
push.v [array]self.targetType
dup.v 0
push.l 0
cmp.l.v EQ
bt [49]

:[25]
dup.v 0
push.l 1
cmp.l.v EQ
bt [50]

:[26]
dup.v 0
push.l 2
cmp.l.v EQ
bt [54]

:[27]
dup.v 0
push.l 3
cmp.l.v EQ
bt [58]

:[28]
dup.v 0
push.l 4
cmp.l.v EQ
bt [62]

:[29]
dup.v 0
push.l 6
cmp.l.v EQ
bt [66]

:[30]
dup.v 0
push.l 7
cmp.l.v EQ
bt [73]

:[31]
dup.v 0
push.l 8
cmp.l.v EQ
bt [80]

:[32]
dup.v 0
push.l 9
cmp.l.v EQ
bt [84]

:[33]
dup.v 0
push.l 12
cmp.l.v EQ
bt [88]

:[34]
dup.v 0
push.l 13
cmp.l.v EQ
bt [92]

:[35]
dup.v 0
push.l 14
cmp.l.v EQ
bt [96]

:[36]
dup.v 0
push.l 15
cmp.l.v EQ
bt [100]

:[37]
dup.v 0
push.l 16
cmp.l.v EQ
bt [107]

:[38]
dup.v 0
push.l 18
cmp.l.v EQ
bt [114]

:[39]
dup.v 0
push.l 17
cmp.l.v EQ
bt [121]

:[40]
dup.v 0
push.l 22
cmp.l.v EQ
bt [128]

:[41]
dup.v 0
push.l 11
cmp.l.v EQ
bt [132]

:[42]
dup.v 0
push.l 10
cmp.l.v EQ
bt [136]

:[43]
dup.v 0
push.l 5
cmp.l.v EQ
bt [140]

:[44]
dup.v 0
push.l 19
cmp.l.v EQ
bt [146]

:[45]
dup.v 0
push.l 20
cmp.l.v EQ
bt [150]

:[46]
dup.v 0
push.l 21
cmp.l.v EQ
bt [154]

:[47]
dup.v 0
push.l 23
cmp.l.v EQ
bt [158]

:[48]
b [160]

:[49]
pushloc.v local._curChar
pop.v.v local._newTarget
b [160]

:[50]
pushloc.v local._curChar
pushi.e -9
pushloc.v local._lenghtLastChoiceLeft
conv.v.i
push.v [array]self.lastChoiceWasLeftmost
conv.v.b
bf [52]

:[51]
pushloc.v local._curChar
pop.v.v local._newTarget
b [53]

:[52]
pushi.e 0
conv.b.v
pop.v.v local.$$$$temp$$$$
popz.v
push.v local.$$$$temp$$$$
ret.v

:[53]
b [160]

:[54]
pushloc.v local._curChar
pushi.e -9
pushloc.v local._lenghtLastChoiceLeft
conv.v.i
push.v [array]self.lastChoiceWasLeftmost
conv.v.b
not.b
bf [56]

:[55]
pushloc.v local._curChar
pop.v.v local._newTarget
b [57]

:[56]
pushi.e 0
conv.b.v
pop.v.v local.$$$$temp$$$$
popz.v
push.v local.$$$$temp$$$$
ret.v

:[57]
b [160]

:[58]
pushloc.v local._curChar
pushi.e -9
pushloc.v local._lenghtLastChoiceRight
conv.v.i
push.v [array]self.lastChoiceWasRightmost
conv.v.b
bf [60]

:[59]
pushloc.v local._curChar
pop.v.v local._newTarget
b [61]

:[60]
pushi.e 0
conv.b.v
pop.v.v local.$$$$temp$$$$
popz.v
push.v local.$$$$temp$$$$
ret.v

:[61]
b [160]

:[62]
pushloc.v local._curChar
pushi.e -9
pushloc.v local._lenghtLastChoiceRight
conv.v.i
push.v [array]self.lastChoiceWasRightmost
conv.v.b
not.b
bf [64]

:[63]
pushloc.v local._curChar
pop.v.v local._newTarget
b [65]

:[64]
pushi.e 0
conv.b.v
pop.v.v local.$$$$temp$$$$
popz.v
push.v local.$$$$temp$$$$
ret.v

:[65]
b [160]

:[66]
push.v arg.argument2
call.i gml_Script_get_size(argc=1)
pushi.e 1
cmp.i.v EQ
bf [68]

:[67]
pushloc.v local._curChar
pushglb.v global.effect
pushi.e -9
push.v [stacktop]self.tapeworm
dup.v 1 8
dup.v 0
push.v stacktop.effect_index
callv.v 1
pushi.e -1
cmp.i.v EQ
b [69]

:[68]
push.e 0

:[69]
bf [71]

:[70]
pushloc.v local._curChar
pop.v.v local._newTarget
b [72]

:[71]
pushi.e 0
conv.b.v
pop.v.v local.$$$$temp$$$$
popz.v
push.v local.$$$$temp$$$$
ret.v

:[72]
b [160]

:[73]
push.v arg.argument2
call.i gml_Script_get_size(argc=1)
pushi.e 1
cmp.i.v GT
bt [75]

:[74]
pushloc.v local._curChar
pushglb.v global.effect
pushi.e -9
push.v [stacktop]self.tapeworm
dup.v 1 8
dup.v 0
push.v stacktop.effect_index
callv.v 1
pushi.e -1
cmp.i.v NEQ
b [76]

:[75]
push.e 1

:[76]
bf [78]

:[77]
pushloc.v local._curChar
pop.v.v local._newTarget
b [79]

:[78]
pushi.e 0
conv.b.v
pop.v.v local.$$$$temp$$$$
popz.v
push.v local.$$$$temp$$$$
ret.v

:[79]
b [160]

:[80]
push.v arg.argument2
call.i gml_Script_get_size(argc=1)
pushloc.v local._fightersLength
cmp.v.v EQ
bf [82]

:[81]
pushloc.v local._curChar
pop.v.v local._newTarget
b [83]

:[82]
pushi.e 0
conv.b.v
pop.v.v local.$$$$temp$$$$
popz.v
push.v local.$$$$temp$$$$
ret.v

:[83]
b [160]

:[84]
push.v arg.argument2
call.i gml_Script_get_size(argc=1)
pushloc.v local._fightersLength
cmp.v.v NEQ
bf [86]

:[85]
pushloc.v local._curChar
pop.v.v local._newTarget
b [87]

:[86]
pushi.e 0
conv.b.v
pop.v.v local.$$$$temp$$$$
popz.v
push.v local.$$$$temp$$$$
ret.v

:[87]
b [160]

:[88]
push.v arg.argument2
call.i gml_Script_get_size(argc=1)
pushi.e 2
mod.i.v
pushi.e 1
cmp.i.v EQ
bf [90]

:[89]
pushloc.v local._curChar
pop.v.v local._newTarget
b [91]

:[90]
pushi.e 0
conv.b.v
pop.v.v local.$$$$temp$$$$
popz.v
push.v local.$$$$temp$$$$
ret.v

:[91]
b [160]

:[92]
push.v arg.argument2
call.i gml_Script_get_size(argc=1)
pushi.e 2
mod.i.v
pushi.e 0
cmp.i.v EQ
bf [94]

:[93]
pushloc.v local._curChar
pop.v.v local._newTarget
b [95]

:[94]
pushi.e 0
conv.b.v
pop.v.v local.$$$$temp$$$$
popz.v
push.v local.$$$$temp$$$$
ret.v

:[95]
b [160]

:[96]
pushglb.v global.cardExecutionManager
pushi.e -9
push.v [stacktop]self.randomPlayerThatMadeChoice
pushloc.v local._curChar
pushi.e -9
push.v [stacktop]self.number
cmp.v.v EQ
bf [98]

:[97]
pushloc.v local._curChar
pop.v.v local._newTarget
b [99]

:[98]
pushi.e 0
conv.b.v
pop.v.v local.$$$$temp$$$$
popz.v
push.v local.$$$$temp$$$$
ret.v

:[99]
b [160]

:[100]
call.i @@NewGMLArray@@(argc=0)
pop.v.v local._newTarget
pushglb.v global.playersManager
push.v arg.argument0
pushi.e -9
push.v [stacktop]self.actionType
dup.v 1 8
dup.v 0
push.v stacktop.get_last_player_to_act
callv.v 1
pop.v.v local._number
pushloc.v local._number
pushi.e -1
cmp.i.v NEQ
bf [102]

:[101]
pushloc.v local._curChar
pushi.e -9
push.v [stacktop]self.number
pushloc.v local._number
cmp.v.v EQ
b [103]

:[102]
push.e 0

:[103]
bf [105]

:[104]
pushloc.v local._curChar
pushi.e -7
pushi.e 0
pop.v.v [array]self._newTarget
b [106]

:[105]
pushi.e 0
conv.b.v
pop.v.v local.$$$$temp$$$$
popz.v
push.v local.$$$$temp$$$$
ret.v

:[106]
b [160]

:[107]
call.i @@NewGMLArray@@(argc=0)
pop.v.v local._newTarget
pushglb.v global.playersManager
push.v arg.argument0
pushi.e -9
push.v [stacktop]self.actionType
dup.v 1 8
dup.v 0
push.v stacktop.get_first_player_to_act
callv.v 1
pop.v.v local._number
pushloc.v local._number
pushi.e -1
cmp.i.v NEQ
bf [109]

:[108]
pushloc.v local._curChar
pushi.e -9
push.v [stacktop]self.number
pushloc.v local._number
cmp.v.v EQ
b [110]

:[109]
push.e 0

:[110]
bf [112]

:[111]
pushloc.v local._curChar
pushi.e -7
pushi.e 0
pop.v.v [array]self._newTarget
b [113]

:[112]
pushi.e 0
conv.b.v
pop.v.v local.$$$$temp$$$$
popz.v
push.v local.$$$$temp$$$$
ret.v

:[113]
b [160]

:[114]
call.i @@NewGMLArray@@(argc=0)
pop.v.v local._newTarget
pushglb.v global.playersManager
push.v arg.argument0
pushi.e -9
push.v [stacktop]self.actionType
dup.v 1 8
dup.v 0
push.v stacktop.get_first_player_to_act
callv.v 1
pop.v.v local._number
pushloc.v local._number
pushi.e -1
cmp.i.v NEQ
bf [116]

:[115]
pushloc.v local._curChar
pushi.e -9
push.v [stacktop]self.number
pushloc.v local._number
cmp.v.v NEQ
b [117]

:[116]
push.e 0

:[117]
bf [119]

:[118]
pushloc.v local._curChar
pushi.e -7
pushi.e 0
pop.v.v [array]self._newTarget
b [120]

:[119]
pushi.e 0
conv.b.v
pop.v.v local.$$$$temp$$$$
popz.v
push.v local.$$$$temp$$$$
ret.v

:[120]
b [160]

:[121]
call.i @@NewGMLArray@@(argc=0)
pop.v.v local._newTarget
pushglb.v global.playersManager
push.v arg.argument0
pushi.e -9
push.v [stacktop]self.actionType
dup.v 1 8
dup.v 0
push.v stacktop.get_last_player_to_act
callv.v 1
pop.v.v local._number
pushloc.v local._number
pushi.e -1
cmp.i.v NEQ
bf [123]

:[122]
pushloc.v local._curChar
pushi.e -9
push.v [stacktop]self.number
pushloc.v local._number
cmp.v.v NEQ
b [124]

:[123]
push.e 0

:[124]
bf [126]

:[125]
pushloc.v local._curChar
pushi.e -7
pushi.e 0
pop.v.v [array]self._newTarget
b [127]

:[126]
pushi.e 0
conv.b.v
pop.v.v local.$$$$temp$$$$
popz.v
push.v local.$$$$temp$$$$
ret.v

:[127]
b [160]

:[128]
pushloc.v local._curChar
pushglb.v global.cardExecutionManager
pushi.e -9
push.v [stacktop]self.playersWithMostGem
call.i array_get_index(argc=2)
pushi.e -1
cmp.i.v NEQ
bf [130]

:[129]
pushloc.v local._curChar
pop.v.v local._newTarget
b [131]

:[130]
pushi.e 0
conv.b.v
pop.v.v local.$$$$temp$$$$
popz.v
push.v local.$$$$temp$$$$
ret.v

:[131]
b [160]

:[132]
pushloc.v local._curChar
pushglb.v global.cardExecutionManager
pushi.e -9
push.v [stacktop]self.playersWithMaxHp
call.i array_get_index(argc=2)
pushi.e -1
cmp.i.v NEQ
bf [134]

:[133]
pushloc.v local._curChar
pop.v.v local._newTarget
b [135]

:[134]
pushi.e 0
conv.b.v
pop.v.v local.$$$$temp$$$$
popz.v
push.v local.$$$$temp$$$$
ret.v

:[135]
b [160]

:[136]
pushloc.v local._curChar
pushglb.v global.cardExecutionManager
pushi.e -9
push.v [stacktop]self.playersWithMaxHp
call.i array_get_index(argc=2)
pushi.e -1
cmp.i.v EQ
bf [138]

:[137]
pushloc.v local._curChar
pop.v.v local._newTarget
b [139]

:[138]
pushi.e 0
conv.b.v
pop.v.v local.$$$$temp$$$$
popz.v
push.v local.$$$$temp$$$$
ret.v

:[139]
b [160]

:[140]
call.i @@NewGMLArray@@(argc=0)
pop.v.v local._newTarget
pushi.e 0
pop.v.i local._pc

:[141]
pushloc.v local._pc
pushglb.v global.playersCount
cmp.v.v LT
bf [145]

:[142]
pushglb.v global.playersManager
pushloc.v local._pc
dup.v 1 8
dup.v 0
push.v stacktop.get_characters
callv.v 1
dup.v 0 8
dup.v 0
push.v stacktop.is_alive
callv.v 0
conv.v.b
not.b
bf [144]

:[143]
pushglb.v global.playersManager
pushloc.v local._pc
dup.v 1 8
dup.v 0
push.v stacktop.get_characters
callv.v 1
pushloc.v local._newTarget
call.i array_push(argc=2)
popz.v

:[144]
push.v local._pc
push.e 1
add.i.v
pop.v.v local._pc
b [141]

:[145]
b [160]

:[146]
pushloc.v local._curChar
pushglb.v global.cardExecutionManager
pushi.e -9
push.v [stacktop]self.playersWithLeastHp
call.i array_get_index(argc=2)
pushi.e -1
cmp.i.v NEQ
bf [148]

:[147]
pushglb.v global.cardExecutionManager
pushi.e -9
push.v [stacktop]self.playersWithLeastHp
pop.v.v local._newTarget
b [149]

:[148]
pushi.e 0
conv.b.v
pop.v.v local.$$$$temp$$$$
popz.v
push.v local.$$$$temp$$$$
ret.v

:[149]
b [160]

:[150]
pushloc.v local._curChar
pushglb.v global.cardExecutionManager
pushi.e -9
push.v [stacktop]self.playersWithMaxHp
call.i array_get_index(argc=2)
pushi.e -1
cmp.i.v NEQ
bf [152]

:[151]
pushglb.v global.cardExecutionManager
pushi.e -9
push.v [stacktop]self.playersWithMaxHp
pop.v.v local._newTarget
b [153]

:[152]
pushi.e 0
conv.b.v
pop.v.v local.$$$$temp$$$$
popz.v
push.v local.$$$$temp$$$$
ret.v

:[153]
b [160]

:[154]
pushloc.v local._curChar
pushglb.v global.cardExecutionManager
pushi.e -9
push.v [stacktop]self.playersWithLeastLastDirectDamage
call.i array_get_index(argc=2)
pushi.e -1
cmp.i.v NEQ
bf [156]

:[155]
pushloc.v local._curChar
pop.v.v local._newTarget
b [157]

:[156]
pushi.e 0
conv.b.v
pop.v.v local.$$$$temp$$$$
popz.v
push.v local.$$$$temp$$$$
ret.v

:[157]
call.i @@NewGMLArray@@(argc=0)
pop.v.v local._newTarget
pushglb.v global.cardExecutionManager
pushi.e -9
push.v [stacktop]self.playersWithLeastLastDirectDamage
pop.v.v local._newTarget
b [160]

:[158]
pushi.e 0
conv.b.v
pop.v.v local.$$$$temp$$$$
popz.v
push.v local.$$$$temp$$$$
ret.v

:[159]
b [160]

:[160]
popz.v
pushloc.v local._newTarget
call.i is_array(argc=1)
conv.v.b
bf [162]

:[161]
pushloc.v local._newTarget
b [163]

:[162]
pushloc.v local._newTarget
call.i @@NewGMLArray@@(argc=1)

:[163]
pop.v.v local._target
pushi.e -1
pop.v.i local._amount
push.v arg.argument3
pushi.e -9
push.v arg.argument4
conv.v.i
push.v [array]self.damageBased
dup.v 0
push.l 8
cmp.l.v EQ
bt [181]

:[164]
dup.v 0
push.l 1
cmp.l.v EQ
bt [182]

:[165]
dup.v 0
push.l 9
cmp.l.v EQ
bt [183]

:[166]
dup.v 0
push.l 7
cmp.l.v EQ
bt [184]

:[167]
dup.v 0
push.l 3
cmp.l.v EQ
bt [185]

:[168]
dup.v 0
push.l 5
cmp.l.v EQ
bt [189]

:[169]
dup.v 0
push.l 4
cmp.l.v EQ
bt [190]

:[170]
dup.v 0
push.l 10
cmp.l.v EQ
bt [191]

:[171]
dup.v 0
push.l 11
cmp.l.v EQ
bt [192]

:[172]
dup.v 0
push.l 12
cmp.l.v EQ
bt [193]

:[173]
dup.v 0
push.l 13
cmp.l.v EQ
bt [194]

:[174]
dup.v 0
push.l 17
cmp.l.v EQ
bt [195]

:[175]
dup.v 0
push.l 14
cmp.l.v EQ
bt [199]

:[176]
dup.v 0
push.l 15
cmp.l.v EQ
bt [200]

:[177]
dup.v 0
push.l 16
cmp.l.v EQ
bt [201]

:[178]
dup.v 0
push.l 6
cmp.l.v EQ
bt [202]

:[179]
dup.v 0
push.l 0
cmp.l.v EQ
bt [203]

:[180]
b [204]

:[181]
pushloc.v local._curChar
pushi.e -9
push.v [stacktop]self.hp
push.v arg.argument3
pushi.e -9
push.v arg.argument4
conv.v.i
push.v [array]self.amount
mul.v.v
pop.v.v local._amount
b [204]

:[182]
pushloc.v local._curChar
pushi.e -9
push.v [stacktop]self.hp
push.v arg.argument3
pushi.e -9
push.v arg.argument4
conv.v.i
push.v [array]self.amount
mul.v.v
pushi.e 100
conv.i.d
div.d.v
call.i round(argc=1)
pop.v.v local._amount
pushi.e 1
conv.i.v
pushloc.v local._amount
call.i max(argc=2)
pop.v.v local._amount
b [204]

:[183]
pushglb.v global.cardExecutionManager
pushi.e -9
push.v [stacktop]self.amountPlayersWithMaxHp
pushloc.v local._curChar
pushi.e -9
push.v [stacktop]self.hp
sub.v.v
push.v arg.argument3
pushi.e -9
push.v arg.argument4
conv.v.i
push.v [array]self.amount
mul.v.v
pop.v.v local._amount
b [204]

:[184]
push.v arg.argument3
pushi.e -9
push.v arg.argument4
conv.v.i
push.v [arraypushaf]self.amount
pushi.e 1
pushaf.e
push.v arg.argument3
pushi.e -9
push.v arg.argument4
conv.v.i
push.v [arraypushaf]self.amount
pushi.e 0
pushaf.e
pushglb.v global.rng
call.i gml_Script_minstd_int_range(argc=3)
pop.v.v local._amount
b [204]

:[185]
pushloc.v local._curChar
pushi.e -9
push.v [stacktop]self.hp
pushi.e 50
cmp.i.v LT
bf [187]

:[186]
pushi.e 50
pushloc.v local._curChar
pushi.e -9
push.v [stacktop]self.hp
sub.v.i
pop.v.v local._amount
b [188]

:[187]
pushi.e 0
conv.b.v
pop.v.v local.$$$$temp$$$$
popz.v
push.v local.$$$$temp$$$$
ret.v

:[188]
b [204]

:[189]
push.v arg.argument3
pushi.e -9
push.v arg.argument4
conv.v.i
push.v [arraypushaf]self.amount
pushref.i 22
pushi.e -9
push.v [stacktop]self.nbrFightersAtCardDraw
pushi.e 1
sub.i.v
conv.v.i
pushac.e
push.v arg.argument2
call.i gml_Script_get_size(argc=1)
pushi.e 1
sub.i.v
conv.v.i
pushaf.e
pop.v.v local._amount
b [204]

:[190]
push.v local._amount
pushloc.v local._target
call.i array_length(argc=1)
mul.v.v
pop.v.v local._amount
b [204]

:[191]
pushloc.v local._curChar
pushi.e -9
push.v [stacktop]self.lastDirectDamage
push.v arg.argument3
pushi.e -9
push.v arg.argument4
conv.v.i
push.v [array]self.amount
mul.v.v
pop.v.v local._amount
b [204]

:[192]
pushloc.v local._curChar
pushi.e -9
push.v [stacktop]self.lastDirectHeal
push.v arg.argument3
pushi.e -9
push.v arg.argument4
conv.v.i
push.v [array]self.amount
mul.v.v
pop.v.v local._amount
b [204]

:[193]
pushloc.v local._curChar
dup.v 0 8
dup.v 0
push.v stacktop.get_gem
callv.v 0
push.v arg.argument3
pushi.e -9
push.v arg.argument4
conv.v.i
push.v [array]self.amount
mul.v.v
pushi.e 100
conv.i.d
div.d.v
call.i round(argc=1)
pop.v.v local._amount
b [204]

:[194]
pushloc.v local._curChar
dup.v 0 8
dup.v 0
push.v stacktop.get_gem
callv.v 0
push.v arg.argument3
pushi.e -9
push.v arg.argument4
conv.v.i
push.v [array]self.amount
mul.v.v
call.i round(argc=1)
pop.v.v local._amount
b [204]

:[195]
pushi.e 0
pop.v.i local._amount
pushi.e 0
pop.v.i local._allAmountStackIncr

:[196]
pushloc.v local._allAmountStackIncr
pushloc.v local._curChar
pushi.e -9
push.v [stacktop]self.effects
call.i array_length(argc=1)
cmp.v.v LT
bf [198]

:[197]
push.v local._amount
pushloc.v local._curChar
pushi.e -9
pushloc.v local._allAmountStackIncr
conv.v.i
push.v [array]self.effects
pushi.e -9
push.v [stacktop]self.stack
add.v.v
pop.v.v local._amount
push.v local._allAmountStackIncr
push.e 1
add.i.v
pop.v.v local._allAmountStackIncr
b [196]

:[198]
push.v local._amount
push.v arg.argument3
pushi.e -9
push.v arg.argument4
conv.v.i
push.v [array]self.amount
mul.v.v
pop.v.v local._amount
b [204]

:[199]
pushglb.v global.cardExecutionManager
pushi.e -9
push.v [stacktop]self.amountPlayersWithLeastHp
pop.v.v local._leastHp
pushloc.v local._leastHp
push.v arg.argument3
pushi.e -9
push.v arg.argument4
conv.v.i
push.v [array]self.amount
mul.v.v
pop.v.v local._amount
b [204]

:[200]
pushglb.v global.cardExecutionManager
pushi.e -9
push.v [stacktop]self.amountPlayersWithMaxHp
pop.v.v local._mostHp
pushloc.v local._mostHp
push.v arg.argument3
pushi.e -9
push.v arg.argument4
conv.v.i
push.v [array]self.amount
mul.v.v
pop.v.v local._amount
b [204]

:[201]
pushloc.v local._curChar
pushi.e -9
push.v [stacktop]self.hpLostDuringTheMonster
push.v arg.argument3
pushi.e -9
push.v arg.argument4
conv.v.i
push.v [array]self.amount
mul.v.v
pop.v.v local._amount
b [204]

:[202]
push.v arg.argument3
pushi.e -9
push.v arg.argument4
conv.v.i
push.v [array]self.amount
push.v arg.argument2
call.i gml_Script_get_size(argc=1)
div.v.v
call.i round(argc=1)
pushi.e 1
conv.i.v
call.i max(argc=2)
pop.v.v local._amount
b [204]

:[203]
push.v arg.argument3
pushi.e -9
push.v arg.argument4
conv.v.i
push.v [array]self.amount
pop.v.v local._amount
b [204]

:[204]
popz.v
pushi.e -1
pop.v.i local._stack
push.v arg.argument3
pushi.e -9
push.v arg.argument4
conv.v.i
push.v [array]self.stackBased
dup.v 0
push.l 2
cmp.l.v EQ
bt [210]

:[205]
dup.v 0
push.l 3
cmp.l.v EQ
bt [211]

:[206]
dup.v 0
push.l 4
cmp.l.v EQ
bt [212]

:[207]
dup.v 0
push.l 0
cmp.l.v EQ
bt [213]

:[208]
dup.v 0
push.l 1
cmp.l.v EQ
bt [214]

:[209]
b [215]

:[210]
push.v arg.argument3
pushi.e -9
push.v arg.argument4
conv.v.i
push.v [arraypushaf]self.stack
pushref.i 22
pushi.e -9
push.v [stacktop]self.nbrFightersAtCardDraw
pushi.e 1
sub.i.v
conv.v.i
pushac.e
push.v arg.argument2
call.i gml_Script_get_size(argc=1)
pushi.e 1
sub.i.v
conv.v.i
pushaf.e
pop.v.v local._stack
b [215]

:[211]
push.v arg.argument3
pushi.e -9
push.v arg.argument4
conv.v.i
push.v [array]self.stack
push.v arg.argument2
call.i gml_Script_get_size(argc=1)
mul.v.v
pop.v.v local._stack
b [215]

:[212]
push.v arg.argument3
pushi.e -9
push.v arg.argument4
conv.v.i
push.v [arraypushaf]self.stack
pushi.e 1
pushaf.e
push.v arg.argument3
pushi.e -9
push.v arg.argument4
conv.v.i
push.v [arraypushaf]self.stack
pushi.e 0
pushaf.e
pushglb.v global.rng
call.i gml_Script_minstd_int_range(argc=3)
pop.v.v local._stack
b [215]

:[213]
push.v arg.argument3
pushi.e -9
push.v arg.argument4
conv.v.i
push.v [array]self.stack
pop.v.v local._stack
b [215]

:[214]
pushloc.v local._curChar
dup.v 0 8
dup.v 0
push.v stacktop.get_gem
callv.v 0
push.v arg.argument3
pushi.e -9
push.v arg.argument4
conv.v.i
push.v [array]self.stack
mul.v.v
pushi.e 100
conv.i.d
div.d.v
call.i round(argc=1)
pop.v.v local._stack
b [215]

:[215]
popz.v
pushglb.v global.dayNightCycle
dup.v 0 8
dup.v 0
push.v stacktop.get_event
callv.v 0
push.l 2
cmp.l.v EQ
bf [221]

:[216]
push.v arg.argument3
pushi.e -9
push.v arg.argument4
conv.v.i
push.v [array]self.damageBased
push.l 14
cmp.l.v NEQ
bf [218]

:[217]
push.v arg.argument3
pushi.e -9
push.v arg.argument4
conv.v.i
push.v [array]self.damageBased
push.l 15
cmp.l.v NEQ
b [219]

:[218]
push.e 0

:[219]
bf [221]

:[220]
push.v local._amount
pushi.e 2
mul.i.v
pop.v.v local._amount
push.v local._stack
pushi.e 2
mul.i.v
pop.v.v local._stack

:[221]
pushi.e 0
pop.v.b local._chanceCardApplied
push.v arg.argument3
pushi.e -9
push.v arg.argument4
conv.v.i
push.v [array]self.chance
pop.v.v local._chanceCard
pushloc.v local._chanceCard
pushi.e 100
cmp.i.v EQ
bf [223]

:[222]
pushi.e 1
pop.v.b local._chanceCardApplied
b [237]

:[223]
push.v arg.argument3
pushi.e -9
push.v arg.argument4
conv.v.i
push.v [array]self.chanceClusivity
push.l 1
cmp.l.v EQ
bf [235]

:[224]
call.i @@NewGMLArray@@(argc=0)
pop.v.v local._arrayOfEveryChances
pushi.e 0
pop.v.i local._everyChance

:[225]
pushloc.v local._everyChance
push.v arg.argument3
pushi.e -9
push.v [stacktop]self.chanceClusivity
call.i array_length(argc=1)
cmp.v.v LT
bf [232]

:[226]
push.v arg.argument3
pushi.e -9
pushloc.v local._everyChance
conv.v.i
push.v [array]self.chance
pushi.e 100
cmp.i.v LT
bf [228]

:[227]
push.v arg.argument3
pushi.e -9
pushloc.v local._everyChance
conv.v.i
push.v [array]self.chanceClusivity
push.l 1
cmp.l.v EQ
b [229]

:[228]
push.e 0

:[229]
bf [231]

:[230]
pushloc.v local._everyChance
pushloc.v local._arrayOfEveryChances
call.i array_push(argc=2)
popz.v
push.v arg.argument3
pushi.e -9
pushloc.v local._everyChance
conv.v.i
push.v [array]self.chance
pushloc.v local._arrayOfEveryChances
call.i array_push(argc=2)
popz.v

:[231]
push.v local._everyChance
push.e 1
add.i.v
pop.v.v local._everyChance
b [225]

:[232]
push.v arg.argument5
pushloc.v local._arrayOfEveryChances
call.i gml_Script_choose_weighted(argc=2)
pop.v.v local._chosenChance
pushloc.v local._chosenChance
pushi.e -9
push.v [stacktop]self.elem
push.v arg.argument4
cmp.v.v EQ
bf [234]

:[233]
pushi.e 1
pop.v.b local._chanceCardApplied

:[234]
b [237]

:[235]
pushi.e 100
conv.i.v
pushglb.v global.rng
call.i gml_Script_minstd_int(argc=2)
pushloc.v local._chanceCard
cmp.v.v LTE
bf [237]

:[236]
pushi.e 1
pop.v.b local._chanceCardApplied

:[237]
push.v arg.argument3
pushi.e -9
push.v arg.argument4
conv.v.i
push.v [array]self.damageTimes
pop.v.v local._damageTimes
pushi.e 0
pop.v.i local._t

:[238]
pushloc.v local._t
pushloc.v local._target
call.i gml_Script_get_size(argc=1)
cmp.v.v LT
bf [425]

:[239]
pushloc.v local._chanceCardApplied
conv.v.b
not.b
bf [245]

:[240]
push.v arg.argument3
pushi.e -9
push.v arg.argument4
conv.v.i
push.v [array]self.chanceClusivity
push.l 1
cmp.l.v NEQ
bf [244]

:[241]
pushloc.v local._stack
pushi.e -1
cmp.i.v NEQ
bf [243]

:[242]
push.v arg.argument0
pushi.e -7
pushloc.v local._t
conv.v.i
push.v [array]self._target
dup.v 1 8
dup.v 0
push.v stacktop.launch_effect
callv.v 1
popz.v
b [244]

:[243]
push.v arg.argument0
pushi.e -7
pushloc.v local._t
conv.v.i
push.v [array]self._target
dup.v 1 8
dup.v 0
push.v stacktop.launch_attack
callv.v 1
popz.v

:[244]
b [424]

:[245]
push.v arg.argument3
pushi.e -9
push.v arg.argument4
conv.v.i
push.v [array]self.actionType
dup.v 0
pushglb.v global.effect
pushi.e -9
push.v [stacktop]self.nothing
cmp.v.v EQ
bt [338]

:[246]
dup.v 0
pushglb.v global.effect
pushi.e -9
push.v [stacktop]self.antidote
cmp.v.v EQ
bt [340]

:[247]
dup.v 0
pushglb.v global.effect
pushi.e -9
push.v [stacktop]self.attack
cmp.v.v EQ
bt [343]

:[248]
dup.v 0
pushglb.v global.effect
pushi.e -9
push.v [stacktop]self.attackMaybeSheep
cmp.v.v EQ
bt [353]

:[249]
dup.v 0
pushglb.v global.effect
pushi.e -9
push.v [stacktop]self.attackMultiple
cmp.v.v EQ
bt [357]

:[250]
dup.v 0
pushglb.v global.effect
pushi.e -9
push.v [stacktop]self.heal
cmp.v.v EQ
bt [358]

:[251]
dup.v 0
pushglb.v global.effect
pushi.e -9
push.v [stacktop]self.healMultiple
cmp.v.v EQ
bt [359]

:[252]
dup.v 0
pushglb.v global.effect
pushi.e -9
push.v [stacktop]self.healSoft
cmp.v.v EQ
bt [363]

:[253]
dup.v 0
pushglb.v global.effect
pushi.e -9
push.v [stacktop]self.redPill
cmp.v.v EQ
bt [364]

:[254]
dup.v 0
pushglb.v global.effect
pushi.e -9
push.v [stacktop]self.bluePill
cmp.v.v EQ
bt [365]

:[255]
dup.v 0
pushglb.v global.effect
pushi.e -9
push.v [stacktop]self.greenPill
cmp.v.v EQ
bt [365]

:[256]
dup.v 0
pushglb.v global.effect
pushi.e -9
push.v [stacktop]self.hazardousTransport
cmp.v.v EQ
bt [365]

:[257]
dup.v 0
pushglb.v global.effect
pushi.e -9
push.v [stacktop]self.pigeonEgg
cmp.v.v EQ
bt [365]

:[258]
dup.v 0
pushglb.v global.effect
pushi.e -9
push.v [stacktop]self.dynamite
cmp.v.v EQ
bt [365]

:[259]
dup.v 0
pushglb.v global.effect
pushi.e -9
push.v [stacktop]self.magicStick
cmp.v.v EQ
bt [365]

:[260]
dup.v 0
pushglb.v global.effect
pushi.e -9
push.v [stacktop]self.armor
cmp.v.v EQ
bt [365]

:[261]
dup.v 0
pushglb.v global.effect
pushi.e -9
push.v [stacktop]self.poison
cmp.v.v EQ
bt [365]

:[262]
dup.v 0
pushglb.v global.effect
pushi.e -9
push.v [stacktop]self.beeeh
cmp.v.v EQ
bt [365]

:[263]
dup.v 0
pushglb.v global.effect
pushi.e -9
push.v [stacktop]self.feverishDefence
cmp.v.v EQ
bt [365]

:[264]
dup.v 0
pushglb.v global.effect
pushi.e -9
push.v [stacktop]self.bandage
cmp.v.v EQ
bt [365]

:[265]
dup.v 0
pushglb.v global.effect
pushi.e -9
push.v [stacktop]self.confusion
cmp.v.v EQ
bt [365]

:[266]
dup.v 0
pushglb.v global.effect
pushi.e -9
push.v [stacktop]self.dragonSkin
cmp.v.v EQ
bt [365]

:[267]
dup.v 0
pushglb.v global.effect
pushi.e -9
push.v [stacktop]self.finalThread
cmp.v.v EQ
bt [365]

:[268]
dup.v 0
pushglb.v global.effect
pushi.e -9
push.v [stacktop]self.powerlessShot
cmp.v.v EQ
bt [365]

:[269]
dup.v 0
pushglb.v global.effect
pushi.e -9
push.v [stacktop]self.kaboom
cmp.v.v EQ
bt [365]

:[270]
dup.v 0
pushglb.v global.effect
pushi.e -9
push.v [stacktop]self.trapped
cmp.v.v EQ
bt [365]

:[271]
dup.v 0
pushglb.v global.effect
pushi.e -9
push.v [stacktop]self.badTrip
cmp.v.v EQ
bt [365]

:[272]
dup.v 0
pushglb.v global.effect
pushi.e -9
push.v [stacktop]self.uniqueGift
cmp.v.v EQ
bt [365]

:[273]
dup.v 0
pushglb.v global.effect
pushi.e -9
push.v [stacktop]self.oracleBlessing
cmp.v.v EQ
bt [365]

:[274]
dup.v 0
pushglb.v global.effect
pushi.e -9
push.v [stacktop]self.zlataLiquor
cmp.v.v EQ
bt [365]

:[275]
dup.v 0
pushglb.v global.effect
pushi.e -9
push.v [stacktop]self.peacefulMind
cmp.v.v EQ
bt [365]

:[276]
dup.v 0
pushglb.v global.effect
pushi.e -9
push.v [stacktop]self.magnyfyingGlass
cmp.v.v EQ
bt [365]

:[277]
dup.v 0
pushglb.v global.effect
pushi.e -9
push.v [stacktop]self.motherCurse
cmp.v.v EQ
bt [365]

:[278]
dup.v 0
pushglb.v global.effect
pushi.e -9
push.v [stacktop]self.tapeworm
cmp.v.v EQ
bt [365]

:[279]
dup.v 0
pushglb.v global.effect
pushi.e -9
push.v [stacktop]self.radiance
cmp.v.v EQ
bt [365]

:[280]
dup.v 0
pushglb.v global.effect
pushi.e -9
push.v [stacktop]self.murkyWater
cmp.v.v EQ
bt [365]

:[281]
dup.v 0
pushglb.v global.effect
pushi.e -9
push.v [stacktop]self.goldenSap
cmp.v.v EQ
bt [365]

:[282]
dup.v 0
pushglb.v global.effect
pushi.e -9
push.v [stacktop]self.rabbitFoot
cmp.v.v EQ
bt [365]

:[283]
dup.v 0
pushglb.v global.effect
pushi.e -9
push.v [stacktop]self.nudge
cmp.v.v EQ
bt [365]

:[284]
dup.v 0
pushglb.v global.effect
pushi.e -9
push.v [stacktop]self.darkWhispers
cmp.v.v EQ
bt [365]

:[285]
dup.v 0
pushglb.v global.effect
pushi.e -9
push.v [stacktop]self.tooth
cmp.v.v EQ
bt [365]

:[286]
dup.v 0
pushglb.v global.effect
pushi.e -9
push.v [stacktop]self.bellRevolt
cmp.v.v EQ
bt [365]

:[287]
dup.v 0
pushglb.v global.effect
pushi.e -9
push.v [stacktop]self.deadBox
cmp.v.v EQ
bt [365]

:[288]
dup.v 0
pushglb.v global.effect
pushi.e -9
push.v [stacktop]self.aliveBox
cmp.v.v EQ
bt [365]

:[289]
dup.v 0
pushglb.v global.effect
pushi.e -9
push.v [stacktop]self.pearlyPerl
cmp.v.v EQ
bt [365]

:[290]
dup.v 0
pushglb.v global.effect
pushi.e -9
push.v [stacktop]self.straw
cmp.v.v EQ
bt [365]

:[291]
dup.v 0
pushglb.v global.effect
pushi.e -9
push.v [stacktop]self.stoneLife
cmp.v.v EQ
bt [365]

:[292]
dup.v 0
pushglb.v global.effect
pushi.e -9
push.v [stacktop]self.mother
cmp.v.v EQ
bt [365]

:[293]
dup.v 0
pushglb.v global.effect
pushi.e -9
push.v [stacktop]self.pieceOfCloth
cmp.v.v EQ
bt [365]

:[294]
dup.v 0
pushglb.v global.effect
pushi.e -9
push.v [stacktop]self.predatoryInstinct
cmp.v.v EQ
bt [365]

:[295]
dup.v 0
pushglb.v global.effect
pushi.e -9
push.v [stacktop]self.grapeDrink
cmp.v.v EQ
bt [365]

:[296]
dup.v 0
pushglb.v global.effect
pushi.e -9
push.v [stacktop]self.slimeBall
cmp.v.v EQ
bt [365]

:[297]
dup.v 0
pushglb.v global.effect
pushi.e -9
push.v [stacktop]self.ratTail
cmp.v.v EQ
bt [365]

:[298]
dup.v 0
pushglb.v global.effect
pushi.e -9
push.v [stacktop]self.damagedShell
cmp.v.v EQ
bt [365]

:[299]
dup.v 0
pushglb.v global.effect
pushi.e -9
push.v [stacktop]self.starShapedNose
cmp.v.v EQ
bt [365]

:[300]
dup.v 0
pushglb.v global.effect
pushi.e -9
push.v [stacktop]self.thorn
cmp.v.v EQ
bt [365]

:[301]
dup.v 0
pushglb.v global.effect
pushi.e -9
push.v [stacktop]self.ladybug
cmp.v.v EQ
bt [365]

:[302]
dup.v 0
pushglb.v global.effect
pushi.e -9
push.v [stacktop]self.plague
cmp.v.v EQ
bt [365]

:[303]
dup.v 0
pushglb.v global.effect
pushi.e -9
push.v [stacktop]self.badBlood
cmp.v.v EQ
bt [365]

:[304]
dup.v 0
pushglb.v global.effect
pushi.e -9
push.v [stacktop]self.anotherFace
cmp.v.v EQ
bt [365]

:[305]
dup.v 0
pushglb.v global.effect
pushi.e -9
push.v [stacktop]self.dictatorship
cmp.v.v EQ
bt [365]

:[306]
dup.v 0
pushglb.v global.effect
pushi.e -9
push.v [stacktop]self.lute
cmp.v.v EQ
bt [365]

:[307]
dup.v 0
pushglb.v global.effect
pushi.e -9
push.v [stacktop]self.sock
cmp.v.v EQ
bt [365]

:[308]
dup.v 0
pushglb.v global.effect
pushi.e -9
push.v [stacktop]self.goldTicket
cmp.v.v EQ
bt [365]

:[309]
dup.v 0
pushglb.v global.effect
pushi.e -9
push.v [stacktop]self.goldCoin
cmp.v.v EQ
bt [365]

:[310]
dup.v 0
pushglb.v global.effect
pushi.e -9
push.v [stacktop]self.hazelnut
cmp.v.v EQ
bt [365]

:[311]
dup.v 0
pushglb.v global.effect
pushi.e -9
push.v [stacktop]self.babyBottle
cmp.v.v EQ
bt [365]

:[312]
dup.v 0
pushglb.v global.effect
pushi.e -9
push.v [stacktop]self.philosopherStone
cmp.v.v EQ
bt [365]

:[313]
dup.v 0
pushglb.v global.effect
pushi.e -9
push.v [stacktop]self.pigeonHead
cmp.v.v EQ
bt [365]

:[314]
dup.v 0
pushglb.v global.effect
pushi.e -9
push.v [stacktop]self.sweetDreams
cmp.v.v EQ
bt [365]

:[315]
dup.v 0
pushglb.v global.effect
pushi.e -9
push.v [stacktop]self.loyalty
cmp.v.v EQ
bt [365]

:[316]
dup.v 0
pushglb.v global.effect
pushi.e -9
push.v [stacktop]self.frostbite
cmp.v.v EQ
bt [365]

:[317]
dup.v 0
pushglb.v global.effect
pushi.e -9
push.v [stacktop]self.manant
cmp.v.v EQ
bt [365]

:[318]
dup.v 0
pushglb.v global.effect
pushi.e -9
push.v [stacktop]self.secureGem
cmp.v.v EQ
bt [366]

:[319]
dup.v 0
pushglb.v global.effect
pushi.e -9
push.v [stacktop]self.convertHPRandomized
cmp.v.v EQ
bt [369]

:[320]
dup.v 0
pushglb.v global.effect
pushi.e -9
push.v [stacktop]self.hybridExchange
cmp.v.v EQ
bt [370]

:[321]
dup.v 0
pushglb.v global.effect
pushi.e -9
push.v [stacktop]self.deleteBeeeh
cmp.v.v EQ
bt [374]

:[322]
dup.v 0
pushglb.v global.effect
pushi.e -9
push.v [stacktop]self.fountainFilled
cmp.v.v EQ
bt [378]

:[323]
dup.v 0
pushglb.v global.effect
pushi.e -9
push.v [stacktop]self.beeehToGem
cmp.v.v EQ
bt [379]

:[324]
dup.v 0
pushglb.v global.effect
pushi.e -9
push.v [stacktop]self.allPoisonToGem
cmp.v.v EQ
bt [383]

:[325]
dup.v 0
pushglb.v global.effect
pushi.e -9
push.v [stacktop]self.effectToDamage
cmp.v.v EQ
bt [391]

:[326]
dup.v 0
pushglb.v global.effect
pushi.e -9
push.v [stacktop]self.effectToGem
cmp.v.v EQ
bt [394]

:[327]
dup.v 0
pushglb.v global.effect
pushi.e -9
push.v [stacktop]self.deleteMother
cmp.v.v EQ
bt [397]

:[328]
dup.v 0
pushglb.v global.effect
pushi.e -9
push.v [stacktop]self.beeehToHeal
cmp.v.v EQ
bt [400]

:[329]
dup.v 0
pushglb.v global.effect
pushi.e -9
push.v [stacktop]self.multiplyEffect
cmp.v.v EQ
bt [404]

:[330]
dup.v 0
pushglb.v global.effect
pushi.e -9
push.v [stacktop]self.deleteRandomEffect
cmp.v.v EQ
bt [410]

:[331]
dup.v 0
pushglb.v global.effect
pushi.e -9
push.v [stacktop]self.gem
cmp.v.v EQ
bt [416]

:[332]
dup.v 0
pushglb.v global.effect
pushi.e -9
push.v [stacktop]self.loseGem
cmp.v.v EQ
bt [417]

:[333]
dup.v 0
pushglb.v global.effect
pushi.e -9
push.v [stacktop]self.commonPot
cmp.v.v EQ
bt [418]

:[334]
dup.v 0
pushglb.v global.effect
pushi.e -9
push.v [stacktop]self.tutorial
cmp.v.v EQ
bt [419]

:[335]
dup.v 0
pushglb.v global.effect
pushi.e -9
push.v [stacktop]self.rezurrection
cmp.v.v EQ
bt [421]

:[336]
dup.v 0
pushglb.v global.effect
pushi.e -9
push.v [stacktop]self.removeEffect
cmp.v.v EQ
bt [422]

:[337]
b [423]

:[338]
pushi.e 0
conv.b.v
pop.v.v local.$$$$temp$$$$
popz.v
push.v local.$$$$temp$$$$
ret.v

:[339]
b [423]

:[340]
pushi.e -7
pushloc.v local._t
conv.v.i
push.v [array]self._target
pushglb.v global.effect
pushi.e -9
push.v [stacktop]self.poison
dup.v 1 8
dup.v 0
push.v stacktop.effect_index
callv.v 1
pop.v.v local._hasPoison
pushloc.v local._hasPoison
pushi.e -1
cmp.i.v NEQ
bf [342]

:[341]
pushi.e -7
pushloc.v local._t
conv.v.i
push.v [array]self._target
pushloc.v local._hasPoison
dup.v 1 8
dup.v 0
push.v stacktop.get_effect
callv.v 1
pop.v.v local._thePoison
pushloc.v local._thePoison
pushloc.v local._thePoison
pushi.e -9
push.v [stacktop]self.y
pushloc.v local._thePoison
pushi.e -9
push.v [stacktop]self.x
pushloc.v local._thePoison
pushi.e -9
push.v [stacktop]self.stack
neg.v
dup.v 3 8
dup.v 0
push.v stacktop.increase_props
callv.v 3
popz.v

:[342]
b [423]

:[343]
pushglb.v global.fightManager
pushi.e -9
push.v [stacktop]self.encounter
pushi.e -9
push.v [stacktop]self.structMonster
pushglb.v global.monsters
pushi.e -9
push.v [stacktop]self.tutorialDead
cmp.v.v EQ
bf [351]

:[344]
pushi.e -7
pushloc.v local._t
conv.v.i
push.v [array]self._target
pushi.e -9
push.v [stacktop]self.number
pushi.e 0
cmp.i.v EQ
bf [346]

:[345]
pushglb.v global.playersCount
pushi.e 1
cmp.i.v GT
b [347]

:[346]
push.e 0

:[347]
bf [349]

:[348]
push.v arg.argument0
pushi.e -7
pushloc.v local._t
conv.v.i
push.v [array]self._target
pushi.e -9
push.v [stacktop]self.hp
pushi.e -7
pushloc.v local._t
conv.v.i
push.v [array]self._target
dup.v 2 8
dup.v 0
push.v stacktop.launch_attack
callv.v 2
popz.v
b [350]

:[349]
push.v arg.argument0
pushi.e -7
pushloc.v local._t
conv.v.i
push.v [array]self._target
pushi.e -9
push.v [stacktop]self.hp
pushi.e 40
sub.i.v
pushi.e 1
sub.i.v
pushi.e -7
pushloc.v local._t
conv.v.i
push.v [array]self._target
dup.v 2 8
dup.v 0
push.v stacktop.launch_attack
callv.v 2
popz.v

:[350]
b [352]

:[351]
push.v arg.argument0
pushloc.v local._amount
pushi.e -7
pushloc.v local._t
conv.v.i
push.v [array]self._target
dup.v 2 8
dup.v 0
push.v stacktop.launch_attack
callv.v 2
popz.v

:[352]
b [423]

:[353]
pushi.e 0
pop.v.i local._multDamageSheep
pushi.e -7
pushloc.v local._t
conv.v.i
push.v [array]self._target
pushglb.v global.effect
pushi.e -9
push.v [stacktop]self.beeeh
dup.v 1 8
dup.v 0
push.v stacktop.effect_index
callv.v 1
pop.v.v local._hasSheep
pushloc.v local._hasSheep
pushi.e -1
cmp.i.v NEQ
bf [356]

:[354]
pushi.e -7
pushloc.v local._t
conv.v.i
push.v [array]self._target
pushloc.v local._hasSheep
dup.v 1 8
dup.v 0
push.v stacktop.get_effect
callv.v 1
pop.v.v local._sheepEffect
pushloc.v local._sheepEffect
pushi.e -9
push.v [stacktop]self.stack
pop.v.v local._multDamageSheep
pushloc.v local._sheepEffect
pushloc.v local._sheepEffect
pushi.e -9
push.v [stacktop]self.y
pushloc.v local._sheepEffect
pushi.e -9
push.v [stacktop]self.x
pushloc.v local._sheepEffect
pushi.e -9
push.v [stacktop]self.stack
neg.v
dup.v 3 8
dup.v 0
push.v stacktop.increase_props
callv.v 3
popz.v
pushglb.v global.dayNightCycle
dup.v 0 8
dup.v 0
push.v stacktop.get_event
callv.v 0
push.l 2
cmp.l.v EQ
bf [356]

:[355]
push.v local._multDamageSheep
pushi.e 2
mul.i.v
pop.v.v local._multDamageSheep

:[356]
push.v arg.argument0
pushloc.v local._amount
pushi.e 5
pushloc.v local._multDamageSheep
mul.v.i
add.v.v
pushi.e -7
pushloc.v local._t
conv.v.i
push.v [array]self._target
dup.v 2 8
dup.v 0
push.v stacktop.launch_attack
callv.v 2
popz.v
b [423]

:[357]
push.v arg.argument0
pushloc.v local._damageTimes
pushloc.v local._amount
pushi.e -7
pushloc.v local._t
conv.v.i
push.v [array]self._target
dup.v 3 8
dup.v 0
push.v stacktop.launch_attack
callv.v 3
popz.v
b [423]

:[358]
pushi.e -7
pushloc.v local._t
conv.v.i
push.v [array]self._target
pushloc.v local._amount
pushi.e 1
conv.b.v
dup.v 2 8
dup.v 0
push.v stacktop.receive_heal
callv.v 2
popz.v
b [423]

:[359]
pushi.e 0
pop.v.i local._healMultiple

:[360]
pushloc.v local._healMultiple
pushloc.v local._amount
cmp.v.v LT
bf [362]

:[361]
pushi.e -7
pushloc.v local._t
conv.v.i
push.v [array]self._target
pushi.e 1
conv.i.v
pushi.e 1
conv.b.v
dup.v 2 8
dup.v 0
push.v stacktop.receive_heal
callv.v 2
popz.v
push.v local._healMultiple
push.e 1
add.i.v
pop.v.v local._healMultiple
b [360]

:[362]
b [423]

:[363]
pushi.e -7
pushloc.v local._t
conv.v.i
push.v [array]self._target
pushi.e -9
push.v [stacktop]self.hp
pop.v.v local._hp
pushi.e -7
pushloc.v local._t
conv.v.i
push.v [array]self._target
pushloc.v local._amount
pushloc.v local._hp
sub.v.v
dup.v 1 8
dup.v 0
push.v stacktop.update_hp_soft
callv.v 1
popz.v
b [423]

:[364]
pushi.e -7
pushloc.v local._t
conv.v.i
push.v [array]self._target
pushglb.v global.fightManager
dup.v 0 8
dup.v 0
push.v stacktop.get_fight_counter
callv.v 0
pushloc.v local._amount
sub.v.v
dup.v 1 8
dup.v 0
push.v stacktop.get_hp_previous_turn
callv.v 1
pop.v.v local._hpToFind
pushi.e -7
pushloc.v local._t
conv.v.i
push.v [array]self._target
pushi.e -9
push.v [stacktop]self.hp
pop.v.v local._hp
pushi.e -7
pushloc.v local._t
conv.v.i
push.v [array]self._target
pushloc.v local._hpToFind
pushloc.v local._hp
sub.v.v
dup.v 1 8
dup.v 0
push.v stacktop.update_hp_soft
callv.v 1
popz.v
b [423]

:[365]
push.v arg.argument0
push.v arg.argument0
pushi.e -9
push.v [stacktop]self.launchEffectY
push.v arg.argument0
pushi.e -9
push.v [stacktop]self.launchEffectX
pushloc.v local._stack
push.v arg.argument3
pushi.e -9
push.v arg.argument4
conv.v.i
push.v [array]self.actionType
pushi.e -7
pushloc.v local._t
conv.v.i
push.v [array]self._target
dup.v 5 8
dup.v 0
push.v stacktop.launch_effect
callv.v 5
popz.v
b [423]

:[366]
pushloc.v local._amount
pushi.e 0
cmp.i.v GT
bf [368]

:[367]
pushloc.v local._amount
pushi.e 1
conv.i.v
call.i max(argc=2)
pop.v.v local._value
pushi.e -7
pushloc.v local._t
conv.v.i
push.v [array]self._target
pushi.e -9
push.v [stacktop]self.number
push.l 1
conv.l.v
pushi.e -7
pushloc.v local._t
conv.v.i
push.v [array]self._target
pushi.e -9
push.v [stacktop]self.number
push.l 0
conv.l.v
pushloc.v local._value
pushbltn.v builtin.undefined
pushbltn.v builtin.undefined
pushbltn.v builtin.undefined
pushbltn.v builtin.undefined
call.i gml_Script_g_exchange_gem(argc=9)
popz.v

:[368]
b [423]

:[369]
pushi.e -7
pushloc.v local._t
conv.v.i
push.v [array]self._target
pushi.e -9
push.v [stacktop]self.hp
pop.v.v local._hp
pushi.e -7
pushloc.v local._t
conv.v.i
push.v [array]self._target
pushloc.v local._amount
pushloc.v local._hp
sub.v.v
dup.v 1 8
dup.v 0
push.v stacktop.update_hp_soft
callv.v 1
popz.v
b [423]

:[370]
pushi.e -7
pushloc.v local._t
conv.v.i
push.v [array]self._target
pushglb.v global.effect
pushi.e -9
push.v [stacktop]self.beeeh
dup.v 1 8
dup.v 0
push.v stacktop.effect_index
callv.v 1
pop.v.v local._hasBeeeh
pushloc.v local._hasBeeeh
pushi.e -1
cmp.i.v NEQ
bf [373]

:[371]
pushi.e -7
pushloc.v local._t
conv.v.i
push.v [array]self._target
pushloc.v local._hasBeeeh
dup.v 1 8
dup.v 0
push.v stacktop.get_effect
callv.v 1
pop.v.v local._beeeh
pushloc.v local._beeeh
pushi.e -9
push.v [stacktop]self.stack
pushi.e 0
cmp.i.v GT
bf [373]

:[372]
push.v arg.argument0
pushloc.v local._beeeh
pushi.e -9
push.v [stacktop]self.stack
pushloc.v local._amount
mul.v.v
pushi.e -7
pushloc.v local._t
conv.v.i
push.v [array]self._target
dup.v 2 8
dup.v 0
push.v stacktop.launch_attack
callv.v 2
popz.v

:[373]
b [423]

:[374]
pushi.e -7
pushloc.v local._t
conv.v.i
push.v [array]self._target
pushglb.v global.effect
pushi.e -9
push.v [stacktop]self.beeeh
dup.v 1 8
dup.v 0
push.v stacktop.effect_index
callv.v 1
pop.v.v local._hasBeeeh
pushloc.v local._hasBeeeh
pushi.e -1
cmp.i.v NEQ
bf [377]

:[375]
pushi.e -7
pushloc.v local._t
conv.v.i
push.v [array]self._target
pushloc.v local._hasBeeeh
dup.v 1 8
dup.v 0
push.v stacktop.get_effect
callv.v 1
pop.v.v local._beeeh
pushloc.v local._beeeh
pushi.e -9
push.v [stacktop]self.stack
pushi.e 0
cmp.i.v GT
bf [377]

:[376]
pushloc.v local._beeeh
pushloc.v local._beeeh
pushi.e -9
push.v [stacktop]self.y
pushloc.v local._beeeh
pushi.e -9
push.v [stacktop]self.x
pushloc.v local._beeeh
pushi.e -9
push.v [stacktop]self.stack
neg.v
dup.v 3 8
dup.v 0
push.v stacktop.increase_props
callv.v 3
popz.v

:[377]
b [423]

:[378]
pushglb.v global.monsterList
pushglb.v global.monsters
pushi.e -9
push.v [stacktop]self.fountainSorrow
pushglb.v global.monsters
pushi.e -9
push.v [stacktop]self.watcher
dup.v 2 8
dup.v 0
push.v stacktop.replace_monster
callv.v 2
popz.v
pushglb.v global.monsterList
pushglb.v global.monsters
pushi.e -9
push.v [stacktop]self.fountainSorrow
pushglb.v global.monsters
pushi.e -9
push.v [stacktop]self.lostTimeWatcher
dup.v 2 8
dup.v 0
push.v stacktop.replace_monster
callv.v 2
popz.v
b [423]

:[379]
pushi.e -7
pushloc.v local._t
conv.v.i
push.v [array]self._target
pushglb.v global.effect
pushi.e -9
push.v [stacktop]self.beeeh
dup.v 1 8
dup.v 0
push.v stacktop.effect_index
callv.v 1
pop.v.v local._hasEffectToConvert
pushloc.v local._hasEffectToConvert
pushi.e -1
cmp.i.v NEQ
bf [382]

:[380]
pushi.e -7
pushloc.v local._t
conv.v.i
push.v [array]self._target
pushloc.v local._hasEffectToConvert
dup.v 1 8
dup.v 0
push.v stacktop.get_effect
callv.v 1
pop.v.v local._theEffectToConvert
pushloc.v local._theEffectToConvert
pushi.e -9
push.v [stacktop]self.stack
pushi.e 0
cmp.i.v GT
bf [382]

:[381]
pushi.e -7
pushloc.v local._t
conv.v.i
push.v [array]self._target
pushi.e -9
push.v [stacktop]self.number
push.l 0
conv.l.v
pushbltn.v builtin.undefined
push.l 2
conv.l.v
pushloc.v local._theEffectToConvert
pushi.e -9
push.v [stacktop]self.stack
pushloc.v local._amount
mul.v.v
pushbltn.v builtin.undefined
pushbltn.v builtin.undefined
push.v arg.argument0
pushi.e -9
push.v [stacktop]self.launchEffectY
push.v arg.argument0
pushi.e -9
push.v [stacktop]self.launchEffectX
call.i gml_Script_g_exchange_gem(argc=9)
popz.v

:[382]
b [423]

:[383]
pushi.e 0
pop.v.i local._totalStack
pushi.e 0
pop.v.i local._f

:[384]
pushloc.v local._f
pushloc.v local._fightersLength
cmp.v.v LT
bf [388]

:[385]
pushi.e -7
pushloc.v local._f
conv.v.i
push.v [array]self._fighters
pushglb.v global.effect
pushi.e -9
push.v [stacktop]self.poison
dup.v 1 8
dup.v 0
push.v stacktop.effect_index
callv.v 1
pop.v.v local._hasEffect
pushloc.v local._hasEffect
pushi.e -1
cmp.i.v NEQ
bf [387]

:[386]
pushi.e -7
pushloc.v local._f
conv.v.i
push.v [array]self._fighters
pushloc.v local._hasEffect
dup.v 1 8
dup.v 0
push.v stacktop.get_effect
callv.v 1
pop.v.v local._theEffect
push.v local._totalStack
pushloc.v local._theEffect
pushi.e -9
push.v [stacktop]self.stack
add.v.v
pop.v.v local._totalStack

:[387]
push.v local._f
push.e 1
add.i.v
pop.v.v local._f
b [384]

:[388]
pushloc.v local._totalStack
pushi.e 0
cmp.i.v GT
bf [390]

:[389]
pushi.e -7
pushloc.v local._t
conv.v.i
push.v [array]self._target
pushi.e -9
push.v [stacktop]self.number
push.l 0
conv.l.v
pushbltn.v builtin.undefined
push.l 2
conv.l.v
pushloc.v local._totalStack
pushloc.v local._amount
mul.v.v
pushbltn.v builtin.undefined
pushbltn.v builtin.undefined
push.v arg.argument0
pushi.e -9
push.v [stacktop]self.launchEffectY
push.v arg.argument0
pushi.e -9
push.v [stacktop]self.launchEffectX
call.i gml_Script_g_exchange_gem(argc=9)
popz.v

:[390]
b [423]

:[391]
pushi.e -7
pushloc.v local._t
conv.v.i
push.v [array]self._target
push.v arg.argument3
pushi.e -9
push.v arg.argument4
conv.v.i
push.v [array]self.effectRequiredToActivate
dup.v 1 8
dup.v 0
push.v stacktop.effect_index
callv.v 1
pop.v.v local._theEffectToDamageTarget
pushloc.v local._theEffectToDamageTarget
pushi.e -1
cmp.i.v NEQ
bf [393]

:[392]
pushi.e -7
pushloc.v local._t
conv.v.i
push.v [array]self._target
pushloc.v local._theEffectToDamageTarget
dup.v 1 8
dup.v 0
push.v stacktop.get_effect
callv.v 1
pop.v.v local._theEffectToConvert
pushi.e -7
pushloc.v local._t
conv.v.i
push.v [array]self._target
pushloc.v local._theEffectToConvert
pushi.e -9
push.v [stacktop]self.stack
pushloc.v local._amount
mul.v.v
pushi.e 1
conv.b.v
dup.v 2 8
dup.v 0
push.v stacktop.receive_damage
callv.v 2
popz.v

:[393]
b [423]

:[394]
pushi.e -7
pushloc.v local._t
conv.v.i
push.v [array]self._target
push.v arg.argument3
pushi.e -9
push.v arg.argument4
conv.v.i
push.v [array]self.effectRequiredToActivate
dup.v 1 8
dup.v 0
push.v stacktop.effect_index
callv.v 1
pop.v.v local._theEffectToGemTarget
pushloc.v local._theEffectToGemTarget
pushi.e -1
cmp.i.v NEQ
bf [396]

:[395]
pushi.e -7
pushloc.v local._t
conv.v.i
push.v [array]self._target
pushloc.v local._theEffectToGemTarget
dup.v 1 8
dup.v 0
push.v stacktop.get_effect
callv.v 1
pop.v.v local._theEffectToConvert
pushi.e -7
pushloc.v local._t
conv.v.i
push.v [array]self._target
pushi.e -9
push.v [stacktop]self.number
push.l 0
conv.l.v
pushbltn.v builtin.undefined
push.l 2
conv.l.v
pushloc.v local._theEffectToConvert
pushi.e -9
push.v [stacktop]self.stack
pushloc.v local._amount
mul.v.v
pushbltn.v builtin.undefined
pushbltn.v builtin.undefined
push.v arg.argument0
pushi.e -9
push.v [stacktop]self.launchEffectY
push.v arg.argument0
pushi.e -9
push.v [stacktop]self.launchEffectX
call.i gml_Script_g_exchange_gem(argc=9)
popz.v

:[396]
b [423]

:[397]
pushi.e -7
pushloc.v local._t
conv.v.i
push.v [array]self._target
pushglb.v global.effect
pushi.e -9
push.v [stacktop]self.mother
dup.v 1 8
dup.v 0
push.v stacktop.effect_index
callv.v 1
pop.v.v local._hasMother
pushloc.v local._hasMother
pushi.e -1
cmp.i.v NEQ
bf [399]

:[398]
pushi.e -7
pushloc.v local._t
conv.v.i
push.v [array]self._target
pushloc.v local._hasMother
dup.v 1 8
dup.v 0
push.v stacktop.get_effect
callv.v 1
pop.v.v local._mother
pushloc.v local._mother
pushloc.v local._mother
pushi.e -9
push.v [stacktop]self.y
pushloc.v local._mother
pushi.e -9
push.v [stacktop]self.x
pushloc.v local._mother
pushi.e -9
push.v [stacktop]self.stack
neg.v
dup.v 3 8
dup.v 0
push.v stacktop.increase_props
callv.v 3
popz.v

:[399]
b [423]

:[400]
pushi.e -7
pushloc.v local._t
conv.v.i
push.v [array]self._target
pushglb.v global.effect
pushi.e -9
push.v [stacktop]self.beeeh
dup.v 1 8
dup.v 0
push.v stacktop.effect_index
callv.v 1
pop.v.v local._hasBeeeh
pushloc.v local._hasBeeeh
pushi.e -1
cmp.i.v NEQ
bf [403]

:[401]
pushi.e -7
pushloc.v local._t
conv.v.i
push.v [array]self._target
pushloc.v local._hasBeeeh
dup.v 1 8
dup.v 0
push.v stacktop.get_effect
callv.v 1
pop.v.v local._beeeh
pushloc.v local._beeeh
pushi.e -9
push.v [stacktop]self.stack
pushi.e 0
cmp.i.v GT
bf [403]

:[402]
pushi.e -7
pushloc.v local._t
conv.v.i
push.v [array]self._target
pushloc.v local._beeeh
pushi.e -9
push.v [stacktop]self.stack
pushloc.v local._amount
mul.v.v
pushi.e 1
conv.b.v
dup.v 2 8
dup.v 0
push.v stacktop.receive_heal
callv.v 2
popz.v

:[403]
b [423]

:[404]
pushi.e -7
pushloc.v local._t
conv.v.i
push.v [array]self._target
pushi.e -9
push.v [stacktop]self.effects
call.i gml_Script_get_size(argc=1)
pop.v.v local._arrayEffectLength
pushloc.v local._arrayEffectLength
pushi.e 0
cmp.i.v GT
bf [409]

:[405]
pushloc.v local._arrayEffectLength
pushi.e 1
sub.i.v
pushglb.v global.rng
call.i gml_Script_minstd_int(argc=2)
pop.v.v local._randomEffect
pushi.e -7
pushloc.v local._t
conv.v.i
push.v [array]self._target
pushloc.v local._randomEffect
dup.v 1 8
dup.v 0
push.v stacktop.get_effect
callv.v 1
pop.v.v local._theEffect
pushloc.v local._theEffect
pushi.e -9
push.v [stacktop]self.stack
pushi.e 0
cmp.i.v EQ
bf [407]

:[406]
pushloc.v local._amount
pushi.e 1
sub.i.v
b [408]

:[407]
pushloc.v local._theEffect
pushi.e -9
push.v [stacktop]self.stack
pushloc.v local._amount
pushi.e 1
sub.i.v
mul.v.v

:[408]
pop.v.v local._multiplyStack
push.v arg.argument0
push.v arg.argument0
pushi.e -9
push.v [stacktop]self.launchEffectY
push.v arg.argument0
pushi.e -9
push.v [stacktop]self.launchEffectX
pushloc.v local._multiplyStack
pushloc.v local._theEffect
pushi.e -9
push.v [stacktop]self.theStruct
pushi.e -7
pushloc.v local._t
conv.v.i
push.v [array]self._target
dup.v 5 8
dup.v 0
push.v stacktop.launch_effect
callv.v 5
popz.v

:[409]
b [423]

:[410]
pushi.e 0
pop.v.i local._amountLoop

:[411]
pushloc.v local._amountLoop
pushloc.v local._amount
cmp.v.v LT
bf [415]

:[412]
pushi.e -7
pushloc.v local._t
conv.v.i
push.v [array]self._target
pushi.e -9
push.v [stacktop]self.effects
call.i gml_Script_get_size(argc=1)
pop.v.v local._effectsNbr
pushloc.v local._effectsNbr
pushi.e 0
cmp.i.v GT
bf [414]

:[413]
pushloc.v local._effectsNbr
pushi.e 1
sub.i.v
pushglb.v global.rng
call.i gml_Script_minstd_int(argc=2)
pop.v.v local._randomEffect
pushi.e -7
pushloc.v local._t
conv.v.i
push.v [array]self._target
pushloc.v local._randomEffect
dup.v 1 8
dup.v 0
push.v stacktop.get_effect
callv.v 1
pop.v.v local._theEffect
pushloc.v local._theEffect
pushloc.v local._theEffect
pushi.e -9
push.v [stacktop]self.y
pushloc.v local._theEffect
pushi.e -9
push.v [stacktop]self.x
pushloc.v local._theEffect
pushi.e -9
push.v [stacktop]self.stack
neg.v
dup.v 3 8
dup.v 0
push.v stacktop.increase_props
callv.v 3
popz.v

:[414]
push.v local._amountLoop
push.e 1
add.i.v
pop.v.v local._amountLoop
b [411]

:[415]
b [423]

:[416]
pushi.e -7
pushloc.v local._t
conv.v.i
push.v [array]self._target
pushi.e -9
push.v [stacktop]self.number
push.l 0
conv.l.v
pushbltn.v builtin.undefined
push.l 2
conv.l.v
pushloc.v local._amount
pushbltn.v builtin.undefined
pushbltn.v builtin.undefined
push.v arg.argument0
pushi.e -9
push.v [stacktop]self.launchEffectY
push.v arg.argument0
pushi.e -9
push.v [stacktop]self.launchEffectX
call.i gml_Script_g_exchange_gem(argc=9)
popz.v
b [423]

:[417]
push.l 2
conv.l.v
pushi.e -7
pushloc.v local._t
conv.v.i
push.v [array]self._target
pushi.e -9
push.v [stacktop]self.number
push.l 0
conv.l.v
pushloc.v local._amount
pushbltn.v builtin.undefined
pushbltn.v builtin.undefined
pushbltn.v builtin.undefined
pushbltn.v builtin.undefined
call.i gml_Script_g_exchange_gem(argc=8)
popz.v
b [423]

:[418]
pushi.e 1
pop.v.b global.commonPotUsed
b [423]

:[419]
pushi.e -1
pushglb.v global.fightManager
dup.v 0 8
dup.v 0
push.v stacktop.get_encounter
callv.v 0
pushi.e -9
pop.v.i [stacktop]self.fightRoundCount
pushi.e 0
conv.b.v
pop.v.v local.$$$$temp$$$$
popz.v
push.v local.$$$$temp$$$$
ret.v

:[420]
b [423]

:[421]
pushi.e -7
pushloc.v local._t
conv.v.i
push.v [array]self._target
pushi.e 0
conv.b.v
pushbltn.v builtin.undefined
pushi.e -7
pushloc.v local._t
conv.v.i
push.v [array]self._target
pushi.e -9
push.v [stacktop]self.hpMaxInit
pushloc.v local._amount
dup.v 4 8
dup.v 0
push.v stacktop.rezurrection
callv.v 4
popz.v
b [423]

:[422]
pushi.e -7
pushloc.v local._t
conv.v.i
push.v [array]self._target
dup.v 0 8
dup.v 0
push.v stacktop.delete_effect
callv.v 0
popz.v
b [423]

:[423]
popz.v

:[424]
push.v local._t
push.e 1
add.i.v
pop.v.v local._t
b [238]

:[425]
pushi.e 1
conv.b.v
ret.v

:[426]
exit.i

:[427]
push.i [function]gml_Script_execute_card
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pop.v.v self.execute_card
popz.v
b [1066]

> gml_Script_execute_effect (locals=77, argc=5)
:[428]
pushbltn.v builtin.argument2
pushbltn.v builtin.undefined
cmp.v.v EQ
bf [430]

:[429]
pushbltn.v builtin.undefined
pop.v.v builtin.argument2

:[430]
pushbltn.v builtin.argument3
pushbltn.v builtin.undefined
cmp.v.v EQ
bf [432]

:[431]
pushbltn.v builtin.undefined
pop.v.v builtin.argument3

:[432]
pushbltn.v builtin.argument4
pushbltn.v builtin.undefined
cmp.v.v EQ
bf [434]

:[433]
pushbltn.v builtin.undefined
pop.v.v builtin.argument4

:[434]
push.v arg.argument0
call.i instance_exists(argc=1)
conv.v.b
not.b
bf [436]

:[435]
exit.i

:[436]
call.i @@NewGMLArray@@(argc=0)
pop.v.v local._arrayOfEffects
call.i @@NewGMLArray@@(argc=0)
pop.v.v local._effectToAnimate
push.v arg.argument2
pushbltn.v builtin.undefined
cmp.v.v NEQ
bf [439]

:[437]
push.v arg.argument3
pushbltn.v builtin.undefined
cmp.v.v NEQ
bf [439]

:[438]
push.v arg.argument4
pushbltn.v builtin.undefined
cmp.v.v NEQ
b [440]

:[439]
push.e 0

:[440]
bf [447]

:[441]
push.v arg.argument1
push.v arg.argument3
pushi.e -9
push.v [stacktop]self.condition
call.i array_contains(argc=2)
conv.v.b
bf [445]

:[442]
push.v arg.argument2
push.v arg.argument3
push.v arg.argument4
b [444]

> gml_Script____struct___72@execute_effect@execute_card (locals=0, argc=0)
:[443]
call.i @@SetStatic@@(argc=0)
pushi.e -15
pushi.e 0
push.v [array]self.argument
pop.v.v self.effectType
pushi.e -15
pushi.e 1
push.v [array]self.argument
pop.v.v self.effectStruct
pushi.e -15
pushi.e 2
push.v [array]self.argument
pop.v.v self.instance
exit.i

:[444]
push.i [function]gml_Script____struct___72@execute_effect@execute_card
conv.i.v
call.i @@NullObject@@(argc=0)
call.i method(argc=2)
dup.v 0
pop.v.v global.___struct___72
call.i @@NewGMLObject@@(argc=4)
pop.v.v local._structToPush
pushloc.v local._structToPush
pushi.e -7
pushi.e 0
pop.v.v [array]self._arrayOfEffects
b [446]

:[445]
pushi.e 0
conv.b.v
ret.v

:[446]
b [461]

:[447]
pushi.e 0
pop.v.i local._tokenEffect

:[448]
pushloc.v local._tokenEffect
push.v arg.argument0
pushi.e -9
push.v [stacktop]self.token
pushi.e -9
push.v [stacktop]self.effectLinked
call.i array_length(argc=1)
cmp.v.v LT
bf [454]

:[449]
push.v arg.argument1
push.v arg.argument0
pushi.e -9
push.v [stacktop]self.token
pushi.e -9
pushloc.v local._tokenEffect
conv.v.i
push.v [array]self.effectLinked
pushi.e -9
push.v [stacktop]self.condition
call.i array_contains(argc=2)
conv.v.b
bf [453]

:[450]
push.v arg.argument0
pushi.e -9
push.v [stacktop]self.token
push.v arg.argument0
pushi.e -9
push.v [stacktop]self.token
pushi.e -9
pushloc.v local._tokenEffect
conv.v.i
push.v [array]self.effectLinked
push.l 1
conv.l.v
b [452]

> gml_Script____struct___73@execute_effect@execute_card (locals=0, argc=0)
:[451]
call.i @@SetStatic@@(argc=0)
pushi.e -15
pushi.e 0
push.v [array]self.argument
pop.v.v self.effectType
pushi.e -15
pushi.e 1
push.v [array]self.argument
pop.v.v self.effectStruct
pushi.e -15
pushi.e 2
push.v [array]self.argument
pop.v.v self.instance
exit.i

:[452]
push.i [function]gml_Script____struct___73@execute_effect@execute_card
conv.i.v
call.i @@NullObject@@(argc=0)
call.i method(argc=2)
dup.v 0
pop.v.v global.___struct___73
call.i @@NewGMLObject@@(argc=4)
pop.v.v local._structToPush
pushloc.v local._structToPush
pushloc.v local._arrayOfEffects
call.i array_push(argc=2)
popz.v

:[453]
push.v local._tokenEffect
push.e 1
add.i.v
pop.v.v local._tokenEffect
b [448]

:[454]
pushi.e 0
pop.v.i local._charEffect

:[455]
pushloc.v local._charEffect
push.v arg.argument0
pushi.e -9
push.v [stacktop]self.effects
call.i array_length(argc=1)
cmp.v.v LT
bf [461]

:[456]
push.v arg.argument1
push.v arg.argument0
pushi.e -9
pushloc.v local._charEffect
conv.v.i
push.v [array]self.effects
pushi.e -9
push.v [stacktop]self.condition
call.i array_contains(argc=2)
conv.v.b
bf [460]

:[457]
push.v arg.argument0
pushi.e -9
pushloc.v local._charEffect
conv.v.i
push.v [array]self.effects
push.v arg.argument0
pushi.e -9
pushloc.v local._charEffect
conv.v.i
push.v [array]self.effects
pushi.e -9
push.v [stacktop]self.theStruct
push.l 0
conv.l.v
b [459]

> gml_Script____struct___74@execute_effect@execute_card (locals=0, argc=0)
:[458]
call.i @@SetStatic@@(argc=0)
pushi.e -15
pushi.e 0
push.v [array]self.argument
pop.v.v self.effectType
pushi.e -15
pushi.e 1
push.v [array]self.argument
pop.v.v self.effectStruct
pushi.e -15
pushi.e 2
push.v [array]self.argument
pop.v.v self.instance
exit.i

:[459]
push.i [function]gml_Script____struct___74@execute_effect@execute_card
conv.i.v
call.i @@NullObject@@(argc=0)
call.i method(argc=2)
dup.v 0
pop.v.v global.___struct___74
call.i @@NewGMLObject@@(argc=4)
pop.v.v local._structToPush
pushloc.v local._structToPush
pushloc.v local._arrayOfEffects
call.i array_push(argc=2)
popz.v

:[460]
push.v local._charEffect
push.e 1
add.i.v
pop.v.v local._charEffect
b [455]

:[461]
pushi.e 0
pop.v.i local._effectsCounter

:[462]
pushloc.v local._effectsCounter
pushloc.v local._arrayOfEffects
call.i array_length(argc=1)
cmp.v.v LT
bf [1059]

:[463]
pushi.e -7
pushloc.v local._effectsCounter
conv.v.i
push.v [array]self._arrayOfEffects
pushi.e -9
push.v [stacktop]self.instance
pop.v.v local._effectInstance
pushi.e -7
pushloc.v local._effectsCounter
conv.v.i
push.v [array]self._arrayOfEffects
pushi.e -9
push.v [stacktop]self.effectStruct
pop.v.v local._effectStruct
pushi.e -7
pushloc.v local._effectsCounter
conv.v.i
push.v [array]self._arrayOfEffects
pushi.e -9
push.v [stacktop]self.effectType
pop.v.v local._effectType
pushloc.v local._effectType
push.l 1
cmp.l.v EQ
bf [465]

:[464]
pushloc.v local._effectStruct
pushi.e -9
push.v [stacktop]self.amount
pop.v.v local._amount
pushloc.v local._effectStruct
pushi.e -9
push.v [stacktop]self.stack
pop.v.v local._stack
pushloc.v local._effectStruct
pushi.e -9
push.v [stacktop]self.chance
pop.v.v local._chance
push.v arg.argument0
pushi.e -9
push.v [stacktop]self.token
pushi.e -9
push.v [stacktop]self.x
pop.v.v local._xEffectPop
push.v arg.argument0
pushi.e -9
push.v [stacktop]self.token
pushi.e -9
push.v [stacktop]self.y
pop.v.v local._yEffectPop
b [470]

:[465]
pushloc.v local._effectInstance
pushi.e -4
cmp.i.v NEQ
bf [467]

:[466]
pushloc.v local._effectInstance
pushi.e -9
push.v [stacktop]self.amount
pop.v.v local._amount
pushloc.v local._effectInstance
pushi.e -9
push.v [stacktop]self.stack
pop.v.v local._stack
pushloc.v local._effectInstance
pushi.e -9
push.v [stacktop]self.chance
pop.v.v local._chance
pushloc.v local._effectInstance
pushi.e -9
push.v [stacktop]self.x
pop.v.v local._xEffectPop
pushloc.v local._effectInstance
pushi.e -9
push.v [stacktop]self.y
pop.v.v local._yEffectPop
b [468]

:[467]
pushloc.v local._effectStruct
pushi.e -9
push.v [stacktop]self.amount
pop.v.v local._amount
pushi.e 1
pop.v.i local._stack
pushloc.v local._effectStruct
pushi.e -9
push.v [stacktop]self.chance
pop.v.v local._chance
pushi.e 0
pop.v.i local._xEffectPop
pushi.e 0
pop.v.i local._yEffectPop

:[468]
pushloc.v local._stack
pushi.e 0
cmp.i.v EQ
bf [470]

:[469]
b [1058]

:[470]
pushglb.v global.playersManager
dup.v 0 8
dup.v 0
push.v stacktop.get_fighters
callv.v 0
pop.v.v local._fighters
pushloc.v local._fighters
call.i array_length(argc=1)
pop.v.v local._fightersLength
pushglb.v global.playersManager
push.v arg.argument0
pushi.e -9
push.v [stacktop]self.number
dup.v 1 8
dup.v 0
push.v stacktop.get_action
callv.v 1
pop.v.v local._actionCurChar
push.v arg.argument1
push.l 1
cmp.l.v EQ
bf [472]

:[471]
push.v arg.argument0
pushi.e -9
push.v [stacktop]self.hp
pushi.e 0
cmp.i.v EQ
b [473]

:[472]
push.e 0

:[473]
bf [475]

:[474]
exit.i

:[475]
pushloc.v local._effectStruct
dup.v 0
pushglb.v global.effect
pushi.e -9
push.v [stacktop]self.deadBox
cmp.v.v EQ
bt [552]

:[476]
dup.v 0
pushglb.v global.effect
pushi.e -9
push.v [stacktop]self.aliveBox
cmp.v.v EQ
bt [552]

:[477]
dup.v 0
pushglb.v global.effect
pushi.e -9
push.v [stacktop]self.goldCoin
cmp.v.v EQ
bt [580]

:[478]
dup.v 0
pushglb.v global.effect
pushi.e -9
push.v [stacktop]self.manant
cmp.v.v EQ
bt [591]

:[479]
dup.v 0
pushglb.v global.effect
pushi.e -9
push.v [stacktop]self.dictatorship
cmp.v.v EQ
bt [592]

:[480]
dup.v 0
pushglb.v global.effect
pushi.e -9
push.v [stacktop]self.pigeonEgg
cmp.v.v EQ
bt [595]

:[481]
dup.v 0
pushglb.v global.effect
pushi.e -9
push.v [stacktop]self.hazelnut
cmp.v.v EQ
bt [599]

:[482]
dup.v 0
pushglb.v global.effect
pushi.e -9
push.v [stacktop]self.sock
cmp.v.v EQ
bt [602]

:[483]
dup.v 0
pushglb.v global.effect
pushi.e -9
push.v [stacktop]self.lute
cmp.v.v EQ
bt [605]

:[484]
dup.v 0
pushglb.v global.effect
pushi.e -9
push.v [stacktop]self.babyBottle
cmp.v.v EQ
bt [606]

:[485]
dup.v 0
pushglb.v global.effect
pushi.e -9
push.v [stacktop]self.motherCurse
cmp.v.v EQ
bt [617]

:[486]
dup.v 0
pushglb.v global.effect
pushi.e -9
push.v [stacktop]self.pieceOfCloth
cmp.v.v EQ
bt [618]

:[487]
dup.v 0
pushglb.v global.effect
pushi.e -9
push.v [stacktop]self.predatoryInstinct
cmp.v.v EQ
bt [622]

:[488]
dup.v 0
pushglb.v global.effect
pushi.e -9
push.v [stacktop]self.tooth
cmp.v.v EQ
bt [625]

:[489]
dup.v 0
pushglb.v global.effect
pushi.e -9
push.v [stacktop]self.bellRevolt
cmp.v.v EQ
bt [663]

:[490]
dup.v 0
pushglb.v global.effect
pushi.e -9
push.v [stacktop]self.grapeDrink
cmp.v.v EQ
bt [666]

:[491]
dup.v 0
pushglb.v global.effect
pushi.e -9
push.v [stacktop]self.frostbite
cmp.v.v EQ
bt [671]

:[492]
dup.v 0
pushglb.v global.effect
pushi.e -9
push.v [stacktop]self.rabbitFoot
cmp.v.v EQ
bt [674]

:[493]
dup.v 0
pushglb.v global.effect
pushi.e -9
push.v [stacktop]self.murkyWater
cmp.v.v EQ
bt [677]

:[494]
dup.v 0
pushglb.v global.effect
pushi.e -9
push.v [stacktop]self.magnyfyingGlass
cmp.v.v EQ
bt [685]

:[495]
dup.v 0
pushglb.v global.effect
pushi.e -9
push.v [stacktop]self.magicStick
cmp.v.v EQ
bt [686]

:[496]
dup.v 0
pushglb.v global.effect
pushi.e -9
push.v [stacktop]self.pearlyPerl
cmp.v.v EQ
bt [689]

:[497]
dup.v 0
pushglb.v global.effect
pushi.e -9
push.v [stacktop]self.ratTail
cmp.v.v EQ
bt [697]

:[498]
dup.v 0
pushglb.v global.effect
pushi.e -9
push.v [stacktop]self.damagedShell
cmp.v.v EQ
bt [708]

:[499]
dup.v 0
pushglb.v global.effect
pushi.e -9
push.v [stacktop]self.starShapedNose
cmp.v.v EQ
bt [711]

:[500]
dup.v 0
pushglb.v global.effect
pushi.e -9
push.v [stacktop]self.thorn
cmp.v.v EQ
bt [714]

:[501]
dup.v 0
pushglb.v global.effect
pushi.e -9
push.v [stacktop]self.slimeBall
cmp.v.v EQ
bt [726]

:[502]
dup.v 0
pushglb.v global.effect
pushi.e -9
push.v [stacktop]self.radiance
cmp.v.v EQ
bt [729]

:[503]
dup.v 0
pushglb.v global.effect
pushi.e -9
push.v [stacktop]self.sweetDreams
cmp.v.v EQ
bt [740]

:[504]
dup.v 0
pushglb.v global.effect
pushi.e -9
push.v [stacktop]self.peacefulMind
cmp.v.v EQ
bt [741]

:[505]
dup.v 0
pushglb.v global.effect
pushi.e -9
push.v [stacktop]self.straw
cmp.v.v EQ
bt [750]

:[506]
dup.v 0
pushglb.v global.effect
pushi.e -9
push.v [stacktop]self.stoneLife
cmp.v.v EQ
bt [758]

:[507]
dup.v 0
pushglb.v global.effect
pushi.e -9
push.v [stacktop]self.bluePill
cmp.v.v EQ
bt [761]

:[508]
dup.v 0
pushglb.v global.effect
pushi.e -9
push.v [stacktop]self.greenPill
cmp.v.v EQ
bt [765]

:[509]
dup.v 0
pushglb.v global.effect
pushi.e -9
push.v [stacktop]self.uniqueGift
cmp.v.v EQ
bt [766]

:[510]
dup.v 0
pushglb.v global.effect
pushi.e -9
push.v [stacktop]self.dragonSkin
cmp.v.v EQ
bt [777]

:[511]
dup.v 0
pushglb.v global.effect
pushi.e -9
push.v [stacktop]self.armor
cmp.v.v EQ
bt [780]

:[512]
dup.v 0
pushglb.v global.effect
pushi.e -9
push.v [stacktop]self.feverishDefence
cmp.v.v EQ
bt [781]

:[513]
dup.v 0
pushglb.v global.effect
pushi.e -9
push.v [stacktop]self.finalThread
cmp.v.v EQ
bt [784]

:[514]
dup.v 0
pushglb.v global.effect
pushi.e -9
push.v [stacktop]self.kaboom
cmp.v.v EQ
bt [785]

:[515]
dup.v 0
pushglb.v global.effect
pushi.e -9
push.v [stacktop]self.powerlessShot
cmp.v.v EQ
bt [789]

:[516]
dup.v 0
pushglb.v global.effect
pushi.e -9
push.v [stacktop]self.bandage
cmp.v.v EQ
bt [792]

:[517]
dup.v 0
pushglb.v global.effect
pushi.e -9
push.v [stacktop]self.goldenSap
cmp.v.v EQ
bt [793]

:[518]
dup.v 0
pushglb.v global.effect
pushi.e -9
push.v [stacktop]self.poison
cmp.v.v EQ
bt [796]

:[519]
dup.v 0
pushglb.v global.effect
pushi.e -9
push.v [stacktop]self.tapeworm
cmp.v.v EQ
bt [797]

:[520]
dup.v 0
pushglb.v global.effect
pushi.e -9
push.v [stacktop]self.hazardousTransport
cmp.v.v EQ
bt [798]

:[521]
dup.v 0
pushglb.v global.effect
pushi.e -9
push.v [stacktop]self.oracleBlessing
cmp.v.v EQ
bt [805]

:[522]
dup.v 0
pushglb.v global.effect
pushi.e -9
push.v [stacktop]self.confusedMoon
cmp.v.v EQ
bt [808]

:[523]
dup.v 0
pushglb.v global.effect
pushi.e -9
push.v [stacktop]self.anotherFace
cmp.v.v EQ
bt [808]

:[524]
dup.v 0
pushglb.v global.effect
pushi.e -9
push.v [stacktop]self.confusion
cmp.v.v EQ
bt [841]

:[525]
dup.v 0
pushglb.v global.effect
pushi.e -9
push.v [stacktop]self.badTrip
cmp.v.v EQ
bt [841]

:[526]
dup.v 0
pushglb.v global.effect
pushi.e -9
push.v [stacktop]self.trapped
cmp.v.v EQ
bt [864]

:[527]
dup.v 0
pushglb.v global.effect
pushi.e -9
push.v [stacktop]self.hallucinogenicVision
cmp.v.v EQ
bt [867]

:[528]
dup.v 0
pushglb.v global.effect
pushi.e -9
push.v [stacktop]self.philosopherToken
cmp.v.v EQ
bt [876]

:[529]
dup.v 0
pushglb.v global.effect
pushi.e -9
push.v [stacktop]self.philosopherStone
cmp.v.v EQ
bt [877]

:[530]
dup.v 0
pushglb.v global.effect
pushi.e -9
push.v [stacktop]self.dynamite
cmp.v.v EQ
bt [878]

:[531]
dup.v 0
pushglb.v global.effect
pushi.e -9
push.v [stacktop]self.calculatedRisk
cmp.v.v EQ
bt [890]

:[532]
dup.v 0
pushglb.v global.effect
pushi.e -9
push.v [stacktop]self.goldTicket
cmp.v.v EQ
bt [890]

:[533]
dup.v 0
pushglb.v global.effect
pushi.e -9
push.v [stacktop]self.cloverToken
cmp.v.v EQ
bt [891]

:[534]
dup.v 0
pushglb.v global.effect
pushi.e -9
push.v [stacktop]self.tocanToken
cmp.v.v EQ
bt [911]

:[535]
dup.v 0
pushglb.v global.effect
pushi.e -9
push.v [stacktop]self.cursedLoverSameChoice
cmp.v.v EQ
bt [925]

:[536]
dup.v 0
pushglb.v global.effect
pushi.e -9
push.v [stacktop]self.cursedLoverDeath
cmp.v.v EQ
bt [942]

:[537]
dup.v 0
pushglb.v global.effect
pushi.e -9
push.v [stacktop]self.autocracy
cmp.v.v EQ
bt [959]

:[538]
dup.v 0
pushglb.v global.effect
pushi.e -9
push.v [stacktop]self.vulture
cmp.v.v EQ
bt [971]

:[539]
dup.v 0
pushglb.v global.effect
pushi.e -9
push.v [stacktop]self.gnomish
cmp.v.v EQ
bt [972]

:[540]
dup.v 0
pushglb.v global.effect
pushi.e -9
push.v [stacktop]self.valor
cmp.v.v EQ
bt [975]

:[541]
dup.v 0
pushglb.v global.effect
pushi.e -9
push.v [stacktop]self.plague
cmp.v.v EQ
bt [980]

:[542]
dup.v 0
pushglb.v global.effect
pushi.e -9
push.v [stacktop]self.badBlood
cmp.v.v EQ
bt [991]

:[543]
dup.v 0
pushglb.v global.effect
pushi.e -9
push.v [stacktop]self.nudge
cmp.v.v EQ
bt [998]

:[544]
dup.v 0
pushglb.v global.effect
pushi.e -9
push.v [stacktop]self.blessed
cmp.v.v EQ
bt [1006]

:[545]
dup.v 0
pushglb.v global.effect
pushi.e -9
push.v [stacktop]self.loniless
cmp.v.v EQ
bt [1009]

:[546]
dup.v 0
pushglb.v global.effect
pushi.e -9
push.v [stacktop]self.necrotic
cmp.v.v EQ
bt [1018]

:[547]
dup.v 0
pushglb.v global.effect
pushi.e -9
push.v [stacktop]self.beeeh
cmp.v.v EQ
bt [1019]

:[548]
dup.v 0
pushglb.v global.effect
pushi.e -9
push.v [stacktop]self.loyalty
cmp.v.v EQ
bt [1027]

:[549]
dup.v 0
pushglb.v global.effect
pushi.e -9
push.v [stacktop]self.mother
cmp.v.v EQ
bt [1035]

:[550]
dup.v 0
pushglb.v global.effect
pushi.e -9
push.v [stacktop]self.pigeonHead
cmp.v.v EQ
bt [1051]

:[551]
b [1057]

:[552]
pushloc.v local._effectStruct
pushglb.v global.effect
pushi.e -9
push.v [stacktop]self.deadBox
cmp.v.v EQ
bf [554]

:[553]
push.s "effect._deadBox"@4749
pop.v.s local._displayTextLabel
b [555]

:[554]
push.s "effect._aliveBox"@4763
pop.v.s local._displayTextLabel

:[555]
call.i @@NewGMLArray@@(argc=0)
pop.v.v local._arrayOfChoice
pushref.i 6
pop.v.v local._instanceCard
pushloc.v local._instanceCard
call.i instance_number(argc=1)
pushi.e 0
cmp.i.v GT
bf [577]

:[556]
pushi.e 0
pop.v.i local._cards

:[557]
pushloc.v local._cards
pushloc.v local._instanceCard
call.i instance_number(argc=1)
cmp.v.v LT
bf [577]

:[558]
pushloc.v local._cards
pushloc.v local._instanceCard
call.i instance_find(argc=2)
pop.v.v local._inst
pushloc.v local._inst
pushi.e -9
push.v [stacktop]self.isLeftmostCard
conv.v.b
bf [560]

:[559]
pushloc.v local._effectStruct
pushglb.v global.effect
pushi.e -9
push.v [stacktop]self.aliveBox
cmp.v.v EQ
b [561]

:[560]
push.e 0

:[561]
bt [566]

:[562]
pushloc.v local._inst
pushi.e -9
push.v [stacktop]self.isRightmostCard
conv.v.b
bf [564]

:[563]
pushloc.v local._effectStruct
pushglb.v global.effect
pushi.e -9
push.v [stacktop]self.deadBox
cmp.v.v EQ
b [565]

:[564]
push.e 0

:[565]
b [567]

:[566]
push.e 1

:[567]
bf [573]

:[568]
pushloc.v local._inst
pushi.e -9
push.v [stacktop]self.cardType
push.l 1
cmp.l.v EQ
bt [571]

:[569]
pushloc.v local._inst
pushi.e -9
push.v [stacktop]self.cardType
push.l 2
cmp.l.v EQ
bt [571]

:[570]
pushloc.v local._inst
pushi.e -9
push.v [stacktop]self.cardType
push.l 9
cmp.l.v EQ
b [572]

:[571]
push.e 1

:[572]
b [574]

:[573]
push.e 0

:[574]
bf [576]

:[575]
pushloc.v local._inst
pushi.e -9
push.v [stacktop]self.actionType
pushloc.v local._arrayOfChoice
call.i array_push(argc=2)
popz.v

:[576]
push.v local._cards
push.e 1
add.i.v
pop.v.v local._cards
b [557]

:[577]
pushloc.v local._arrayOfChoice
call.i array_length(argc=1)
pushi.e 0
cmp.i.v GT
bf [579]

:[578]
pushglb.v global.playersManager
pushi.e 0
conv.b.v
pushi.e 0
conv.b.v
pushi.e -7
pushi.e 0
push.v [array]self._arrayOfChoice
push.v arg.argument0
pushi.e -9
push.v [stacktop]self.number
dup.v 4 8
dup.v 0
push.v stacktop.apply_action
callv.v 4
popz.v
push.v arg.argument0
push.l 0
conv.l.v
pushbltn.v builtin.undefined
pushloc.v local._displayTextLabel
dup.v 3 8
dup.v 0
push.v stacktop.create_float_text
callv.v 3
popz.v
pushloc.v local._effectInstance
pushloc.v local._yEffectPop
pushloc.v local._xEffectPop
pushi.e -1
conv.i.v
dup.v 3 8
dup.v 0
push.v stacktop.increase_props
callv.v 3
popz.v
pushloc.v local._effectInstance
pushloc.v local._effectToAnimate
call.i array_push(argc=2)
popz.v

:[579]
b [1057]

:[580]
pushi.e 0
pop.v.i local._p

:[581]
pushloc.v local._p
pushloc.v local._fightersLength
cmp.v.v LT
bf [590]

:[582]
pushi.e -7
pushloc.v local._p
conv.v.i
push.v [array]self._fighters
pushi.e -9
push.v [stacktop]self.number
push.v arg.argument0
pushi.e -9
push.v [stacktop]self.number
cmp.v.v NEQ
bf [586]

:[583]
pushi.e -7
pushloc.v local._p
conv.v.i
push.v [array]self._fighters
dup.v 0 8
dup.v 0
push.v stacktop.is_alive
callv.v 0
conv.v.b
bf [586]

:[584]
pushi.e -7
pushloc.v local._p
conv.v.i
push.v [array]self._fighters
dup.v 0 8
dup.v 0
push.v stacktop.is_dead_this_turn
callv.v 0
conv.v.b
not.b
bf [586]

:[585]
pushglb.v global.playersManager
pushi.e -7
pushloc.v local._p
conv.v.i
push.v [array]self._fighters
pushi.e -9
push.v [stacktop]self.number
dup.v 1 8
dup.v 0
push.v stacktop.is_leaving
callv.v 1
conv.v.b
not.b
b [587]

:[586]
push.e 0

:[587]
bf [589]

:[588]
pushi.e -7
pushloc.v local._p
conv.v.i
push.v [array]self._fighters
pushloc.v local._yEffectPop
pushloc.v local._xEffectPop
pushloc.v local._stack
pushi.e -7
pushi.e 0
push.v [array]self._amount
mul.v.v
pushglb.v global.effect
pushi.e -9
push.v [stacktop]self.dictatorship
dup.v 4 8
dup.v 0
push.v stacktop.receive_effect
callv.v 4
popz.v
pushloc.v local._effectInstance
pushloc.v local._effectToAnimate
call.i array_push(argc=2)
popz.v

:[589]
push.v local._p
push.e 1
add.i.v
pop.v.v local._p
b [581]

:[590]
b [1057]

:[591]
push.l 2
conv.l.v
push.v arg.argument0
pushi.e -9
push.v [stacktop]self.number
push.l 0
conv.l.v
pushi.e -7
pushi.e 0
push.v [array]self._amount
pushloc.v local._stack
mul.v.v
pushloc.v local._effectInstance
pushi.e -9
push.v [stacktop]self.y
pushloc.v local._effectInstance
pushi.e -9
push.v [stacktop]self.x
pushbltn.v builtin.undefined
pushbltn.v builtin.undefined
call.i gml_Script_g_exchange_gem(argc=8)
popz.v
pushloc.v local._effectInstance
pushloc.v local._effectToAnimate
call.i array_push(argc=2)
popz.v
b [1057]

:[592]
pushglb.v global.playersManager
push.v arg.argument0
pushi.e -9
push.v [stacktop]self.number
dup.v 1 8
dup.v 0
push.v stacktop.is_action_rightmost_choice
callv.v 1
conv.v.b
bf [594]

:[593]
pushi.e -7
pushi.e 0
push.v [array]self._amount
pushloc.v local._stack
mul.v.v
push.v arg.argument0
pushi.e -9
push.v [stacktop]self.gem
call.i min(argc=2)
pop.v.v local._gemAmount
push.l 2
conv.l.v
push.v arg.argument0
pushi.e -9
push.v [stacktop]self.number
push.l 0
conv.l.v
pushloc.v local._gemAmount
pushloc.v local._effectInstance
pushi.e -9
push.v [stacktop]self.y
pushloc.v local._effectInstance
pushi.e -9
push.v [stacktop]self.x
pushbltn.v builtin.undefined
pushbltn.v builtin.undefined
call.i gml_Script_g_exchange_gem(argc=8)
popz.v
pushloc.v local._effectInstance
pushloc.v local._effectToAnimate
call.i array_push(argc=2)
popz.v

:[594]
b [1057]

:[595]
push.v arg.argument1
push.l 1
cmp.l.v EQ
bf [598]

:[596]
pushglb.v global.fightManager
pushi.e -9
push.v [stacktop]self.encounter
pushi.e -9
push.v [stacktop]self.structMonster
pushglb.v global.monsters
pushi.e -9
push.v [stacktop]self.pigeon
cmp.v.v EQ
bf [598]

:[597]
push.v arg.argument0
dup.v 0 8
dup.v 0
push.v stacktop.get_gem
callv.v 0
pushi.e -7
pushi.e 0
push.v [array]self._amount
mul.v.v
pushloc.v local._stack
mul.v.v
pushi.e 100
conv.i.d
div.d.v
call.i round(argc=1)
pop.v.v local._gemAmount
push.l 2
conv.l.v
push.v arg.argument0
pushi.e -9
push.v [stacktop]self.number
push.l 0
conv.l.v
pushloc.v local._gemAmount
pushloc.v local._effectInstance
pushi.e -9
push.v [stacktop]self.y
pushloc.v local._effectInstance
pushi.e -9
push.v [stacktop]self.x
pushbltn.v builtin.undefined
pushbltn.v builtin.undefined
call.i gml_Script_g_exchange_gem(argc=8)
popz.v
pushloc.v local._effectInstance
pushloc.v local._effectToAnimate
call.i array_push(argc=2)
popz.v

:[598]
b [1057]

:[599]
pushglb.v global.loopManager
dup.v 0 8
dup.v 0
push.v stacktop.is_first_monster
callv.v 0
conv.v.b
bf [601]

:[600]
push.v arg.argument0
pushi.e -9
push.v [stacktop]self.number
push.l 0
conv.l.v
pushbltn.v builtin.undefined
push.l 2
conv.l.v
push.v arg.argument0
pushi.e -9
push.v [stacktop]self.damageIncoming
pushloc.v local._stack
mul.v.v
pushi.e -7
pushi.e 0
push.v [array]self._amount
mul.v.v
pushbltn.v builtin.undefined
pushbltn.v builtin.undefined
pushloc.v local._yEffectPop
pushloc.v local._xEffectPop
call.i gml_Script_g_exchange_gem(argc=9)
popz.v

:[601]
b [1057]

:[602]
pushglb.v global.playersManager
push.v arg.argument0
pushi.e -9
push.v [stacktop]self.number
dup.v 1 8
dup.v 0
push.v stacktop.is_action_rightmost_choice
callv.v 1
conv.v.b
bf [604]

:[603]
pushloc.v local._effectToAnimate
pushloc.v local._effectInstance
pushloc.v local._effectStruct
pushi.e -9
push.v [stacktop]self.sprite
pushloc.v local._stack
pushi.e -7
pushi.e 0
push.v [array]self._amount
push.v arg.argument0
pushi.e -9
push.v [stacktop]self.damageIncoming
push.v arg.argument0
call.i gml_Script_calculate_damage_reduction(argc=7)
popz.v

:[604]
b [1057]

:[605]
push.v arg.argument0
pushi.e -9
dup.i 4
push.v [stacktop]self.damagePartNbr
pushloc.v local._stack
pushi.e -7
pushi.e 0
push.v [array]self._amount
mul.v.v
add.v.v
pop.i.v [stacktop]self.damagePartNbr
b [1057]

:[606]
pushi.e 0
pop.v.i local._p

:[607]
pushloc.v local._p
pushloc.v local._fightersLength
cmp.v.v LT
bf [616]

:[608]
pushi.e -7
pushloc.v local._p
conv.v.i
push.v [array]self._fighters
pushi.e -9
push.v [stacktop]self.number
push.v arg.argument0
pushi.e -9
push.v [stacktop]self.number
cmp.v.v NEQ
bf [612]

:[609]
pushi.e -7
pushloc.v local._p
conv.v.i
push.v [array]self._fighters
dup.v 0 8
dup.v 0
push.v stacktop.is_alive
callv.v 0
conv.v.b
bf [612]

:[610]
pushi.e -7
pushloc.v local._p
conv.v.i
push.v [array]self._fighters
dup.v 0 8
dup.v 0
push.v stacktop.is_dead_this_turn
callv.v 0
conv.v.b
not.b
bf [612]

:[611]
pushglb.v global.playersManager
pushi.e -7
pushloc.v local._p
conv.v.i
push.v [array]self._fighters
pushi.e -9
push.v [stacktop]self.number
dup.v 1 8
dup.v 0
push.v stacktop.is_leaving
callv.v 1
conv.v.b
not.b
b [613]

:[612]
push.e 0

:[613]
bf [615]

:[614]
pushi.e -7
pushloc.v local._p
conv.v.i
push.v [array]self._fighters
pushloc.v local._yEffectPop
pushloc.v local._xEffectPop
pushloc.v local._stack
pushi.e -7
pushi.e 0
push.v [array]self._amount
mul.v.v
pushglb.v global.effect
pushi.e -9
push.v [stacktop]self.confusion
dup.v 4 8
dup.v 0
push.v stacktop.receive_effect
callv.v 4
popz.v
pushloc.v local._effectInstance
pushloc.v local._effectToAnimate
call.i array_push(argc=2)
popz.v

:[615]
push.v local._p
push.e 1
add.i.v
pop.v.v local._p
b [607]

:[616]
b [1057]

:[617]
push.v arg.argument0
pushi.e -9
push.v [stacktop]self.number
push.l 0
conv.l.v
pushbltn.v builtin.undefined
push.l 2
conv.l.v
pushloc.v local._stack
pushi.e -7
pushi.e 0
push.v [array]self._amount
mul.v.v
pushbltn.v builtin.undefined
pushbltn.v builtin.undefined
pushloc.v local._yEffectPop
pushloc.v local._xEffectPop
call.i gml_Script_g_exchange_gem(argc=9)
popz.v
pushloc.v local._effectInstance
pushloc.v local._effectToAnimate
call.i array_push(argc=2)
popz.v
b [1057]

:[618]
pushi.e 100
conv.i.v
pushglb.v global.rng
call.i gml_Script_minstd_int(argc=2)
pop.v.v local._randChance
pushloc.v local._randChance
pushloc.v local._stack
pushloc.v local._chance
call.i gml_Script_get_stacking_percentage(argc=2)
cmp.v.v LTE
bf [621]

:[619]
push.v arg.argument0
pushi.e -9
push.v [stacktop]self.damageIncoming
pushi.e 0
cmp.i.v GT
bf [621]

:[620]
push.v arg.argument0
pushloc.v local._effectStruct
pushi.e -9
push.v [stacktop]self.sprite
push.v arg.argument0
pushi.e -9
push.v [stacktop]self.damageIncoming
pushi.e 0
conv.b.v
dup.v 3 8
dup.v 0
push.v stacktop.receive_heal
callv.v 3
popz.v
pushi.e 0
push.v arg.argument0
pushi.e -9
pop.v.i [stacktop]self.damageIncoming
pushloc.v local._effectInstance
pushloc.v local._effectToAnimate
call.i array_push(argc=2)
popz.v

:[621]
b [1057]

:[622]
push.v arg.argument0
pushi.e -9
push.v [stacktop]self.hp
push.v arg.argument0
pushi.e -9
push.v [stacktop]self.hpMax
pushi.e -7
pushi.e 0
push.v [array]self._amount
mul.v.v
pushi.e 100
conv.i.d
div.d.v
cmp.v.v LTE
bf [624]

:[623]
pushloc.v local._effectToAnimate
pushloc.v local._effectInstance
pushloc.v local._effectStruct
pushi.e -9
push.v [stacktop]self.sprite
pushloc.v local._stack
pushi.e -7
pushi.e 1
push.v [array]self._amount
pushloc.v local._stack
mul.v.v
push.v arg.argument0
pushi.e -9
push.v [stacktop]self.damageIncoming
push.v arg.argument0
call.i gml_Script_calculate_damage_reduction(argc=7)
popz.v

:[624]
b [1057]

:[625]
push.v arg.argument1
push.l 35
cmp.l.v EQ
bf [638]

:[626]
pushi.e 0
pop.v.i local._tooth

:[627]
pushloc.v local._tooth
push.v arg.argument0
pushi.e -9
push.v [stacktop]self.effects
call.i array_length(argc=1)
cmp.v.v LT
bf [637]

:[628]
push.l 27
conv.l.v
push.v arg.argument0
pushi.e -9
pushloc.v local._tooth
conv.v.i
push.v [array]self.effects
pushi.e -9
push.v [stacktop]self.condition
call.i array_contains(argc=2)
conv.v.b
bt [630]

:[629]
push.l 9
conv.l.v
push.v arg.argument0
pushi.e -9
pushloc.v local._tooth
conv.v.i
push.v [array]self.effects
pushi.e -9
push.v [stacktop]self.condition
call.i array_contains(argc=2)
conv.v.b
b [631]

:[630]
push.e 1

:[631]
bf [636]

:[632]
push.l 26
conv.l.v
push.v arg.argument0
pushi.e -9
pushloc.v local._tooth
conv.v.i
push.v [array]self.effects
pushi.e -9
push.v [stacktop]self.condition
call.i array_contains(argc=2)
conv.v.b
not.b
bf [634]

:[633]
push.l 26
conv.l.v
push.v arg.argument0
pushi.e -9
pushloc.v local._tooth
conv.v.i
push.v [array]self.effects
pushi.e -9
push.v [stacktop]self.condition
call.i array_push(argc=2)
popz.v

:[634]
push.l 10
conv.l.v
push.v arg.argument0
pushi.e -9
pushloc.v local._tooth
conv.v.i
push.v [array]self.effects
pushi.e -9
push.v [stacktop]self.condition
call.i array_contains(argc=2)
conv.v.b
not.b
bf [636]

:[635]
push.l 10
conv.l.v
push.v arg.argument0
pushi.e -9
pushloc.v local._tooth
conv.v.i
push.v [array]self.effects
pushi.e -9
push.v [stacktop]self.condition
call.i array_push(argc=2)
popz.v

:[636]
push.v local._tooth
push.e 1
add.i.v
pop.v.v local._tooth
b [627]

:[637]
b [662]

:[638]
push.v arg.argument1
push.l 30
cmp.l.v EQ
bf [648]

:[639]
push.l 27
conv.l.v
push.v builtin.effectIncoming
pushi.e -9
push.v [stacktop]self.condition
call.i array_contains(argc=2)
conv.v.b
bt [641]

:[640]
push.l 9
conv.l.v
push.v builtin.effectIncoming
pushi.e -9
push.v [stacktop]self.condition
call.i array_contains(argc=2)
conv.v.b
b [642]

:[641]
push.e 1

:[642]
bf [647]

:[643]
push.l 26
conv.l.v
push.v builtin.effectIncoming
pushi.e -9
push.v [stacktop]self.condition
call.i array_contains(argc=2)
conv.v.b
not.b
bf [645]

:[644]
push.l 26
conv.l.v
push.v builtin.effectConditionIncoming
call.i array_push(argc=2)
popz.v

:[645]
push.l 10
conv.l.v
push.v builtin.effectIncoming
pushi.e -9
push.v [stacktop]self.condition
call.i array_contains(argc=2)
conv.v.b
not.b
bf [647]

:[646]
push.l 10
conv.l.v
push.v builtin.effectConditionIncoming
call.i array_push(argc=2)
popz.v

:[647]
b [662]

:[648]
push.v arg.argument1
push.l 36
cmp.l.v EQ
bf [662]

:[649]
pushi.e 0
pop.v.i local._tooth

:[650]
pushloc.v local._tooth
push.v arg.argument0
pushi.e -9
push.v [stacktop]self.effects
call.i array_length(argc=1)
cmp.v.v LT
bf [662]

:[651]
push.l 26
conv.l.v
push.v arg.argument0
pushi.e -9
pushloc.v local._tooth
conv.v.i
push.v [array]self.effects
pushi.e -9
push.v [stacktop]self.theStruct
pushi.e -9
push.v [stacktop]self.condition
call.i array_contains(argc=2)
conv.v.b
not.b
bf [653]

:[652]
push.l 26
conv.l.v
push.v arg.argument0
pushi.e -9
pushloc.v local._tooth
conv.v.i
push.v [array]self.effects
pushi.e -9
push.v [stacktop]self.condition
call.i array_contains(argc=2)
conv.v.b
b [654]

:[653]
push.e 0

:[654]
bf [656]

:[655]
push.l 26
conv.l.v
push.v arg.argument0
pushi.e -9
pushloc.v local._tooth
conv.v.i
push.v [array]self.effects
pushi.e -9
push.v [stacktop]self.condition
call.i array_get_index(argc=2)
pop.v.v local._index
pushi.e 1
conv.i.v
pushloc.v local._index
push.v arg.argument0
pushi.e -9
pushloc.v local._tooth
conv.v.i
push.v [array]self.effects
pushi.e -9
push.v [stacktop]self.condition
call.i array_delete(argc=3)
popz.v

:[656]
push.l 10
conv.l.v
push.v arg.argument0
pushi.e -9
pushloc.v local._tooth
conv.v.i
push.v [array]self.effects
pushi.e -9
push.v [stacktop]self.theStruct
pushi.e -9
push.v [stacktop]self.condition
call.i array_contains(argc=2)
conv.v.b
not.b
bf [658]

:[657]
push.l 10
conv.l.v
push.v arg.argument0
pushi.e -9
pushloc.v local._tooth
conv.v.i
push.v [array]self.effects
pushi.e -9
push.v [stacktop]self.condition
call.i array_contains(argc=2)
conv.v.b
b [659]

:[658]
push.e 0

:[659]
bf [661]

:[660]
push.l 10
conv.l.v
push.v arg.argument0
pushi.e -9
pushloc.v local._tooth
conv.v.i
push.v [array]self.effects
pushi.e -9
push.v [stacktop]self.condition
call.i array_get_index(argc=2)
pop.v.v local._index
pushi.e 1
conv.i.v
pushloc.v local._index
push.v arg.argument0
pushi.e -9
pushloc.v local._tooth
conv.v.i
push.v [array]self.effects
pushi.e -9
push.v [stacktop]self.condition
call.i array_delete(argc=3)
popz.v

:[661]
push.v local._tooth
push.e 1
add.i.v
pop.v.v local._tooth
b [650]

:[662]
b [1057]

:[663]
pushglb.v global.playersManager
push.v arg.argument0
pushi.e -9
push.v [stacktop]self.number
dup.v 1 8
dup.v 0
push.v stacktop.someone_is_on_same_card
callv.v 1
conv.v.b
bf [665]

:[664]
push.v arg.argument0
pushloc.v local._effectStruct
pushi.e -9
push.v [stacktop]self.sprite
pushloc.v local._stack
pushi.e -7
pushi.e 0
push.v [array]self._amount
mul.v.v
pushi.e 0
conv.b.v
dup.v 3 8
dup.v 0
push.v stacktop.receive_heal
callv.v 3
popz.v
pushloc.v local._effectInstance
pushloc.v local._effectToAnimate
call.i array_push(argc=2)
popz.v

:[665]
b [1057]

:[666]
push.v arg.argument1
push.l 22
cmp.l.v EQ
bf [668]

:[667]
push.v arg.argument0
pushi.e -9
dup.i 4
push.v [stacktop]self.healIncoming
pushloc.v local._stack
pushi.e -7
pushi.e 0
push.v [array]self._amount
mul.v.v
add.v.v
pop.i.v [stacktop]self.healIncoming
b [670]

:[668]
push.v arg.argument1
push.l 14
cmp.l.v EQ
bf [670]

:[669]
push.v arg.argument0
pushi.e -9
dup.i 4
push.v [stacktop]self.damageIncoming
pushloc.v local._stack
pushi.e -7
pushi.e 0
push.v [array]self._amount
mul.v.v
add.v.v
pop.i.v [stacktop]self.damageIncoming

:[670]
pushloc.v local._effectInstance
pushloc.v local._effectToAnimate
call.i array_push(argc=2)
popz.v
b [1057]

:[671]
pushglb.v global.playersManager
dup.v 0 8
dup.v 0
push.v stacktop.get_last_player_to_act
callv.v 0
pop.v.v local._fastestPlayer
push.v arg.argument0
pushi.e -9
push.v [stacktop]self.number
pushloc.v local._fastestPlayer
cmp.v.v EQ
bf [673]

:[672]
push.v arg.argument0
pushloc.v local._effectStruct
pushi.e -9
push.v [stacktop]self.sprite
push.v builtin.stack
pushi.e -7
pushi.e 0
push.v [array]self._amount
mul.v.v
pushi.e 0
conv.b.v
dup.v 3 8
dup.v 0
push.v stacktop.receive_damage
callv.v 3
popz.v
pushloc.v local._effectInstance
pushloc.v local._effectToAnimate
call.i array_push(argc=2)
popz.v

:[673]
b [1057]

:[674]
pushglb.v global.playersManager
dup.v 0 8
dup.v 0
push.v stacktop.get_first_player_to_act
callv.v 0
pop.v.v local._fastestPlayer
push.v arg.argument0
pushi.e -9
push.v [stacktop]self.number
pushloc.v local._fastestPlayer
cmp.v.v EQ
bf [676]

:[675]
push.v arg.argument0
pushloc.v local._effectStruct
pushi.e -9
push.v [stacktop]self.sprite
pushloc.v local._stack
pushi.e -7
pushi.e 0
push.v [array]self._amount
mul.v.v
pushi.e 0
conv.b.v
dup.v 3 8
dup.v 0
push.v stacktop.receive_heal
callv.v 3
popz.v
pushloc.v local._effectInstance
pushloc.v local._effectToAnimate
call.i array_push(argc=2)
popz.v

:[676]
b [1057]

:[677]
pushi.e 0
pop.v.b local._alreadyHaveEffect
pushi.e 0
pop.v.i local._eo

:[678]
pushloc.v local._eo
push.v arg.argument0
pushi.e -9
push.v [stacktop]self.effects
call.i array_length(argc=1)
cmp.v.v LT
bf [682]

:[679]
push.v arg.argument0
pushi.e -9
push.v [stacktop]self.effectIncoming
pushi.e -9
push.v [stacktop]self.structName
push.v arg.argument0
pushi.e -9
pushloc.v local._eo
conv.v.i
push.v [array]self.effects
pushi.e -9
push.v [stacktop]self.theStruct
pushi.e -9
push.v [stacktop]self.structName
cmp.v.v EQ
bf [681]

:[680]
pushi.e 1
pop.v.b local._alreadyHaveEffect

:[681]
push.v local._eo
push.e 1
add.i.v
pop.v.v local._eo
b [678]

:[682]
pushloc.v local._alreadyHaveEffect
conv.v.b
not.b
bf [684]

:[683]
pushi.e 0
push.v arg.argument0
pushi.e -9
pop.v.i [stacktop]self.effectStackIncoming
pushloc.v local._effectInstance
pushloc.v local._effectToAnimate
call.i array_push(argc=2)
popz.v

:[684]
b [1057]

:[685]
push.v arg.argument0
pushi.e -9
dup.i 4
push.v [stacktop]self.effectStackIncoming
pushloc.v local._stack
pushi.e -7
pushi.e 0
push.v [array]self._amount
mul.v.v
add.v.v
pop.i.v [stacktop]self.effectStackIncoming
pushloc.v local._effectInstance
pushloc.v local._effectToAnimate
call.i array_push(argc=2)
popz.v
b [1057]

:[686]
pushi.e 100
conv.i.v
pushglb.v global.rng
call.i gml_Script_minstd_int(argc=2)
pop.v.v local._randChance
pushloc.v local._randChance
pushloc.v local._stack
pushloc.v local._chance
call.i gml_Script_get_stacking_percentage(argc=2)
cmp.v.v LTE
bf [688]

:[687]
pushi.e 0
push.v arg.argument0
pushi.e -9
pop.v.i [stacktop]self.damageIncoming
pushloc.v local._effectInstance
pushloc.v local._effectToAnimate
call.i array_push(argc=2)
popz.v
push.l 0
conv.l.v
pushglb.v global.effect
pushi.e -9
push.v [stacktop]self.magicStick
pushi.e -9
push.v [stacktop]self.sprite
push.s "global._dodge"@5296
conv.s.v
call.i @@This@@(argc=0)
push.v builtin.create_float_text
callv.v 3
popz.v

:[688]
b [1057]

:[689]
pushi.e 0
pop.v.i local._deadLeavePlayers
pushi.e 0
pop.v.i local._dp

:[690]
pushloc.v local._dp
pushglb.v global.playersCount
cmp.v.v LT
bf [694]

:[691]
pushglb.v global.playersManager
pushloc.v local._dp
dup.v 1 8
dup.v 0
push.v stacktop.get_characters
callv.v 1
dup.v 0 8
dup.v 0
push.v stacktop.is_in_fight
callv.v 0
conv.v.b
not.b
bf [693]

:[692]
push.v local._deadLeavePlayers
push.e 1
add.i.v
pop.v.v local._deadLeavePlayers

:[693]
push.v local._dp
push.e 1
add.i.v
pop.v.v local._dp
b [690]

:[694]
pushloc.v local._deadLeavePlayers
pushi.e 0
cmp.i.v GT
bf [696]

:[695]
push.v arg.argument0
pushi.e -9
push.v [stacktop]self.number
push.l 0
conv.l.v
pushbltn.v builtin.undefined
push.l 2
conv.l.v
pushloc.v local._deadLeavePlayers
pushloc.v local._stack
mul.v.v
pushi.e -7
pushi.e 0
push.v [array]self._amount
mul.v.v
pushbltn.v builtin.undefined
pushbltn.v builtin.undefined
pushloc.v local._yEffectPop
pushloc.v local._xEffectPop
call.i gml_Script_g_exchange_gem(argc=9)
popz.v
pushloc.v local._effectInstance
pushloc.v local._effectToAnimate
call.i array_push(argc=2)
popz.v

:[696]
b [1057]

:[697]
pushi.e 0
pop.v.i local._p

:[698]
pushloc.v local._p
pushloc.v local._fightersLength
cmp.v.v LT
bf [707]

:[699]
pushi.e -7
pushloc.v local._p
conv.v.i
push.v [array]self._fighters
pushi.e -9
push.v [stacktop]self.number
push.v arg.argument0
pushi.e -9
push.v [stacktop]self.number
cmp.v.v NEQ
bf [703]

:[700]
pushi.e -7
pushloc.v local._p
conv.v.i
push.v [array]self._fighters
dup.v 0 8
dup.v 0
push.v stacktop.is_alive
callv.v 0
conv.v.b
bf [703]

:[701]
pushi.e -7
pushloc.v local._p
conv.v.i
push.v [array]self._fighters
dup.v 0 8
dup.v 0
push.v stacktop.is_dead_this_turn
callv.v 0
conv.v.b
not.b
bf [703]

:[702]
pushglb.v global.playersManager
pushi.e -7
pushloc.v local._p
conv.v.i
push.v [array]self._fighters
pushi.e -9
push.v [stacktop]self.number
dup.v 1 8
dup.v 0
push.v stacktop.is_leaving
callv.v 1
conv.v.b
not.b
b [704]

:[703]
push.e 0

:[704]
bf [706]

:[705]
pushi.e -7
pushloc.v local._p
conv.v.i
push.v [array]self._fighters
pushloc.v local._yEffectPop
pushloc.v local._xEffectPop
pushloc.v local._stack
pushi.e -7
pushi.e 0
push.v [array]self._amount
mul.v.v
pushglb.v global.effect
pushi.e -9
push.v [stacktop]self.poison
dup.v 4 8
dup.v 0
push.v stacktop.receive_effect
callv.v 4
popz.v
pushloc.v local._effectInstance
pushloc.v local._effectToAnimate
call.i array_push(argc=2)
popz.v

:[706]
push.v local._p
push.e 1
add.i.v
pop.v.v local._p
b [698]

:[707]
b [1057]

:[708]
pushglb.v global.loopManager
dup.v 0 8
dup.v 0
push.v stacktop.is_first_monster
callv.v 0
conv.v.b
bf [710]

:[709]
pushloc.v local._effectToAnimate
pushloc.v local._effectInstance
pushloc.v local._effectStruct
pushi.e -9
push.v [stacktop]self.sprite
pushloc.v local._stack
pushi.e -7
pushi.e 0
push.v [array]self._amount
push.v arg.argument0
pushi.e -9
push.v [stacktop]self.damageIncoming
push.v arg.argument0
call.i gml_Script_calculate_damage_reduction(argc=7)
popz.v

:[710]
b [1057]

:[711]
push.v arg.argument0
pushi.e -9
push.v [stacktop]self.healIncoming
pushi.e 0
cmp.i.v GT
bf [713]

:[712]
push.v arg.argument0
pushi.e -9
dup.i 4
push.v [stacktop]self.healIncoming
pushloc.v local._stack
pushi.e -7
pushi.e 0
push.v [array]self._amount
mul.v.v
add.v.v
pop.i.v [stacktop]self.healIncoming
pushloc.v local._effectInstance
pushloc.v local._effectToAnimate
call.i array_push(argc=2)
popz.v

:[713]
b [1057]

:[714]
pushglb.v global.playersManager
push.v arg.argument0
pushi.e -9
push.v [stacktop]self.number
dup.v 1 8
dup.v 0
push.v stacktop.get_action
callv.v 1
pop.v.v local._myAction
pushi.e 0
pop.v.b local._thornActivated
pushi.e 0
pop.v.i local._p

:[715]
pushloc.v local._p
pushloc.v local._fightersLength
cmp.v.v LT
bf [723]

:[716]
pushi.e 100
conv.i.v
pushglb.v global.rng
call.i gml_Script_minstd_int(argc=2)
pop.v.v local._randChance
pushloc.v local._randChance
pushloc.v local._chance
cmp.v.v LTE
bf [722]

:[717]
pushglb.v global.playersManager
pushi.e -7
pushloc.v local._p
conv.v.i
push.v [array]self._fighters
pushi.e -9
push.v [stacktop]self.number
dup.v 1 8
dup.v 0
push.v stacktop.get_action
callv.v 1
pushloc.v local._myAction
cmp.v.v EQ
bf [719]

:[718]
pushi.e -7
pushloc.v local._p
conv.v.i
push.v [array]self._fighters
pushi.e -9
push.v [stacktop]self.number
push.v arg.argument0
pushi.e -9
push.v [stacktop]self.number
cmp.v.v NEQ
b [720]

:[719]
push.e 0

:[720]
bf [722]

:[721]
pushi.e -7
pushloc.v local._p
conv.v.i
push.v [array]self._fighters
pushloc.v local._yEffectPop
pushloc.v local._xEffectPop
pushloc.v local._stack
pushi.e -7
pushi.e 0
push.v [array]self._amount
mul.v.v
pushglb.v global.effect
pushi.e -9
push.v [stacktop]self.poison
dup.v 4 8
dup.v 0
push.v stacktop.receive_effect
callv.v 4
popz.v
pushi.e 1
pop.v.b local._thornActivated

:[722]
push.v local._p
push.e 1
add.i.v
pop.v.v local._p
b [715]

:[723]
pushloc.v local._thornActivated
conv.v.b
bf [725]

:[724]
pushloc.v local._effectInstance
pushloc.v local._effectToAnimate
call.i array_push(argc=2)
popz.v

:[725]
b [1057]

:[726]
push.v arg.argument0
dup.v 0 8
dup.v 0
push.v stacktop.get_gem
callv.v 0
push.v arg.argument0
pushi.e -9
push.v [stacktop]self.hp
cmp.v.v LT
bf [728]

:[727]
push.v arg.argument0
pushi.e -9
push.v [stacktop]self.number
push.l 0
conv.l.v
pushbltn.v builtin.undefined
push.l 2
conv.l.v
pushloc.v local._stack
pushi.e -7
pushi.e 0
push.v [array]self._amount
mul.v.v
pushbltn.v builtin.undefined
pushbltn.v builtin.undefined
pushloc.v local._yEffectPop
pushloc.v local._xEffectPop
call.i gml_Script_g_exchange_gem(argc=9)
popz.v
pushloc.v local._effectInstance
pushloc.v local._effectToAnimate
call.i array_push(argc=2)
popz.v

:[728]
b [1057]

:[729]
pushi.e 0
pop.v.i local._healNumber
pushi.e 0
pop.v.i local._p

:[730]
pushloc.v local._p
pushloc.v local._fightersLength
cmp.v.v LT
bf [737]

:[731]
pushi.e -7
pushloc.v local._p
conv.v.i
push.v [array]self._fighters
dup.v 0 8
dup.v 0
push.v stacktop.is_alive
callv.v 0
conv.v.b
bf [733]

:[732]
pushi.e -7
pushloc.v local._p
conv.v.i
push.v [array]self._fighters
pushi.e -9
push.v [stacktop]self.number
push.v arg.argument0
pushi.e -9
push.v [stacktop]self.number
cmp.v.v NEQ
b [734]

:[733]
push.e 0

:[734]
bf [736]

:[735]
push.v local._healNumber
push.e 1
add.i.v
pop.v.v local._healNumber

:[736]
push.v local._p
push.e 1
add.i.v
pop.v.v local._p
b [730]

:[737]
pushloc.v local._healNumber
pushi.e 0
cmp.i.v GT
bf [739]

:[738]
push.v arg.argument0
pushloc.v local._effectStruct
pushi.e -9
push.v [stacktop]self.sprite
pushloc.v local._healNumber
pushloc.v local._stack
mul.v.v
pushi.e -7
pushi.e 0
push.v [array]self._amount
mul.v.v
pushi.e 0
conv.b.v
dup.v 3 8
dup.v 0
push.v stacktop.receive_heal
callv.v 3
popz.v
pushloc.v local._effectInstance
pushloc.v local._effectToAnimate
call.i array_push(argc=2)
popz.v

:[739]
b [1057]

:[740]
push.v arg.argument0
pushi.e 1
conv.b.v
pushloc.v local._effectStruct
pushi.e -9
push.v [stacktop]self.sprite
pushloc.v local._stack
pushi.e -7
pushi.e 0
push.v [array]self._amount
mul.v.v
neg.v
dup.v 3 8
dup.v 0
push.v stacktop.update_hp_max
callv.v 3
popz.v
push.v arg.argument0
pushloc.v local._effectStruct
pushi.e -9
push.v [stacktop]self.sprite
pushloc.v local._stack
pushi.e -7
pushi.e 1
push.v [array]self._amount
mul.v.v
pushi.e 0
conv.b.v
dup.v 3 8
dup.v 0
push.v stacktop.receive_heal
callv.v 3
popz.v
pushloc.v local._effectInstance
pushloc.v local._effectToAnimate
call.i array_push(argc=2)
popz.v
b [1057]

:[741]
pushi.e 100
conv.i.v
pushglb.v global.rng
call.i gml_Script_minstd_int(argc=2)
pop.v.v local._randChance
pushloc.v local._randChance
pushloc.v local._stack
pushloc.v local._chance
call.i gml_Script_get_stacking_percentage(argc=2)
cmp.v.v LTE
bf [749]

:[742]
call.i @@NewGMLArray@@(argc=0)
pop.v.v local._effectOfChar
pushi.e 0
pop.v.i local._e

:[743]
pushloc.v local._e
push.v arg.argument0
pushi.e -9
push.v [stacktop]self.effects
call.i array_length(argc=1)
cmp.v.v LT
bf [747]

:[744]
push.v arg.argument0
pushi.e -9
pushloc.v local._e
conv.v.i
push.v [array]self.effects
pushi.e -9
push.v [stacktop]self.theStruct
pushi.e -9
push.v [stacktop]self.structName
pushloc.v local._effectStruct
pushi.e -9
push.v [stacktop]self.structName
cmp.v.v NEQ
bf [746]

:[745]
push.v arg.argument0
pushi.e -9
pushloc.v local._e
conv.v.i
push.v [array]self.effects
pushloc.v local._effectOfChar
call.i array_push(argc=2)
popz.v

:[746]
push.v local._e
push.e 1
add.i.v
pop.v.v local._e
b [743]

:[747]
pushloc.v local._effectOfChar
call.i array_length(argc=1)
pushi.e 0
cmp.i.v GT
bf [749]

:[748]
pushloc.v local._effectOfChar
call.i array_length(argc=1)
pushi.e 1
sub.i.v
pushglb.v global.rng
call.i gml_Script_minstd_int(argc=2)
pop.v.v local._indexNewCharge
pushi.e -7
pushloc.v local._indexNewCharge
conv.v.i
push.v [array]self._effectOfChar
pushloc.v local._effectInstance
pushi.e -9
push.v [stacktop]self.y
pushloc.v local._effectInstance
pushi.e -9
push.v [stacktop]self.x
pushi.e -7
pushi.e 0
push.v [array]self._amount
dup.v 3 8
dup.v 0
push.v stacktop.increase_props
callv.v 3
popz.v
pushloc.v local._effectInstance
pushloc.v local._effectToAnimate
call.i array_push(argc=2)
popz.v

:[749]
b [1057]

:[750]
call.i @@NewGMLArray@@(argc=0)
pop.v.v local._effectOfChar
pushi.e 0
pop.v.i local._e

:[751]
pushloc.v local._e
push.v arg.argument0
pushi.e -9
push.v [stacktop]self.effects
call.i array_length(argc=1)
cmp.v.v LT
bf [755]

:[752]
push.v arg.argument0
pushi.e -9
pushloc.v local._e
conv.v.i
push.v [array]self.effects
pushi.e -9
push.v [stacktop]self.theStruct
pushi.e -9
push.v [stacktop]self.structName
pushloc.v local._effectStruct
pushi.e -9
push.v [stacktop]self.structName
cmp.v.v NEQ
bf [754]

:[753]
push.v arg.argument0
pushi.e -9
pushloc.v local._e
conv.v.i
push.v [array]self.effects
pushloc.v local._effectOfChar
call.i array_push(argc=2)
popz.v

:[754]
push.v local._e
push.e 1
add.i.v
pop.v.v local._e
b [751]

:[755]
pushloc.v local._effectOfChar
call.i array_length(argc=1)
pushi.e 0
cmp.i.v GT
bf [757]

:[756]
pushloc.v local._effectOfChar
call.i array_length(argc=1)
pushi.e 1
sub.i.v
pushglb.v global.rng
call.i gml_Script_minstd_int(argc=2)
pop.v.v local._indexNewCharge
pushi.e -7
pushloc.v local._indexNewCharge
conv.v.i
push.v [array]self._effectOfChar
pushloc.v local._effectInstance
pushi.e -9
push.v [stacktop]self.y
pushloc.v local._effectInstance
pushi.e -9
push.v [stacktop]self.x
pushi.e -7
pushi.e 0
push.v [array]self._amount
pushloc.v local._stack
mul.v.v
dup.v 3 8
dup.v 0
push.v stacktop.increase_props
callv.v 3
popz.v
pushloc.v local._effectInstance
pushloc.v local._effectToAnimate
call.i array_push(argc=2)
popz.v

:[757]
b [1057]

:[758]
pushi.e 100
conv.i.v
pushglb.v global.rng
call.i gml_Script_minstd_int(argc=2)
pop.v.v local._randChance
pushloc.v local._randChance
pushloc.v local._chance
cmp.v.v LTE
bf [760]

:[759]
push.v arg.argument0
pushi.e -9
push.v [stacktop]self.number
push.l 0
conv.l.v
pushbltn.v builtin.undefined
push.l 2
conv.l.v
pushloc.v local._stack
pushi.e -7
pushi.e 0
push.v [array]self._amount
mul.v.v
pushbltn.v builtin.undefined
pushbltn.v builtin.undefined
pushloc.v local._yEffectPop
pushloc.v local._xEffectPop
call.i gml_Script_g_exchange_gem(argc=9)
popz.v

:[760]
b [1057]

:[761]
pushloc.v local._effectInstance
pushi.e -9
push.v [stacktop]self.stack
pushi.e -7
pushi.e 0
push.v [array]self._amount
pushi.e 1
sub.i.v
cmp.v.v LT
bf [763]

:[762]
pushloc.v local._effectInstance
pushloc.v local._effectInstance
pushi.e -9
push.v [stacktop]self.y
pushloc.v local._effectInstance
pushi.e -9
push.v [stacktop]self.x
pushi.e 1
conv.i.v
dup.v 3 8
dup.v 0
push.v stacktop.increase_props
callv.v 3
popz.v
b [764]

:[763]
push.v arg.argument0
pushglb.v global.fightManager
dup.v 0 8
dup.v 0
push.v stacktop.get_fight_counter
callv.v 0
pushi.e -7
pushi.e 1
push.v [array]self._amount
sub.v.v
dup.v 1 8
dup.v 0
push.v stacktop.get_hp_previous_turn
callv.v 1
pop.v.v local._hpToFind
push.v arg.argument0
pushi.e -9
push.v [stacktop]self.hp
pop.v.v local._charHp
push.v arg.argument0
pushloc.v local._effectStruct
pushi.e -9
push.v [stacktop]self.sprite
pushloc.v local._hpToFind
pushloc.v local._charHp
sub.v.v
dup.v 2 8
dup.v 0
push.v stacktop.update_hp_soft
callv.v 2
popz.v
pushloc.v local._effectInstance
pushloc.v local._effectToAnimate
call.i array_push(argc=2)
popz.v
pushloc.v local._effectInstance
pushloc.v local._effectInstance
pushi.e -9
push.v [stacktop]self.y
pushloc.v local._effectInstance
pushi.e -9
push.v [stacktop]self.x
pushloc.v local._effectInstance
pushi.e -9
push.v [stacktop]self.stack
neg.v
dup.v 3 8
dup.v 0
push.v stacktop.increase_props
callv.v 3
popz.v

:[764]
b [1057]

:[765]
push.v arg.argument0
pushi.e -9
push.v [stacktop]self.effects
call.i array_length(argc=1)
pop.v.v local._numberUniqueEffect
push.v arg.argument0
pushi.e -9
push.v [stacktop]self.number
push.l 0
conv.l.v
pushbltn.v builtin.undefined
push.l 2
conv.l.v
pushloc.v local._stack
pushi.e -7
pushi.e 0
push.v [array]self._amount
mul.v.v
pushloc.v local._numberUniqueEffect
mul.v.v
pushbltn.v builtin.undefined
pushbltn.v builtin.undefined
pushloc.v local._yEffectPop
pushloc.v local._xEffectPop
call.i gml_Script_g_exchange_gem(argc=9)
popz.v
b [1057]

:[766]
pushi.e 1
pop.v.b local._giftUsable
pushi.e 0
pop.v.i local._k

:[767]
pushloc.v local._k
pushglb.v global.playersCount
cmp.v.v LT
bf [774]

:[768]
pushglb.v global.playersManager
pushloc.v local._k
dup.v 1 8
dup.v 0
push.v stacktop.get_characters
callv.v 1
pop.v.v local._theOtherChar
pushloc.v local._theOtherChar
dup.v 0 8
dup.v 0
push.v stacktop.is_alive
callv.v 0
conv.v.b
not.b
bt [770]

:[769]
pushloc.v local._theOtherChar
dup.v 0 8
dup.v 0
push.v stacktop.is_in_fight
callv.v 0
conv.v.b
not.b
b [771]

:[770]
push.e 1

:[771]
bf [773]

:[772]
pushi.e 0
pop.v.b local._giftUsable
b [774]

:[773]
push.v local._k
push.e 1
add.i.v
pop.v.v local._k
b [767]

:[774]
pushloc.v local._giftUsable
conv.v.b
bf [776]

:[775]
push.v arg.argument0
pushi.e -9
push.v [stacktop]self.number
push.l 0
conv.l.v
pushbltn.v builtin.undefined
push.l 2
conv.l.v
pushloc.v local._stack
pushi.e -7
pushi.e 0
push.v [array]self._amount
mul.v.v
pushbltn.v builtin.undefined
pushbltn.v builtin.undefined
pushloc.v local._yEffectPop
pushloc.v local._xEffectPop
call.i gml_Script_g_exchange_gem(argc=9)
popz.v
pushloc.v local._effectInstance
pushloc.v local._effectToAnimate
call.i array_push(argc=2)
popz.v

:[776]
b [1057]

:[777]
push.v arg.argument0
pushi.e -9
push.v [stacktop]self.damageIncoming
pushi.e 0
cmp.i.v GT
bf [779]

:[778]
push.v arg.argument0
pushi.e -9
push.v [stacktop]self.number
push.l 0
conv.l.v
pushbltn.v builtin.undefined
push.l 2
conv.l.v
pushloc.v local._stack
pushi.e -7
pushi.e 0
push.v [array]self._amount
mul.v.v
pushbltn.v builtin.undefined
pushbltn.v builtin.undefined
pushloc.v local._yEffectPop
pushloc.v local._xEffectPop
call.i gml_Script_g_exchange_gem(argc=9)
popz.v
pushloc.v local._effectInstance
pushloc.v local._effectToAnimate
call.i array_push(argc=2)
popz.v

:[779]
b [1057]

:[780]
pushloc.v local._effectToAnimate
pushloc.v local._effectInstance
pushloc.v local._effectStruct
pushi.e -9
push.v [stacktop]self.sprite
pushloc.v local._stack
pushi.e -7
pushi.e 0
push.v [array]self._amount
push.v arg.argument0
pushi.e -9
push.v [stacktop]self.damageIncoming
push.v arg.argument0
call.i gml_Script_calculate_damage_reduction(argc=7)
popz.v
b [1057]

:[781]
pushglb.v global.playersManager
push.v arg.argument0
pushi.e -9
push.v [stacktop]self.number
dup.v 1 8
dup.v 0
push.v stacktop.someone_is_on_same_card
callv.v 1
conv.v.b
bf [783]

:[782]
pushloc.v local._effectToAnimate
pushloc.v local._effectInstance
pushloc.v local._effectStruct
pushi.e -9
push.v [stacktop]self.sprite
pushloc.v local._stack
pushi.e -7
pushi.e 0
push.v [array]self._amount
push.v arg.argument0
pushi.e -9
push.v [stacktop]self.damageIncoming
push.v arg.argument0
call.i gml_Script_calculate_damage_reduction(argc=7)
popz.v

:[783]
b [1057]

:[784]
pushi.e -7
pushi.e 0
push.v [array]self._amount
pushloc.v local._stack
mul.v.v
pop.v.v local._hpToLose
pushi.e -7
pushi.e 1
push.v [array]self._amount
pushloc.v local._stack
mul.v.v
pop.v.v local._gemToWin
push.v arg.argument0
pushi.e -9
push.v [stacktop]self.number
push.l 0
conv.l.v
pushbltn.v builtin.undefined
push.l 2
conv.l.v
pushloc.v local._gemToWin
pushbltn.v builtin.undefined
pushbltn.v builtin.undefined
pushloc.v local._yEffectPop
pushloc.v local._xEffectPop
call.i gml_Script_g_exchange_gem(argc=9)
popz.v
push.v arg.argument0
pushloc.v local._effectStruct
pushi.e -9
push.v [stacktop]self.sprite
pushloc.v local._hpToLose
pushi.e 0
conv.b.v
dup.v 3 8
dup.v 0
push.v stacktop.receive_damage
callv.v 3
popz.v
pushloc.v local._effectInstance
pushloc.v local._effectToAnimate
call.i array_push(argc=2)
popz.v
b [1057]

:[785]
pushloc.v local._stack
pushi.e 4
cmp.i.v LT
bf [787]

:[786]
pushloc.v local._effectInstance
pushloc.v local._effectInstance
pushi.e -9
push.v [stacktop]self.y
pushloc.v local._effectInstance
pushi.e -9
push.v [stacktop]self.x
pushi.e 1
conv.i.v
dup.v 3 8
dup.v 0
push.v stacktop.increase_props
callv.v 3
popz.v
b [788]

:[787]
push.v arg.argument0
pushloc.v local._effectStruct
pushi.e -9
push.v [stacktop]self.sprite
pushi.e -7
pushi.e 0
push.v [array]self._amount
pushi.e 0
conv.b.v
dup.v 3 8
dup.v 0
push.v stacktop.receive_damage
callv.v 3
popz.v
pushloc.v local._effectInstance
pushloc.v local._effectInstance
pushi.e -9
push.v [stacktop]self.y
pushloc.v local._effectInstance
pushi.e -9
push.v [stacktop]self.x
pushloc.v local._stack
neg.v
dup.v 3 8
dup.v 0
push.v stacktop.increase_props
callv.v 3
popz.v
pushloc.v local._effectInstance
pushloc.v local._effectToAnimate
call.i array_push(argc=2)
popz.v

:[788]
b [1057]

:[789]
push.v arg.argument0
pushi.e -9
push.v [stacktop]self.hp
push.v arg.argument0
pushi.e -9
push.v [stacktop]self.hpMax
pushi.e -7
pushi.e 0
push.v [array]self._amount
mul.v.v
pushi.e 100
conv.i.d
div.d.v
cmp.v.v GTE
bf [791]

:[790]
pushloc.v local._effectToAnimate
pushloc.v local._effectInstance
pushloc.v local._effectStruct
pushi.e -9
push.v [stacktop]self.sprite
pushloc.v local._stack
pushi.e -7
pushi.e 1
push.v [array]self._amount
push.v arg.argument0
pushi.e -9
push.v [stacktop]self.damageIncoming
push.v arg.argument0
call.i gml_Script_calculate_damage_reduction(argc=7)
popz.v

:[791]
b [1057]

:[792]
pushi.e 0
push.v arg.argument0
pushi.e -9
pop.v.i [stacktop]self.healIncoming
push.v arg.argument0
pushi.e -9
push.v [stacktop]self.number
push.l 0
conv.l.v
pushbltn.v builtin.undefined
push.l 2
conv.l.v
pushloc.v local._stack
pushi.e -7
pushi.e 0
push.v [array]self._amount
mul.v.v
pushbltn.v builtin.undefined
pushbltn.v builtin.undefined
pushloc.v local._yEffectPop
pushloc.v local._xEffectPop
call.i gml_Script_g_exchange_gem(argc=9)
popz.v
pushloc.v local._effectInstance
pushloc.v local._effectToAnimate
call.i array_push(argc=2)
popz.v
b [1057]

:[793]
push.v arg.argument0
pushi.e -9
push.v [stacktop]self.hp
push.v arg.argument0
pushi.e -9
push.v [stacktop]self.hpMax
pushi.e -7
pushi.e 0
push.v [array]self._amount
mul.v.v
pushi.e 100
conv.i.d
div.d.v
cmp.v.v LTE
bf [795]

:[794]
push.v arg.argument0
pushi.e -9
push.v [stacktop]self.number
push.l 0
conv.l.v
pushbltn.v builtin.undefined
push.l 2
conv.l.v
pushi.e -7
pushi.e 1
push.v [array]self._amount
pushloc.v local._stack
mul.v.v
pushbltn.v builtin.undefined
pushbltn.v builtin.undefined
pushloc.v local._yEffectPop
pushloc.v local._xEffectPop
call.i gml_Script_g_exchange_gem(argc=9)
popz.v

:[795]
b [1057]

:[796]
push.v arg.argument0
pushloc.v local._effectStruct
pushi.e -9
push.v [stacktop]self.sprite
pushi.e -7
pushi.e 0
push.v [array]self._amount
pushloc.v local._stack
mul.v.v
pushi.e 0
conv.b.v
dup.v 3 8
dup.v 0
push.v stacktop.receive_damage
callv.v 3
popz.v
pushloc.v local._effectInstance
pushloc.v local._effectToAnimate
call.i array_push(argc=2)
popz.v
b [1057]

:[797]
push.v arg.argument0
pushloc.v local._effectStruct
pushi.e -9
push.v [stacktop]self.sprite
pushi.e -7
pushi.e 0
push.v [array]self._amount
pushloc.v local._stack
mul.v.v
pushi.e 0
conv.b.v
dup.v 3 8
dup.v 0
push.v stacktop.receive_damage
callv.v 3
popz.v
b [1057]

:[798]
push.v arg.argument1
push.l 1
cmp.l.v EQ
bf [802]

:[799]
pushglb.v global.fightManager
pushi.e -9
push.v [stacktop]self.encounter
pushi.e -9
push.v [stacktop]self.structMonster
pushglb.v global.monsters
pushi.e -9
push.v [stacktop]self.mommy
cmp.v.v EQ
bf [801]

:[800]
push.v arg.argument0
pushloc.v local._effectStruct
pushi.e -9
push.v [stacktop]self.sprite
pushi.e -7
pushi.e 0
push.v [array]self._amount
pushloc.v local._stack
mul.v.v
pushi.e 0
conv.b.v
dup.v 3 8
dup.v 0
push.v stacktop.receive_damage
callv.v 3
popz.v
pushloc.v local._effectInstance
pushloc.v local._effectInstance
pushi.e -9
push.v [stacktop]self.y
pushloc.v local._effectInstance
pushi.e -9
push.v [stacktop]self.x
pushloc.v local._effectInstance
pushi.e -9
push.v [stacktop]self.stack
neg.v
dup.v 3 8
dup.v 0
push.v stacktop.increase_props
callv.v 3
popz.v
pushloc.v local._effectInstance
pushloc.v local._effectToAnimate
call.i array_push(argc=2)
popz.v

:[801]
b [804]

:[802]
push.v arg.argument1
push.l 11
cmp.l.v EQ
bf [804]

:[803]
push.v arg.argument0
pushi.e -9
push.v [stacktop]self.number
push.l 0
conv.l.v
pushbltn.v builtin.undefined
push.l 2
conv.l.v
pushi.e -7
pushi.e 1
push.v [array]self._amount
pushloc.v local._stack
mul.v.v
pushbltn.v builtin.undefined
pushbltn.v builtin.undefined
pushloc.v local._yEffectPop
pushloc.v local._xEffectPop
call.i gml_Script_g_exchange_gem(argc=9)
popz.v
pushloc.v local._effectInstance
pushloc.v local._effectToAnimate
call.i array_push(argc=2)
popz.v

:[804]
b [1057]

:[805]
push.v arg.argument0
pushi.e -9
push.v [stacktop]self.number
push.l 0
conv.l.v
pushbltn.v builtin.undefined
push.l 2
conv.l.v
pushi.e -7
pushi.e 0
push.v [array]self._amount
pushloc.v local._stack
mul.v.v
pushbltn.v builtin.undefined
pushbltn.v builtin.undefined
pushloc.v local._yEffectPop
pushloc.v local._xEffectPop
call.i gml_Script_g_exchange_gem(argc=9)
popz.v
pushi.e 100
conv.i.v
pushglb.v global.rng
call.i gml_Script_minstd_int(argc=2)
pop.v.v local._randChance
pushloc.v local._randChance
pushloc.v local._chance
cmp.v.v LTE
bf [807]

:[806]
push.v arg.argument0
pushloc.v local._effectStruct
pushi.e -9
push.v [stacktop]self.sprite
pushi.e -7
pushi.e 1
push.v [array]self._amount
pushloc.v local._stack
mul.v.v
pushi.e 0
conv.b.v
dup.v 3 8
dup.v 0
push.v stacktop.receive_damage
callv.v 3
popz.v

:[807]
pushloc.v local._effectInstance
pushloc.v local._effectToAnimate
call.i array_push(argc=2)
popz.v
b [1057]

:[808]
pushglb.v global.fightManager
pushi.e -9
push.v [stacktop]self.isFightActive
conv.v.b
bf [816]

:[809]
pushglb.v global.fightManager
pushi.e -9
push.v [stacktop]self.encounter
pushi.e -9
push.v [stacktop]self.structMonster
pushglb.v global.monsters
pushi.e -9
push.v [stacktop]self.funfair
cmp.v.v EQ
bt [813]

:[810]
pushglb.v global.fightManager
pushi.e -9
push.v [stacktop]self.encounter
pushi.e -9
push.v [stacktop]self.structMonster
pushglb.v global.monsters
pushi.e -9
push.v [stacktop]self.babayaga
cmp.v.v EQ
bt [813]

:[811]
pushglb.v global.fightManager
pushi.e -9
push.v [stacktop]self.encounter
pushi.e -9
push.v [stacktop]self.structMonster
pushglb.v global.monsters
pushi.e -9
push.v [stacktop]self.faun
cmp.v.v EQ
bt [813]

:[812]
pushglb.v global.fightManager
pushi.e -9
push.v [stacktop]self.encounter
pushi.e -9
push.v [stacktop]self.structMonster
pushglb.v global.monsters
pushi.e -9
push.v [stacktop]self.platonia
cmp.v.v EQ
b [814]

:[813]
push.e 1

:[814]
pop.v.b local._isMiniGame
pushloc.v local._isMiniGame
conv.v.b
bf [816]

:[815]
pushi.e 0
conv.b.v
pop.v.v local.$$$$temp$$$$
popz.v
push.v local.$$$$temp$$$$
ret.v

:[816]
pushi.e 0
pop.v.b local._shouldRandomizeAction
pushglb.v global.loopManager
pushi.e -9
push.v [stacktop]self.playersConfusedLitha
push.v arg.argument0
pushi.e -9
push.v [stacktop]self.number
cmp.v.v EQ
bf [818]

:[817]
pushi.e 1
pop.v.b local._shouldRandomizeAction

:[818]
pushloc.v local._shouldRandomizeAction
conv.v.b
bf [836]

:[819]
call.i @@NewGMLArray@@(argc=0)
pop.v.v local._arrayOfChoice
pushref.i 6
pop.v.v local._instanceCard
pushloc.v local._instanceCard
call.i instance_number(argc=1)
pushi.e 0
cmp.i.v GT
bf [836]

:[820]
pushi.e 0
pop.v.i local._cards

:[821]
pushloc.v local._cards
pushloc.v local._instanceCard
call.i instance_number(argc=1)
cmp.v.v LT
bf [834]

:[822]
pushloc.v local._cards
pushloc.v local._instanceCard
call.i instance_find(argc=2)
pop.v.v local._inst
pushglb.v global.playersManager
push.v arg.argument0
pushi.e -9
push.v [stacktop]self.number
dup.v 1 8
dup.v 0
push.v stacktop.get_action
callv.v 1
pushloc.v local._inst
pushi.e -9
push.v [stacktop]self.actionType
cmp.v.v NEQ
bf [833]

:[823]
pushloc.v local._inst
pushi.e -9
push.v [stacktop]self.cardType
push.l 1
cmp.l.v EQ
bt [825]

:[824]
pushloc.v local._inst
pushi.e -9
push.v [stacktop]self.cardType
push.l 2
cmp.l.v EQ
b [826]

:[825]
push.e 1

:[826]
bf [828]

:[827]
pushloc.v local._inst
pushi.e -9
push.v [stacktop]self.actionType
pushloc.v local._arrayOfChoice
call.i array_push(argc=2)
popz.v
b [833]

:[828]
pushloc.v local._inst
pushi.e -9
push.v [stacktop]self.cardType
push.l 4
cmp.l.v EQ
bf [830]

:[829]
push.v arg.argument0
pushglb.v global.effect
pushi.e -9
push.v [stacktop]self.hallucinogenicVision
dup.v 1 8
dup.v 0
push.v stacktop.effect_index
callv.v 1
pushi.e -1
cmp.i.v NEQ
b [831]

:[830]
push.e 0

:[831]
bf [833]

:[832]
pushloc.v local._inst
pushi.e -9
push.v [stacktop]self.actionType
pushloc.v local._arrayOfChoice
call.i array_push(argc=2)
popz.v

:[833]
push.v local._cards
push.e 1
add.i.v
pop.v.v local._cards
b [821]

:[834]
pushloc.v local._arrayOfChoice
call.i array_length(argc=1)
pushi.e 0
cmp.i.v GT
bf [836]

:[835]
pushloc.v local._arrayOfChoice
call.i gml_Script_get_size(argc=1)
pushi.e 1
sub.i.v
pushglb.v global.rng
call.i gml_Script_minstd_int(argc=2)
pop.v.v local._randomId
pushglb.v global.playersManager
pushi.e 0
conv.b.v
pushi.e 0
conv.b.v
pushi.e -7
pushloc.v local._randomId
conv.v.i
push.v [array]self._arrayOfChoice
push.v arg.argument0
pushi.e -9
push.v [stacktop]self.number
dup.v 4 8
dup.v 0
push.v stacktop.apply_action
callv.v 4
popz.v

:[836]
pushloc.v local._effectStruct
pushglb.v global.effect
pushi.e -9
push.v [stacktop]self.anotherFace
cmp.v.v EQ
bf [838]

:[837]
push.s "effect._anotherFace"@4761
pop.v.s local._displayTextLabel
pushloc.v local._effectInstance
pushloc.v local._effectInstance
pushi.e -9
push.v [stacktop]self.y
pushloc.v local._effectInstance
pushi.e -9
push.v [stacktop]self.x
pushi.e -1
conv.i.v
dup.v 3 8
dup.v 0
push.v stacktop.increase_props
callv.v 3
popz.v
b [840]

:[838]
pushloc.v local._effectStruct
pushglb.v global.effect
pushi.e -9
push.v [stacktop]self.confusedMoon
cmp.v.v EQ
bf [840]

:[839]
push.s "effect._litha"@4751
pop.v.s local._displayTextLabel

:[840]
push.v arg.argument0
push.l 0
conv.l.v
pushbltn.v builtin.undefined
pushloc.v local._displayTextLabel
dup.v 3 8
dup.v 0
push.v stacktop.create_float_text
callv.v 3
popz.v
b [1057]

:[841]
pushloc.v local._effectStruct
pushglb.v global.effect
pushi.e -9
push.v [stacktop]self.badTrip
cmp.v.v EQ
bf [843]

:[842]
push.s "effect._badTrip"@4759
pop.v.s local._displayTextLabel
b [844]

:[843]
push.s "effect._confusion"@4753
pop.v.s local._displayTextLabel

:[844]
call.i @@NewGMLArray@@(argc=0)
pop.v.v local._arrayOfChoice
pushref.i 6
pop.v.v local._instanceCard
pushloc.v local._instanceCard
call.i instance_number(argc=1)
pushi.e 0
cmp.i.v GT
bf [859]

:[845]
pushi.e 0
pop.v.i local._cards

:[846]
pushloc.v local._cards
pushloc.v local._instanceCard
call.i instance_number(argc=1)
cmp.v.v LT
bf [859]

:[847]
pushloc.v local._cards
pushloc.v local._instanceCard
call.i instance_find(argc=2)
pop.v.v local._inst
pushloc.v local._inst
pushi.e -9
push.v [stacktop]self.cardType
push.l 1
cmp.l.v EQ
bt [850]

:[848]
pushloc.v local._inst
pushi.e -9
push.v [stacktop]self.cardType
push.l 2
cmp.l.v EQ
bt [850]

:[849]
pushloc.v local._inst
pushi.e -9
push.v [stacktop]self.cardType
push.l 9
cmp.l.v EQ
b [851]

:[850]
push.e 1

:[851]
bf [853]

:[852]
pushloc.v local._inst
pushi.e -9
push.v [stacktop]self.actionType
pushloc.v local._arrayOfChoice
call.i array_push(argc=2)
popz.v
b [858]

:[853]
pushloc.v local._inst
pushi.e -9
push.v [stacktop]self.cardType
push.l 4
cmp.l.v EQ
bf [855]

:[854]
push.v arg.argument0
pushglb.v global.effect
pushi.e -9
push.v [stacktop]self.hallucinogenicVision
dup.v 1 8
dup.v 0
push.v stacktop.effect_index
callv.v 1
pushi.e -1
cmp.i.v NEQ
b [856]

:[855]
push.e 0

:[856]
bf [858]

:[857]
pushloc.v local._inst
pushi.e -9
push.v [stacktop]self.actionType
pushloc.v local._arrayOfChoice
call.i array_push(argc=2)
popz.v

:[858]
push.v local._cards
push.e 1
add.i.v
pop.v.v local._cards
b [846]

:[859]
pushloc.v local._arrayOfChoice
call.i array_length(argc=1)
pushi.e 0
cmp.i.v GT
bf [863]

:[860]
pushloc.v local._arrayOfChoice
call.i gml_Script_get_size(argc=1)
pushi.e 1
sub.i.v
pushglb.v global.rng
call.i gml_Script_minstd_int(argc=2)
pop.v.v local._randomId
pushglb.v global.playersManager
pushi.e 0
conv.b.v
pushi.e 0
conv.b.v
pushi.e -7
pushloc.v local._randomId
conv.v.i
push.v [array]self._arrayOfChoice
push.v arg.argument0
pushi.e -9
push.v [stacktop]self.number
dup.v 4 8
dup.v 0
push.v stacktop.apply_action
callv.v 4
popz.v
push.v arg.argument0
push.l 0
conv.l.v
pushbltn.v builtin.undefined
pushloc.v local._displayTextLabel
dup.v 3 8
dup.v 0
push.v stacktop.create_float_text
callv.v 3
popz.v
pushloc.v local._effectStruct
pushglb.v global.effect
pushi.e -9
push.v [stacktop]self.badTrip
cmp.v.v EQ
bf [862]

:[861]
push.v arg.argument0
pushloc.v local._yEffectPop
pushloc.v local._xEffectPop
pushi.e 1
conv.i.v
pushglb.v global.effect
pushi.e -9
push.v [stacktop]self.hallucinogenicVision
dup.v 4 8
dup.v 0
push.v stacktop.receive_effect
callv.v 4
popz.v

:[862]
pushloc.v local._effectInstance
pushloc.v local._yEffectPop
pushloc.v local._xEffectPop
pushi.e -1
conv.i.v
dup.v 3 8
dup.v 0
push.v stacktop.increase_props
callv.v 3
popz.v
pushloc.v local._effectInstance
pushloc.v local._effectToAnimate
call.i array_push(argc=2)
popz.v

:[863]
b [1057]

:[864]
pushglb.v global.loopManager
dup.v 0 8
dup.v 0
push.v stacktop.has_more_door
callv.v 0
conv.v.b
bf [866]

:[865]
pushglb.v global.playersManager
pushi.e 0
conv.b.v
pushi.e 0
conv.b.v
push.l 2
conv.l.v
push.v arg.argument0
pushi.e -9
push.v [stacktop]self.number
dup.v 4 8
dup.v 0
push.v stacktop.apply_action
callv.v 4
popz.v
push.v arg.argument0
push.l 0
conv.l.v
pushbltn.v builtin.undefined
push.s "effect._trapped"@4729
conv.s.v
dup.v 3 8
dup.v 0
push.v stacktop.create_float_text
callv.v 3
popz.v
pushloc.v local._effectInstance
pushloc.v local._effectInstance
pushi.e -9
push.v [stacktop]self.y
pushloc.v local._effectInstance
pushi.e -9
push.v [stacktop]self.x
pushi.e -1
conv.i.v
dup.v 3 8
dup.v 0
push.v stacktop.increase_props
callv.v 3
popz.v
pushloc.v local._effectInstance
pushloc.v local._effectToAnimate
call.i array_push(argc=2)
popz.v

:[866]
b [1057]

:[867]
pushref.i 6
call.i instance_number(argc=1)
pop.v.v local._instanceCardItem
pushi.e 0
pop.v.i local._halluCardCounter

:[868]
pushloc.v local._halluCardCounter
pushloc.v local._instanceCardItem
cmp.v.v LT
bf [875]

:[869]
pushloc.v local._halluCardCounter
pushref.i 6
call.i instance_find(argc=2)
pop.v.v local._inst
pushloc.v local._inst
pushi.e -9
push.v [stacktop]self.actionType
pushloc.v local._actionCurChar
cmp.v.v EQ
bf [871]

:[870]
pushloc.v local._inst
pushi.e -9
push.v [stacktop]self.cardType
push.l 4
cmp.l.v EQ
b [872]

:[871]
push.e 0

:[872]
bf [874]

:[873]
pushloc.v local._effectInstance
pushloc.v local._effectInstance
pushi.e -9
push.v [stacktop]self.y
pushloc.v local._effectInstance
pushi.e -9
push.v [stacktop]self.x
pushi.e -1
conv.i.v
dup.v 3 8
dup.v 0
push.v stacktop.increase_props
callv.v 3
popz.v
pushloc.v local._effectInstance
pushloc.v local._effectToAnimate
call.i array_push(argc=2)
popz.v

:[874]
push.v local._halluCardCounter
push.e 1
add.i.v
pop.v.v local._halluCardCounter
b [868]

:[875]
b [1057]

:[876]
push.v arg.argument0
pushi.e 0
conv.b.v
pushbltn.v builtin.undefined
pushi.e -7
pushi.e 0
push.v [array]self._amount
pushi.e -7
pushi.e 0
push.v [array]self._amount
dup.v 4 8
dup.v 0
push.v stacktop.rezurrection
callv.v 4
popz.v
push.v arg.argument0
pushi.e -9
push.v [stacktop]self.token
push.l 0
conv.l.v
dup.v 1 8
dup.v 0
push.v stacktop.change_type
callv.v 1
popz.v
pushloc.v local._effectInstance
pushloc.v local._effectToAnimate
call.i array_push(argc=2)
popz.v
push.v arg.argument0
dup.v 0 8
dup.v 0
push.v stacktop.delete_effect
callv.v 0
popz.v
b [1057]

:[877]
push.v arg.argument0
pushi.e 0
conv.b.v
pushbltn.v builtin.undefined
push.v arg.argument0
pushi.e -9
push.v [stacktop]self.hpMaxInit
pushi.e -7
pushi.e 0
push.v [array]self._amount
pushloc.v local._stack
mul.v.v
dup.v 4 8
dup.v 0
push.v stacktop.rezurrection
callv.v 4
popz.v
push.v arg.argument0
pushi.e -9
push.v [stacktop]self.token
push.l 0
conv.l.v
dup.v 1 8
dup.v 0
push.v stacktop.change_type
callv.v 1
popz.v
pushloc.v local._effectInstance
pushloc.v local._effectInstance
pushi.e -9
push.v [stacktop]self.y
pushloc.v local._effectInstance
pushi.e -9
push.v [stacktop]self.x
pushi.e -1
conv.i.v
dup.v 3 8
dup.v 0
push.v stacktop.increase_props
callv.v 3
popz.v
pushloc.v local._effectInstance
pushloc.v local._effectToAnimate
call.i array_push(argc=2)
popz.v
push.v arg.argument0
dup.v 0 8
dup.v 0
push.v stacktop.delete_effect
callv.v 0
popz.v
b [1057]

:[878]
pushi.e 0
pop.v.b local._hasTouchedAnyone
pushi.e 0
pop.v.i local._p

:[879]
pushloc.v local._p
pushloc.v local._fightersLength
cmp.v.v LT
bf [887]

:[880]
pushi.e -7
pushloc.v local._p
conv.v.i
push.v [array]self._fighters
pushi.e -9
push.v [stacktop]self.number
push.v arg.argument0
pushi.e -9
push.v [stacktop]self.number
cmp.v.v NEQ
bf [883]

:[881]
pushi.e -7
pushloc.v local._p
conv.v.i
push.v [array]self._fighters
dup.v 0 8
dup.v 0
push.v stacktop.is_dead_this_turn
callv.v 0
conv.v.b
not.b
bf [883]

:[882]
pushglb.v global.playersManager
pushi.e -7
pushloc.v local._p
conv.v.i
push.v [array]self._fighters
pushi.e -9
push.v [stacktop]self.number
dup.v 1 8
dup.v 0
push.v stacktop.get_action
callv.v 1
push.l 1
cmp.l.v NEQ
b [884]

:[883]
push.e 0

:[884]
bf [886]

:[885]
pushi.e -7
pushloc.v local._p
conv.v.i
push.v [array]self._fighters
pushloc.v local._yEffectPop
pushloc.v local._xEffectPop
pushi.e 1
conv.i.v
pushglb.v global.effect
pushi.e -9
push.v [stacktop]self.kaboom
dup.v 4 8
dup.v 0
push.v stacktop.receive_effect
callv.v 4
popz.v
pushi.e 1
pop.v.b local._hasTouchedAnyone

:[886]
push.v local._p
push.e 1
add.i.v
pop.v.v local._p
b [879]

:[887]
pushloc.v local._hasTouchedAnyone
conv.v.b
bf [889]

:[888]
pushloc.v local._effectInstance
pushloc.v local._effectToAnimate
call.i array_push(argc=2)
popz.v

:[889]
b [1057]

:[890]
pushi.e -7
pushi.e 0
push.v [array]self._amount
pushloc.v local._stack
mul.v.v
push.v arg.argument0
pushi.e -9
push.v [stacktop]self.gem
call.i min(argc=2)
pop.v.v local._value
push.v arg.argument0
pushi.e -9
push.v [stacktop]self.number
push.l 1
conv.l.v
push.v arg.argument0
pushi.e -9
push.v [stacktop]self.number
push.l 0
conv.l.v
pushloc.v local._value
pushbltn.v builtin.undefined
pushbltn.v builtin.undefined
pushbltn.v builtin.undefined
pushbltn.v builtin.undefined
call.i gml_Script_g_exchange_gem(argc=9)
popz.v
pushloc.v local._effectInstance
pushloc.v local._effectToAnimate
call.i array_push(argc=2)
popz.v
b [1057]

:[891]
pushloc.v local._actionCurChar
push.l 3
cmp.l.v EQ
bt [895]

:[892]
pushloc.v local._actionCurChar
push.l 4
cmp.l.v EQ
bt [895]

:[893]
pushloc.v local._actionCurChar
push.l 5
cmp.l.v EQ
bt [895]

:[894]
pushloc.v local._actionCurChar
push.l 6
cmp.l.v EQ
b [896]

:[895]
push.e 1

:[896]
bf [910]

:[897]
pushloc.v local._actionCurChar
dup.v 0
push.l 3
cmp.l.v EQ
bt [902]

:[898]
dup.v 0
push.l 4
cmp.l.v EQ
bt [903]

:[899]
dup.v 0
push.l 5
cmp.l.v EQ
bt [904]

:[900]
dup.v 0
push.l 6
cmp.l.v EQ
bt [905]

:[901]
b [906]

:[902]
pushi.e 0
pop.v.i local._cardNumber
b [906]

:[903]
pushi.e 1
pop.v.i local._cardNumber
b [906]

:[904]
pushi.e 2
pop.v.i local._cardNumber
b [906]

:[905]
pushi.e 3
pop.v.i local._cardNumber
b [906]

:[906]
popz.v
pushglb.v global.actionCards
pushi.e -9
push.v [stacktop]self.theHand
call.i array_length(argc=1)
pushi.e 0
cmp.i.v GT
bf [910]

:[907]
pushglb.v global.actionCards
pushi.e -9
pushloc.v local._cardNumber
conv.v.i
push.v [array]self.theHand
pop.v.v local._inst
pushloc.v local._inst
call.i instance_exists(argc=1)
conv.v.b
bf [910]

:[908]
pushloc.v local._inst
pushi.e -9
push.v [stacktop]self.hasClover
conv.v.b
bf [910]

:[909]
pushi.e -1
pushglb.v global.monsterList
pushi.e -9
pop.v.i [stacktop]self.monsterCloverNumber
push.v arg.argument0
pushi.e -9
push.v [stacktop]self.number
push.l 0
conv.l.v
pushbltn.v builtin.undefined
push.l 2
conv.l.v
pushi.e -7
pushi.e 0
push.v [array]self._amount
pushbltn.v builtin.undefined
pushbltn.v builtin.undefined
pushref.i 9
pushi.e -9
push.v [stacktop]self.y
pushref.i 9
pushi.e -9
push.v [stacktop]self.x
call.i gml_Script_g_exchange_gem(argc=9)
popz.v
pushloc.v local._effectInstance
pushloc.v local._effectToAnimate
call.i array_push(argc=2)
popz.v

:[910]
b [1057]

:[911]
pushglb.v global.playersManager
push.l 20
conv.l.v
dup.v 1 8
dup.v 0
push.v stacktop.who_has_token_type
callv.v 1
pop.v.v local._whoHasTocan
pushglb.v global.playersManager
dup.v 0 8
dup.v 0
push.v stacktop.get_characters
callv.v 0
pop.v.v local._characters
call.i @@NewGMLArray@@(argc=0)
pop.v.v local._listOfCharacters
pushi.e 0
pop.v.i local._c

:[912]
pushloc.v local._c
pushloc.v local._characters
call.i array_length(argc=1)
cmp.v.v LT
bf [922]

:[913]
pushloc.v local._whoHasTocan
pushi.e -7
pushloc.v local._c
conv.v.i
push.v [array]self._characters
pushi.e -9
push.v [stacktop]self.number
cmp.v.v NEQ
bf [918]

:[914]
pushi.e -7
pushloc.v local._c
conv.v.i
push.v [array]self._characters
dup.v 0 8
dup.v 0
push.v stacktop.is_in_fight
callv.v 0
conv.v.b
bf [918]

:[915]
pushi.e -7
pushloc.v local._c
conv.v.i
push.v [array]self._characters
dup.v 0 8
dup.v 0
push.v stacktop.is_alive
callv.v 0
conv.v.b
bf [918]

:[916]
pushi.e -7
pushloc.v local._c
conv.v.i
push.v [array]self._characters
dup.v 0 8
dup.v 0
push.v stacktop.is_dead_this_turn
callv.v 0
conv.v.b
not.b
bf [918]

:[917]
pushglb.v global.playersManager
pushi.e -7
pushloc.v local._c
conv.v.i
push.v [array]self._characters
pushi.e -9
push.v [stacktop]self.number
dup.v 1 8
dup.v 0
push.v stacktop.get_action
callv.v 1
push.l 1
cmp.l.v NEQ
b [919]

:[918]
push.e 0

:[919]
bf [921]

:[920]
pushi.e -7
pushloc.v local._c
conv.v.i
push.v [array]self._characters
pushloc.v local._listOfCharacters
call.i array_push(argc=2)
popz.v

:[921]
push.v local._c
push.e 1
add.i.v
pop.v.v local._c
b [912]

:[922]
pushloc.v local._listOfCharacters
call.i array_length(argc=1)
pop.v.v local._listOfCharactersLength
pushloc.v local._listOfCharactersLength
pushi.e 0
cmp.i.v GT
bf [924]

:[923]
pushloc.v local._listOfCharactersLength
pushi.e 1
sub.i.v
pushglb.v global.rng
call.i gml_Script_minstd_int(argc=2)
pop.v.v local._randomAlivePlayerNbr
pushi.e -7
pushloc.v local._randomAlivePlayerNbr
conv.v.i
push.v [array]self._listOfCharacters
pop.v.v local._randomAlivePlayer
push.v arg.argument0
pushi.e -9
push.v [stacktop]self.token
push.v arg.argument0
pushi.e -9
push.v [stacktop]self.token
pushi.e -9
push.v [stacktop]self.yDraw
push.v arg.argument0
pushi.e -9
push.v [stacktop]self.token
pushi.e -9
push.v [stacktop]self.xDraw
pushloc.v local._randomAlivePlayer
pushi.e -9
push.v [stacktop]self.number
dup.v 3 8
dup.v 0
push.v stacktop.clone
callv.v 3
popz.v
pushi.e -7
pushi.e 0
push.v [array]self._amount
pushloc.v local._randomAlivePlayer
dup.v 0 8
dup.v 0
push.v stacktop.get_gem
callv.v 0
mul.v.v
pushi.e 100
conv.i.d
div.d.v
call.i round(argc=1)
pop.v.v local._gemAmount
push.l 2
conv.l.v
pushloc.v local._randomAlivePlayer
pushi.e -9
push.v [stacktop]self.number
push.l 0
conv.l.v
pushloc.v local._gemAmount
pushbltn.v builtin.undefined
pushbltn.v builtin.undefined
pushbltn.v builtin.undefined
pushbltn.v builtin.undefined
call.i gml_Script_g_exchange_gem(argc=8)
popz.v

:[924]
b [1057]

:[925]
pushi.e 0
pop.v.b local._loverSameChoice
pushi.e 0
pop.v.i local._p

:[926]
pushloc.v local._p
pushloc.v local._fighters
call.i gml_Script_get_size(argc=1)
cmp.v.v LT
bf [939]

:[927]
pushloc.v local._actionCurChar
push.l 0
cmp.l.v NEQ
bf [935]

:[928]
pushloc.v local._actionCurChar
push.l 13
cmp.l.v NEQ
bf [935]

:[929]
pushglb.v global.playersManager
pushi.e -7
pushloc.v local._p
conv.v.i
push.v [array]self._fighters
pushi.e -9
push.v [stacktop]self.number
dup.v 1 8
dup.v 0
push.v stacktop.get_action
callv.v 1
pushloc.v local._actionCurChar
cmp.v.v EQ
bf [935]

:[930]
pushi.e -7
pushloc.v local._p
conv.v.i
push.v [array]self._fighters
pushi.e -9
push.v [stacktop]self.number
push.v arg.argument0
pushi.e -9
push.v [stacktop]self.number
cmp.v.v NEQ
bf [935]

:[931]
pushi.e -7
pushloc.v local._p
conv.v.i
push.v [array]self._fighters
pushi.e -9
push.v [stacktop]self.token
pushi.e -9
push.v [stacktop]self.theType
push.l 7
cmp.l.v EQ
bt [933]

:[932]
pushi.e -7
pushloc.v local._p
conv.v.i
push.v [array]self._fighters
pushi.e -9
push.v [stacktop]self.token
pushi.e -9
push.v [stacktop]self.theType
push.l 8
cmp.l.v EQ
b [934]

:[933]
push.e 1

:[934]
b [936]

:[935]
push.e 0

:[936]
bf [938]

:[937]
pushi.e 1
pop.v.b local._loverSameChoice

:[938]
push.v local._p
push.e 1
add.i.v
pop.v.v local._p
b [926]

:[939]
pushloc.v local._loverSameChoice
conv.v.b
bf [941]

:[940]
push.v arg.argument0
pushi.e -7
pushi.e 0
push.v [array]self._amount
pushi.e 0
conv.b.v
dup.v 2 8
dup.v 0
push.v stacktop.receive_heal
callv.v 2
popz.v
pushloc.v local._effectInstance
pushloc.v local._effectToAnimate
call.i array_push(argc=2)
popz.v

:[941]
b [1057]

:[942]
pushi.e -4
pop.v.i local._anotherLoverChar
pushi.e 0
pop.v.i local._p

:[943]
pushloc.v local._p
pushloc.v local._fighters
call.i gml_Script_get_size(argc=1)
cmp.v.v LT
bf [953]

:[944]
pushi.e -7
pushloc.v local._p
conv.v.i
push.v [array]self._fighters
pushi.e -9
push.v [stacktop]self.number
push.v arg.argument0
pushi.e -9
push.v [stacktop]self.number
cmp.v.v NEQ
bf [949]

:[945]
pushi.e -7
pushloc.v local._p
conv.v.i
push.v [array]self._fighters
pushi.e -9
push.v [stacktop]self.token
pushi.e -9
push.v [stacktop]self.theType
push.l 7
cmp.l.v EQ
bt [947]

:[946]
pushi.e -7
pushloc.v local._p
conv.v.i
push.v [array]self._fighters
pushi.e -9
push.v [stacktop]self.token
pushi.e -9
push.v [stacktop]self.theType
push.l 8
cmp.l.v EQ
b [948]

:[947]
push.e 1

:[948]
b [950]

:[949]
push.e 0

:[950]
bf [952]

:[951]
pushglb.v global.playersManager
pushi.e -7
pushloc.v local._p
conv.v.i
push.v [array]self._fighters
pushi.e -9
push.v [stacktop]self.number
dup.v 1 8
dup.v 0
push.v stacktop.get_characters
callv.v 1
pop.v.v local._anotherLoverChar

:[952]
push.v local._p
push.e 1
add.i.v
pop.v.v local._p
b [943]

:[953]
pushloc.v local._anotherLoverChar
pushi.e -4
cmp.i.v NEQ
bf [958]

:[954]
pushi.e 1
pop.v.b local._shouldTakeDamage
pushglb.v global.playersManager
pushloc.v local._anotherLoverChar
pushi.e -9
push.v [stacktop]self.number
dup.v 1 8
dup.v 0
push.v stacktop.get_action
callv.v 1
push.l 1
cmp.l.v EQ
bf [956]

:[955]
pushi.e 0
pop.v.b local._shouldTakeDamage

:[956]
pushloc.v local._shouldTakeDamage
conv.v.b
bf [958]

:[957]
pushloc.v local._anotherLoverChar
pushi.e -7
pushi.e 0
push.v [array]self._amount
pushi.e 0
conv.b.v
dup.v 2 8
dup.v 0
push.v stacktop.receive_damage
callv.v 2
popz.v
pushloc.v local._effectInstance
pushloc.v local._effectToAnimate
call.i array_push(argc=2)
popz.v

:[958]
b [1057]

:[959]
pushglb.v global.loopManager
dup.v 0 8
dup.v 0
push.v stacktop.has_more_door
callv.v 0
conv.v.b
bf [970]

:[960]
pushglb.v global.playersManager
push.l 9
conv.l.v
dup.v 1 8
dup.v 0
push.v stacktop.who_has_token_type
callv.v 1
pop.v.v local._whoHasAutocracy
pushloc.v local._whoHasAutocracy
pushi.e -1
cmp.i.v NEQ
bf [970]

:[961]
pushglb.v global.playersManager
pushloc.v local._whoHasAutocracy
dup.v 1 8
dup.v 0
push.v stacktop.is_leaving
callv.v 1
pop.v.v local._autocracyIsLeaving
pushloc.v local._autocracyIsLeaving
conv.v.b
bf [970]

:[962]
pushi.e 0
pop.v.i local._i

:[963]
pushloc.v local._i
pushloc.v local._fighters
call.i gml_Script_get_size(argc=1)
cmp.v.v LT
bf [970]

:[964]
pushglb.v global.playersManager
pushi.e -7
pushloc.v local._i
conv.v.i
push.v [array]self._fighters
pushi.e -9
push.v [stacktop]self.number
dup.v 1 8
dup.v 0
push.v stacktop.get_characters
callv.v 1
pop.v.v local._fighterChar
pushi.e -7
pushloc.v local._i
conv.v.i
push.v [array]self._fighters
pushi.e -9
push.v [stacktop]self.number
pushloc.v local._whoHasAutocracy
cmp.v.v NEQ
bf [966]

:[965]
pushloc.v local._fighterChar
dup.v 0 8
dup.v 0
push.v stacktop.is_alive
callv.v 0
conv.v.b
b [967]

:[966]
push.e 0

:[967]
bf [969]

:[968]
pushglb.v global.playersManager
pushi.e 0
conv.b.v
pushi.e 0
conv.b.v
push.l 2
conv.l.v
pushi.e -7
pushloc.v local._i
conv.v.i
push.v [array]self._fighters
pushi.e -9
push.v [stacktop]self.number
dup.v 4 8
dup.v 0
push.v stacktop.apply_action
callv.v 4
popz.v
pushi.e -7
pushloc.v local._i
conv.v.i
push.v [array]self._fighters
push.l 0
conv.l.v
pushbltn.v builtin.undefined
push.s "token._autocracy"@5344
conv.s.v
dup.v 3 8
dup.v 0
push.v stacktop.create_float_text
callv.v 3
popz.v
pushloc.v local._fighterChar
pushi.e -9
push.v [stacktop]self.token
dup.v 0 8
dup.v 0
push.v stacktop.throw_it
callv.v 0
popz.v

:[969]
push.v local._i
push.e 1
add.i.v
pop.v.v local._i
b [963]

:[970]
b [1057]

:[971]
push.v arg.argument0
pushloc.v local._effectStruct
pushi.e -9
push.v [stacktop]self.sprite
pushi.e -7
pushi.e 0
push.v [array]self._amount
pushi.e 0
conv.b.v
dup.v 3 8
dup.v 0
push.v stacktop.receive_heal
callv.v 3
popz.v
pushloc.v local._effectInstance
pushloc.v local._effectToAnimate
call.i array_push(argc=2)
popz.v
b [1057]

:[972]
pushglb.v global.loopManager
dup.v 0 8
dup.v 0
push.v stacktop.is_last_monster
callv.v 0
conv.v.b
bf [974]

:[973]
pushi.e -7
pushi.e 0
push.v [array]self._amount
push.v arg.argument0
pushi.e -9
push.v [stacktop]self.damageIncoming
call.i min(argc=2)
push.v arg.argument0
pushi.e -9
pop.v.v [stacktop]self.damageIncoming
pushloc.v local._effectInstance
pushloc.v local._effectToAnimate
call.i array_push(argc=2)
popz.v

:[974]
b [1057]

:[975]
push.v arg.argument1
push.l 17
cmp.l.v EQ
bf [977]

:[976]
pushi.e -7
pushi.e 1
push.v [array]self._amount
push.v arg.argument0
pushi.e -9
push.v [stacktop]self.damageIncoming
call.i min(argc=2)
push.v arg.argument0
pushi.e -9
pop.v.v [stacktop]self.damageIncoming
b [979]

:[977]
push.v arg.argument1
push.l 24
cmp.l.v EQ
bf [979]

:[978]
pushi.e -7
pushi.e 1
push.v [array]self._amount
push.v arg.argument0
pushi.e -9
push.v [stacktop]self.healIncoming
call.i min(argc=2)
push.v arg.argument0
pushi.e -9
pop.v.v [stacktop]self.healIncoming

:[979]
b [1057]

:[980]
push.v arg.argument1
push.l 1
cmp.l.v EQ
bf [982]

:[981]
push.v arg.argument0
pushloc.v local._effectStruct
pushi.e -9
push.v [stacktop]self.sprite
pushi.e -7
pushi.e 1
push.v [array]self._amount
pushi.e 0
conv.b.v
dup.v 3 8
dup.v 0
push.v stacktop.receive_damage
callv.v 3
popz.v
pushloc.v local._effectInstance
pushloc.v local._effectToAnimate
call.i array_push(argc=2)
popz.v
b [990]

:[982]
push.v arg.argument1
push.l 9
cmp.l.v EQ
bf [990]

:[983]
call.i @@NewGMLArray@@(argc=0)
pop.v.v local._randomTargetPlague
pushi.e 0
pop.v.i local._p

:[984]
pushloc.v local._p
pushloc.v local._fightersLength
cmp.v.v LT
bf [988]

:[985]
pushglb.v global.playersManager
pushi.e -7
pushloc.v local._p
conv.v.i
push.v [array]self._fighters
pushi.e -9
push.v [stacktop]self.number
dup.v 1 8
dup.v 0
push.v stacktop.is_staying
callv.v 1
conv.v.b
bf [987]

:[986]
pushi.e -7
pushloc.v local._p
conv.v.i
push.v [array]self._fighters
pushloc.v local._randomTargetPlague
call.i array_push(argc=2)
popz.v

:[987]
push.v local._p
push.e 1
add.i.v
pop.v.v local._p
b [984]

:[988]
pushloc.v local._randomTargetPlague
call.i array_length(argc=1)
pushi.e 0
cmp.i.v GT
bf [990]

:[989]
pushloc.v local._randomTargetPlague
call.i array_length(argc=1)
pushi.e 1
sub.i.v
pushglb.v global.rng
call.i gml_Script_minstd_int(argc=2)
pop.v.v local._theRandomTargetPlague
pushi.e -7
pushloc.v local._theRandomTargetPlague
conv.v.i
push.v [array]self._randomTargetPlague
pushloc.v local._yEffectPop
pushloc.v local._xEffectPop
pushloc.v local._effectInstance
pushi.e -9
push.v [stacktop]self.stack
pushglb.v global.effect
pushi.e -9
push.v [stacktop]self.plague
dup.v 4 8
dup.v 0
push.v stacktop.receive_effect
callv.v 4
popz.v
pushloc.v local._effectInstance
pushloc.v local._effectToAnimate
call.i array_push(argc=2)
popz.v

:[990]
b [1057]

:[991]
push.v arg.argument1
push.l 1
cmp.l.v EQ
bf [995]

:[992]
pushloc.v local._stack
pushi.e 2
mod.i.v
pushi.e 1
cmp.i.v EQ
bf [994]

:[993]
push.v arg.argument0
pushloc.v local._effectStruct
pushi.e -9
push.v [stacktop]self.sprite
pushi.e -7
pushi.e 0
push.v [array]self._amount
pushloc.v local._stack
mul.v.v
pushi.e 0
conv.b.v
dup.v 3 8
dup.v 0
push.v stacktop.receive_damage
callv.v 3
popz.v
pushloc.v local._effectInstance
pushloc.v local._effectToAnimate
call.i array_push(argc=2)
popz.v

:[994]
b [997]

:[995]
push.v arg.argument1
push.l 11
cmp.l.v EQ
bf [997]

:[996]
pushloc.v local._effectInstance
pushloc.v local._effectInstance
pushi.e -9
push.v [stacktop]self.y
pushloc.v local._effectInstance
pushi.e -9
push.v [stacktop]self.x
pushi.e 1
conv.i.v
dup.v 3 8
dup.v 0
push.v stacktop.increase_props
callv.v 3
popz.v

:[997]
b [1057]

:[998]
pushi.e 0
pop.v.b local._anotherOneIsLeaving
pushi.e 0
pop.v.i local._p

:[999]
pushloc.v local._p
pushloc.v local._fightersLength
cmp.v.v LT
bf [1003]

:[1000]
pushglb.v global.playersManager
pushi.e -7
pushloc.v local._p
conv.v.i
push.v [array]self._fighters
pushi.e -9
push.v [stacktop]self.number
dup.v 1 8
dup.v 0
push.v stacktop.get_action
callv.v 1
push.l 1
cmp.l.v EQ
bf [1002]

:[1001]
pushi.e 1
pop.v.b local._anotherOneIsLeaving

:[1002]
push.v local._p
push.e 1
add.i.v
pop.v.v local._p
b [999]

:[1003]
pushloc.v local._anotherOneIsLeaving
conv.v.b
not.b
bf [1005]

:[1004]
push.v arg.argument0
pushi.e -9
dup.i 4
push.v [stacktop]self.gemIncoming
pushi.e -7
pushi.e 0
push.v [array]self._amount
pushloc.v local._stack
mul.v.v
add.v.v
pop.i.v [stacktop]self.gemIncoming

:[1005]
b [1057]

:[1006]
pushglb.v global.loopManager
pushi.e -9
push.v [stacktop]self.state
push.l 10
cmp.l.v EQ
bf [1008]

:[1007]
pushi.e -7
pushi.e 1
push.v [array]self._amount
push.v arg.argument0
pushi.e -9
push.v [stacktop]self.gem
call.i gml_Script_g_distribute(argc=2)
pop.v.v local._halfGem
push.l 2
conv.l.v
push.v arg.argument0
pushi.e -9
push.v [stacktop]self.number
push.l 0
conv.l.v
pushi.e -7
pushi.e 1
push.v [array]self._halfGem
pushbltn.v builtin.undefined
pushbltn.v builtin.undefined
pushbltn.v builtin.undefined
pushbltn.v builtin.undefined
call.i gml_Script_g_exchange_gem(argc=8)
popz.v
pushi.e -7
pushi.e 0
push.v [array]self._halfGem
push.v arg.argument0
pushi.e -9
pop.v.v [stacktop]self.gemSecureIncoming

:[1008]
b [1057]

:[1009]
pushglb.v global.loopManager
pushi.e -9
push.v [stacktop]self.state
push.l 10
cmp.l.v EQ
bf [1017]

:[1010]
pushi.e 0
pop.v.i local._nbrLeaving
pushi.e 0
pop.v.i local._p

:[1011]
pushloc.v local._p
pushloc.v local._fightersLength
cmp.v.v LT
bf [1015]

:[1012]
pushglb.v global.playersManager
pushi.e -7
pushloc.v local._p
conv.v.i
push.v [array]self._fighters
pushi.e -9
push.v [stacktop]self.number
dup.v 1 8
dup.v 0
push.v stacktop.is_leaving
callv.v 1
conv.v.b
bf [1014]

:[1013]
push.v local._nbrLeaving
push.e 1
add.i.v
pop.v.v local._nbrLeaving

:[1014]
push.v local._p
push.e 1
add.i.v
pop.v.v local._p
b [1011]

:[1015]
pushloc.v local._nbrLeaving
pushi.e 2
cmp.i.v GTE
bf [1017]

:[1016]
push.v arg.argument0
pushi.e -9
dup.i 4
push.v [stacktop]self.gemSecureIncoming
pushi.e -7
pushi.e 0
push.v [array]self._amount
mul.v.v
pop.i.v [stacktop]self.gemSecureIncoming

:[1017]
b [1057]

:[1018]
b [1057]

:[1019]
push.v arg.argument1
push.l 35
cmp.l.v EQ
bf [1021]

:[1020]
push.v arg.argument0
pushi.e -7
pushi.e 0
push.v [array]self._amount
pushi.e 1
conv.b.v
pushi.e 1
conv.b.v
pushloc.v local._effectStruct
pushi.e -9
push.v [stacktop]self.sprite
pushi.e -7
pushi.e 0
push.v [array]self._amount
dup.v 5 8
dup.v 0
push.v stacktop.update_hp_max
callv.v 5
popz.v
pushloc.v local._effectInstance
pushloc.v local._effectToAnimate
call.i array_push(argc=2)
popz.v

:[1021]
push.v arg.argument0
pushglb.v global.effect
pushi.e -9
push.v [stacktop]self.zlataLiquor
dup.v 1 8
dup.v 0
push.v stacktop.effect_index
callv.v 1
pop.v.v local._hasZlata
push.v arg.argument1
push.l 11
cmp.l.v EQ
bf [1023]

:[1022]
pushloc.v local._hasZlata
pushi.e -1
cmp.i.v NEQ
b [1024]

:[1023]
push.e 0

:[1024]
bf [1026]

:[1025]
push.v arg.argument0
pushloc.v local._hasZlata
dup.v 1 8
dup.v 0
push.v stacktop.get_effect
callv.v 1
pop.v.v local._zlata
push.v arg.argument0
pushloc.v local._zlata
pushi.e -9
push.v [stacktop]self.y
pushloc.v local._zlata
pushi.e -9
push.v [stacktop]self.x
pushloc.v local._zlata
pushi.e -9
push.v [stacktop]self.stack
pushloc.v local._zlata
pushi.e -9
pushi.e 0
push.v [array]self.amount
mul.v.v
pushglb.v global.effect
pushi.e -9
push.v [stacktop]self.beeeh
dup.v 4 8
dup.v 0
push.v stacktop.receive_effect
callv.v 4
popz.v

:[1026]
b [1057]

:[1027]
push.v arg.argument1
push.l 35
cmp.l.v EQ
bf [1029]

:[1028]
push.v arg.argument0
pushi.e -7
pushi.e 0
push.v [array]self._amount
pushi.e 1
conv.b.v
pushi.e 1
conv.b.v
pushloc.v local._effectStruct
pushi.e -9
push.v [stacktop]self.sprite
pushi.e -7
pushi.e 0
push.v [array]self._amount
dup.v 5 8
dup.v 0
push.v stacktop.update_hp_max
callv.v 5
popz.v
push.v arg.argument0
pushi.e -9
push.v [stacktop]self.number
push.l 0
conv.l.v
pushbltn.v builtin.undefined
push.l 2
conv.l.v
pushi.e -7
pushi.e 1
push.v [array]self._amount
pushbltn.v builtin.undefined
pushbltn.v builtin.undefined
pushloc.v local._yEffectPop
pushloc.v local._xEffectPop
call.i gml_Script_g_exchange_gem(argc=9)
popz.v
pushloc.v local._effectInstance
pushloc.v local._effectToAnimate
call.i array_push(argc=2)
popz.v

:[1029]
push.v arg.argument0
pushglb.v global.effect
pushi.e -9
push.v [stacktop]self.zlataLiquor
dup.v 1 8
dup.v 0
push.v stacktop.effect_index
callv.v 1
pop.v.v local._hasZlata
push.v arg.argument1
push.l 11
cmp.l.v EQ
bf [1031]

:[1030]
pushloc.v local._hasZlata
pushi.e -1
cmp.i.v NEQ
b [1032]

:[1031]
push.e 0

:[1032]
bf [1034]

:[1033]
push.v arg.argument0
pushloc.v local._hasZlata
dup.v 1 8
dup.v 0
push.v stacktop.get_effect
callv.v 1
pop.v.v local._zlata
push.v arg.argument0
pushloc.v local._zlata
pushi.e -9
push.v [stacktop]self.y
pushloc.v local._zlata
pushi.e -9
push.v [stacktop]self.x
pushloc.v local._zlata
pushi.e -9
push.v [stacktop]self.stack
pushloc.v local._zlata
pushi.e -9
pushi.e 0
push.v [array]self.amount
mul.v.v
pushglb.v global.effect
pushi.e -9
push.v [stacktop]self.loyalty
dup.v 4 8
dup.v 0
push.v stacktop.receive_effect
callv.v 4
popz.v

:[1034]
b [1057]

:[1035]
push.v arg.argument0
pushglb.v global.effect
pushi.e -9
push.v [stacktop]self.zlataLiquor
dup.v 1 8
dup.v 0
push.v stacktop.effect_index
callv.v 1
pop.v.v local._hasZlata
push.v arg.argument1
push.l 35
cmp.l.v EQ
bf [1037]

:[1036]
push.v arg.argument0
pushi.e -7
pushi.e 0
push.v [array]self._amount
pushi.e 1
conv.b.v
pushi.e 1
conv.b.v
pushloc.v local._effectStruct
pushi.e -9
push.v [stacktop]self.sprite
pushi.e -7
pushi.e 0
push.v [array]self._amount
dup.v 5 8
dup.v 0
push.v stacktop.update_hp_max
callv.v 5
popz.v
push.v arg.argument0
pushi.e -9
push.v [stacktop]self.number
push.l 0
conv.l.v
pushbltn.v builtin.undefined
push.l 2
conv.l.v
pushi.e -7
pushi.e 1
push.v [array]self._amount
pushbltn.v builtin.undefined
pushbltn.v builtin.undefined
pushloc.v local._yEffectPop
pushloc.v local._xEffectPop
call.i gml_Script_g_exchange_gem(argc=9)
popz.v
pushloc.v local._effectInstance
pushloc.v local._effectToAnimate
call.i array_push(argc=2)
popz.v
b [1050]

:[1037]
push.v arg.argument1
push.l 11
cmp.l.v EQ
bf [1039]

:[1038]
pushloc.v local._hasZlata
pushi.e -1
cmp.i.v NEQ
b [1040]

:[1039]
push.e 0

:[1040]
bf [1042]

:[1041]
push.v arg.argument0
pushloc.v local._hasZlata
dup.v 1 8
dup.v 0
push.v stacktop.get_effect
callv.v 1
pop.v.v local._zlata
push.v arg.argument0
pushloc.v local._zlata
pushi.e -9
push.v [stacktop]self.y
pushloc.v local._zlata
pushi.e -9
push.v [stacktop]self.x
pushloc.v local._zlata
pushi.e -9
push.v [stacktop]self.stack
pushloc.v local._zlata
pushi.e -9
pushi.e 0
push.v [array]self.amount
mul.v.v
pushglb.v global.effect
pushi.e -9
push.v [stacktop]self.mother
dup.v 4 8
dup.v 0
push.v stacktop.receive_effect
callv.v 4
popz.v
b [1050]

:[1042]
push.v arg.argument1
push.l 6
cmp.l.v EQ
bf [1050]

:[1043]
pushglb.v global.loopManager
dup.v 0 8
dup.v 0
push.v stacktop.has_more_door
callv.v 0
conv.v.b
bf [1047]

:[1044]
pushglb.v global.playersManager
dup.v 0 8
dup.v 0
push.v stacktop.is_everybody_alive
callv.v 0
conv.v.b
bf [1047]

:[1045]
pushglb.v global.playersManager
dup.v 0 8
dup.v 0
push.v stacktop.is_everybody_fighthing
callv.v 0
conv.v.b
bf [1047]

:[1046]
pushglb.v global.playersCount
pushi.e 1
cmp.i.v GT
b [1048]

:[1047]
push.e 0

:[1048]
bf [1050]

:[1049]
pushglb.v global.playersManager
pushi.e 0
conv.b.v
pushi.e 0
conv.b.v
push.l 2
conv.l.v
push.v arg.argument0
pushi.e -9
push.v [stacktop]self.number
dup.v 4 8
dup.v 0
push.v stacktop.apply_action
callv.v 4
popz.v
push.v arg.argument0
push.l 0
conv.l.v
pushbltn.v builtin.undefined
pushloc.v local._effectInstance
pushi.e -9
push.v [stacktop]self.theStruct
pushi.e -9
push.v [stacktop]self.name
dup.v 3 8
dup.v 0
push.v stacktop.create_float_text
callv.v 3
popz.v
pushloc.v local._effectInstance
pushloc.v local._effectToAnimate
call.i array_push(argc=2)
popz.v

:[1050]
b [1057]

:[1051]
push.v arg.argument0
pushi.e -9
push.v [stacktop]self.hp
pushi.e -7
pushi.e 0
push.v [array]self._amount
cmp.v.v EQ
bt [1053]

:[1052]
push.v arg.argument0
pushi.e -9
push.v [stacktop]self.hp
pushi.e -7
pushi.e 1
push.v [array]self._amount
cmp.v.v EQ
b [1054]

:[1053]
push.e 1

:[1054]
bf [1056]

:[1055]
push.v arg.argument0
pushi.e -9
push.v [stacktop]self.number
push.l 0
conv.l.v
pushbltn.v builtin.undefined
push.l 2
conv.l.v
pushi.e -7
pushi.e 1
push.v [array]self._amount
pushloc.v local._stack
mul.v.v
pushbltn.v builtin.undefined
pushbltn.v builtin.undefined
pushloc.v local._yEffectPop
pushloc.v local._xEffectPop
call.i gml_Script_g_exchange_gem(argc=9)
popz.v
pushloc.v local._effectInstance
pushloc.v local._effectToAnimate
call.i array_push(argc=2)
popz.v

:[1056]
b [1057]

:[1057]
popz.v

:[1058]
push.v local._effectsCounter
push.e 1
add.i.v
pop.v.v local._effectsCounter
b [462]

:[1059]
pushi.e 0
pop.v.i local._a

:[1060]
pushloc.v local._a
pushloc.v local._effectToAnimate
call.i array_length(argc=1)
cmp.v.v LT
bf [1065]

:[1061]
pushi.e -7
pushloc.v local._a
conv.v.i
push.v [array]self._effectToAnimate
call.i instance_exists(argc=1)
conv.v.b
bf [1064]

:[1062]
pushi.e -7
pushloc.v local._a
conv.v.i
push.v [array]self._effectToAnimate
pushi.e -9
push.v [stacktop]self.object_index
pushref.i 16
cmp.v.v EQ
bf [1064]

:[1063]
pushi.e -7
pushloc.v local._a
conv.v.i
push.v [array]self._effectToAnimate
pushi.e -9
push.v [stacktop]self.wiggle
dup.v 0 8
dup.v 0
push.v stacktop.run
callv.v 0
popz.v

:[1064]
push.v local._a
push.e 1
add.i.v
pop.v.v local._a
b [1060]

:[1065]
exit.i

:[1066]
push.i [function]gml_Script_execute_effect
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pop.v.v self.execute_effect
popz.v
b [1070]

> gml_Script_calculate_damage_reduction (locals=1, argc=7)
:[1067]
push.v arg.argument1
pushi.e 0
cmp.i.v GT
bf [1069]

:[1068]
push.v arg.argument3
push.v arg.argument2
mul.v.v
pop.v.v local._damageReduction
push.v arg.argument0
push.l 3
conv.l.v
push.v arg.argument4
pushloc.v local._damageReduction
push.v arg.argument1
call.i min(argc=2)
neg.v
dup.v 3 8
dup.v 0
push.v stacktop.create_float_text
callv.v 3
popz.v
pushi.e 0
conv.i.v
push.v arg.argument1
pushloc.v local._damageReduction
sub.v.v
call.i max(argc=2)
push.v arg.argument0
pushi.e -9
pop.v.v [stacktop]self.damageIncoming
push.v arg.argument0
pushi.e -9
dup.i 4
push.v [stacktop]self.damageMinimumIncoming
push.v arg.argument3
add.v.v
pop.i.v [stacktop]self.damageMinimumIncoming
push.v arg.argument5
push.v arg.argument6
call.i array_push(argc=2)
popz.v

:[1069]
exit.i

:[1070]
push.i [function]gml_Script_calculate_damage_reduction
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pop.v.v self.calculate_damage_reduction
popz.v

:[end]