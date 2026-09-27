:[0]
b [114]

> gml_Script_effect_execution_manager (locals=0, argc=0)
:[1]
call.i @@SetStatic@@(argc=0)
pushi.e 0
pop.v.b builtin.allEffectsExecuted
pushi.e -1
pop.v.i builtin.nbrCharToCheckPrev
pushi.e 0
pop.v.i builtin.nbrCharToCheck
pushi.e 0
pop.v.i builtin.indexEffectToCheck
pushi.e 0
pop.v.i builtin.indexTokenToCheck
pushi.e -4
pop.v.i builtin.charToCheck
call.i @@NewGMLArray@@(argc=0)
pop.v.v builtin.arrayInstEffects
pushi.e 0
pop.v.i builtin.arrayInstEffectsLength
pushi.e 0
pop.v.i builtin.preCalculatedNbr
call.i @@NewGMLArray@@(argc=0)
pop.v.v builtin.fighters
pushi.e 0
pop.v.i builtin.fightersLength
b [3]

> gml_Script_anon@558@effect_execution_manager@effect_execution_loop (locals=0, argc=0)
:[2]
pushi.e 1
pop.v.i global.vfxEffectSpeed
pushi.e 0
pop.v.b builtin.allEffectsExecuted
pushi.e -1
pop.v.i builtin.nbrCharToCheckPrev
pushi.e 0
pop.v.i builtin.nbrCharToCheck
pushi.e 0
pop.v.i builtin.indexEffectToCheck
pushi.e 0
pop.v.i builtin.indexTokenToCheck
pushi.e 100
conv.i.v
pushglb.v global.rng
call.i gml_Script_minstd_int(argc=2)
pop.v.v builtin.preCalculatedNbr
call.i @@NewGMLArray@@(argc=0)
pop.v.v builtin.fighters
pushi.e 0
pop.v.i builtin.fightersLength
exit.i

:[3]
push.i [function]gml_Script_anon@558@effect_execution_manager@effect_execution_loop
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
pop.v.v builtin.reset
b [6]

> gml_Script_anon@1010@effect_execution_manager@effect_execution_loop (locals=0, argc=0)
:[4]
push.v builtin.allEffectsExecuted
ret.v

:[5]
exit.i

:[6]
push.i [function]gml_Script_anon@1010@effect_execution_manager@effect_execution_loop
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
pop.v.v builtin.is_finished
b [14]

> gml_Script_anon@1098@effect_execution_manager@effect_execution_loop (locals=2, argc=1)
:[7]
pushi.e 0
pop.v.i builtin.indexEffectToCheck
pushi.e 0
pop.v.i builtin.indexTokenToCheck
pushglb.v global.playersManager
push.v builtin.nbrCharToCheck
dup.v 1 8
dup.v 0
push.v stacktop.get_characters
callv.v 1
pop.v.v builtin.charToCheck
call.i @@NewGMLArray@@(argc=0)
pop.v.v builtin.arrayInstEffects
pushglb.v global.playersManager
dup.v 0 8
dup.v 0
push.v stacktop.get_fighters
callv.v 0
pop.v.v builtin.fighters
push.v builtin.fighters
call.i array_length(argc=1)
pop.v.v builtin.fightersLength
pushi.e 0
pop.v.i local._t

:[8]
pushloc.v local._t
push.v builtin.charToCheck
pushi.e -9
push.v [stacktop]self.token
pushi.e -9
push.v [stacktop]self.effectLinked
call.i array_length(argc=1)
cmp.v.v LT
bf [10]

:[9]
push.l 1
conv.l.v
push.v arg.argument0
push.v builtin.charToCheck
pushi.e -9
push.v [stacktop]self.token
pushi.e -9
pushloc.v local._t
conv.v.i
push.v [array]self.effectLinked
call.i @@This@@(argc=0)
push.v builtin.add_effect_to_loop
callv.v 3
popz.v
push.v local._t
push.e 1
add.i.v
pop.v.v local._t
b [8]

:[10]
pushi.e 0
pop.v.i local._i

:[11]
pushloc.v local._i
push.v builtin.charToCheck
pushi.e -9
push.v [stacktop]self.effects
call.i array_length(argc=1)
cmp.v.v LT
bf [13]

:[12]
push.l 0
conv.l.v
push.v arg.argument0
push.v builtin.charToCheck
pushi.e -9
pushloc.v local._i
conv.v.i
push.v [array]self.effects
call.i @@This@@(argc=0)
push.v builtin.add_effect_to_loop
callv.v 3
popz.v
push.v local._i
push.e 1
add.i.v
pop.v.v local._i
b [11]

:[13]
push.v builtin.arrayInstEffects
call.i array_length(argc=1)
pop.v.v builtin.arrayInstEffectsLength
exit.i

:[14]
push.i [function]gml_Script_anon@1098@effect_execution_manager@effect_execution_loop
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
pop.v.v builtin.define_effect_to_parse
b [18]

> gml_Script_anon@1925@effect_execution_manager@effect_execution_loop (locals=0, argc=0)
:[15]
pushi.e 1
pop.v.i global.vfxEffectSpeed
push.v builtin.nbrCharToCheck
push.e 1
add.i.v
pop.v.v builtin.nbrCharToCheck
push.v builtin.nbrCharToCheck
pushglb.v global.playersCount
cmp.v.v GTE
bf [17]

:[16]
pushi.e 1
pop.v.b builtin.allEffectsExecuted

:[17]
exit.i

:[18]
push.i [function]gml_Script_anon@1925@effect_execution_manager@effect_execution_loop
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
pop.v.v builtin.moveToNextCharacter
b [97]

> gml_Script_anon@2263@effect_execution_manager@effect_execution_loop (locals=14, argc=3)
:[19]
push.v arg.argument1
push.v arg.argument0
pushi.e -9
push.v [stacktop]self.condition
call.i array_contains(argc=2)
conv.v.b
not.b
bf [21]

:[20]
exit.i

:[21]
push.v builtin.charToCheck
dup.v 0 8
dup.v 0
push.v stacktop.is_dead_this_turn
callv.v 0
pop.v.v local._isDeadThisTurn
pushi.e 0
pop.v.b local._isLeaving
pushi.e 0
pop.v.b local._isAnotherLeaving
pushi.e 0
pop.v.i local._nbrIsLeaving
pushi.e 0
pop.v.b local._isContinuing
pushi.e 0
pop.v.b local._isAnotherStaying
pushi.e 0
pop.v.i local._nbrIsContinuing
pushi.e 0
pop.v.b local._isAnotherDead
pushi.e 0
pop.v.i local._nbrAnotherDead
pushi.e 1
pop.v.i local._numberOfApplication
pushi.e 0
pop.v.i local._p

:[22]
pushloc.v local._p
pushglb.v global.playersCount
cmp.v.v LT
bf [37]

:[23]
pushglb.v global.playersManager
pushloc.v local._p
dup.v 1 8
dup.v 0
push.v stacktop.get_characters
callv.v 1
dup.v 0 8
dup.v 0
push.v stacktop.is_dead_this_turn
callv.v 0
conv.v.b
bf [25]

:[24]
pushloc.v local._p
push.v builtin.nbrCharToCheck
cmp.v.v NEQ
b [26]

:[25]
push.e 0

:[26]
bf [28]

:[27]
push.v local._nbrAnotherDead
push.e 1
add.i.v
pop.v.v local._nbrAnotherDead
pushi.e 1
pop.v.b local._isAnotherDead

:[28]
pushglb.v global.playersManager
pushloc.v local._p
dup.v 1 8
dup.v 0
push.v stacktop.is_leaving
callv.v 1
conv.v.b
bf [32]

:[29]
pushloc.v local._p
push.v builtin.nbrCharToCheck
cmp.v.v EQ
bf [31]

:[30]
pushi.e 1
pop.v.b local._isLeaving
b [32]

:[31]
pushi.e 1
pop.v.b local._isAnotherLeaving
push.v local._nbrIsLeaving
push.e 1
add.i.v
pop.v.v local._nbrIsLeaving

:[32]
pushglb.v global.playersManager
pushloc.v local._p
dup.v 1 8
dup.v 0
push.v stacktop.is_staying
callv.v 1
conv.v.b
bf [36]

:[33]
pushloc.v local._p
push.v builtin.nbrCharToCheck
cmp.v.v EQ
bf [35]

:[34]
pushi.e 1
pop.v.b local._isContinuing
b [36]

:[35]
pushi.e 1
pop.v.b local._isAnotherStaying
push.v local._nbrIsContinuing
push.e 1
add.i.v
pop.v.v local._nbrIsContinuing

:[36]
push.v local._p
push.e 1
add.i.v
pop.v.v local._p
b [22]

:[37]
push.v arg.argument1
push.l 26
cmp.l.v EQ
bf [48]

:[38]
pushloc.v local._isAnotherDead
conv.v.b
bf [43]

:[39]
push.v builtin.charToCheck
dup.v 0 8
dup.v 0
push.v stacktop.is_dead_this_turn
callv.v 0
conv.v.b
not.b
bf [41]

:[40]
push.v builtin.charToCheck
dup.v 0 8
dup.v 0
push.v stacktop.is_alive
callv.v 0
conv.v.b
b [42]

:[41]
push.e 0

:[42]
b [44]

:[43]
push.e 0

:[44]
bf [46]

:[45]
push.v local._numberOfApplication
pushloc.v local._nbrAnotherDead
pushi.e 1
sub.i.v
add.v.v
pop.v.v local._numberOfApplication
b [47]

:[46]
exit.i

:[47]
b [87]

:[48]
push.v arg.argument1
push.l 28
cmp.l.v EQ
bt [50]

:[49]
push.v arg.argument1
push.l 27
cmp.l.v EQ
b [51]

:[50]
push.e 1

:[51]
bf [53]

:[52]
pushloc.v local._isDeadThisTurn
conv.v.b
not.b
b [54]

:[53]
push.e 0

:[54]
bf [57]

:[55]
exit.i

:[56]
b [87]

:[57]
push.v arg.argument1
push.l 9
cmp.l.v EQ
bf [59]

:[58]
pushloc.v local._isLeaving
conv.v.b
not.b
b [60]

:[59]
push.e 0

:[60]
bf [63]

:[61]
exit.i

:[62]
b [87]

:[63]
push.v arg.argument1
push.l 10
cmp.l.v EQ
bf [69]

:[64]
pushloc.v local._isAnotherLeaving
conv.v.b
not.b
bf [67]

:[65]
exit.i

:[66]
b [68]

:[67]
push.v local._numberOfApplication
pushloc.v local._nbrIsLeaving
pushi.e 1
sub.i.v
add.v.v
pop.v.v local._numberOfApplication

:[68]
b [87]

:[69]
push.v arg.argument1
push.l 11
cmp.l.v EQ
bf [71]

:[70]
pushloc.v local._isContinuing
conv.v.b
not.b
b [72]

:[71]
push.e 0

:[72]
bf [75]

:[73]
exit.i

:[74]
b [87]

:[75]
push.v arg.argument1
push.l 28
cmp.l.v NEQ
bf [81]

:[76]
push.v arg.argument1
push.l 27
cmp.l.v NEQ
bf [81]

:[77]
push.v arg.argument1
push.l 26
cmp.l.v NEQ
bf [81]

:[78]
push.v arg.argument1
push.l 9
cmp.l.v NEQ
bf [81]

:[79]
push.v arg.argument1
push.l 10
cmp.l.v NEQ
bf [81]

:[80]
push.v arg.argument1
push.l 11
cmp.l.v NEQ
b [82]

:[81]
push.e 0

:[82]
bf [84]

:[83]
push.v builtin.charToCheck
pushi.e -9
push.v [stacktop]self.hp
pushi.e 0
cmp.i.v LTE
b [85]

:[84]
push.e 0

:[85]
bf [87]

:[86]
exit.i

:[87]
pushglb.v global.fightManager
pushi.e -9
push.v [stacktop]self.state
push.l 1
cmp.l.v EQ
bf [91]

:[88]
push.v builtin.charToCheck
pushglb.v global.effect
pushi.e -9
push.v [stacktop]self.ladybug
dup.v 1 8
dup.v 0
push.v stacktop.effect_index
callv.v 1
pop.v.v local._hasLadybug
pushloc.v local._hasLadybug
pushi.e -1
cmp.i.v NEQ
bf [91]

:[89]
push.v builtin.charToCheck
pushloc.v local._hasLadybug
dup.v 1 8
dup.v 0
push.v stacktop.get_effect
callv.v 1
pop.v.v local._ladybug
pushloc.v local._ladybug
pushi.e -9
push.v [stacktop]self.stack
pushi.e 0
cmp.i.v GT
bf [91]

:[90]
push.v local._numberOfApplication
pushloc.v local._ladybug
pushi.e -9
push.v [stacktop]self.stack
pushloc.v local._ladybug
pushi.e -9
pushi.e 0
push.v [array]self.amount
mul.v.v
add.v.v
pop.v.v local._numberOfApplication

:[91]
pushi.e 0
pop.v.i local._j

:[92]
pushloc.v local._j
pushloc.v local._numberOfApplication
cmp.v.v LT
bf [96]

:[93]
push.v arg.argument2
push.v arg.argument0
b [95]

> gml_Script____struct___71@anon@2263@effect_execution_manager@effect_execution_loop (locals=0, argc=0)
:[94]
call.i @@SetStatic@@(argc=0)
pushi.e -15
pushi.e 0
push.v [array]self.argument
pop.v.v self.effect
pushi.e -15
pushi.e 1
push.v [array]self.argument
pop.v.v self.effectType
exit.i

:[95]
push.i [function]gml_Script____struct___71@anon@2263@effect_execution_manager@effect_execution_loop
conv.i.v
call.i @@NullObject@@(argc=0)
call.i method(argc=2)
dup.v 0
pop.v.v global.___struct___71
call.i @@NewGMLObject@@(argc=3)
push.v builtin.arrayInstEffects
call.i array_push(argc=2)
popz.v
push.v local._j
push.e 1
add.i.v
pop.v.v local._j
b [92]

:[96]
exit.i

:[97]
push.i [function]gml_Script_anon@2263@effect_execution_manager@effect_execution_loop
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
pop.v.v builtin.add_effect_to_loop
b [113]

> gml_Script_anon@5877@effect_execution_manager@effect_execution_loop (locals=3, argc=1)
:[98]
push.v builtin.allEffectsExecuted
conv.v.b
not.b
bf [100]

:[99]
pushglb.v global.waitingList
dup.v 0 8
dup.v 0
push.v stacktop.is_waiting_list_empty
callv.v 0
conv.v.b
b [101]

:[100]
push.e 0

:[101]
bf [112]

:[102]
push.v builtin.nbrCharToCheckPrev
push.v builtin.nbrCharToCheck
cmp.v.v NEQ
bf [104]

:[103]
push.v builtin.nbrCharToCheck
pop.v.v builtin.nbrCharToCheckPrev
push.v arg.argument0
call.i @@This@@(argc=0)
push.v builtin.define_effect_to_parse
callv.v 1
popz.v

:[104]
push.v builtin.indexEffectToCheck
push.v builtin.arrayInstEffectsLength
cmp.v.v LT
bf [111]

:[105]
push.v builtin.charToCheck
call.i instance_exists(argc=1)
conv.v.b
bf [110]

:[106]
pushi.e -1
push.v builtin.indexEffectToCheck
conv.v.i
push.v [array]self.arrayInstEffects
pushi.e -9
push.v [stacktop]self.effect
pop.v.v local._theEffect
pushi.e -1
push.v builtin.indexEffectToCheck
conv.v.i
push.v [array]self.arrayInstEffects
pushi.e -9
push.v [stacktop]self.effectType
pop.v.v local._theEffectType
pushloc.v local._theEffectType
push.l 1
cmp.l.v EQ
bf [108]

:[107]
push.v builtin.preCalculatedNbr
pushloc.v local._theEffectType
pushloc.v local._theEffect
push.v builtin.charToCheck
pushi.e -9
push.v [stacktop]self.token
push.v arg.argument0
push.v builtin.charToCheck
call.i gml_Script_execute_effect(argc=6)
popz.v
b [110]

:[108]
pushloc.v local._theEffect
call.i instance_exists(argc=1)
conv.v.b
bf [110]

:[109]
push.v builtin.preCalculatedNbr
pushloc.v local._theEffectType
pushloc.v local._theEffect
pushi.e -9
push.v [stacktop]self.theStruct
pushloc.v local._theEffect
push.v arg.argument0
push.v builtin.charToCheck
call.i gml_Script_execute_effect(argc=6)
popz.v

:[110]
push.v builtin.indexEffectToCheck
push.e 1
add.i.v
pop.v.v builtin.indexEffectToCheck
pushi.e 1
conv.i.v
push.v builtin.indexEffectToCheck
pushi.e 10
conv.i.d
div.d.v
call.i min(argc=2)
pop.v.v local._incrValue
pushi.e 3
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
pushloc.v local._incrValue
call.i gml_Script_map_value(argc=5)
pop.v.v global.vfxEffectSpeed
b [112]

:[111]
push.v arg.argument0
call.i @@This@@(argc=0)
push.v builtin.moveToNextCharacter
callv.v 1
popz.v

:[112]
exit.i

:[113]
push.i [function]gml_Script_anon@5877@effect_execution_manager@effect_execution_loop
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
pop.v.v builtin.loop
exit.i

:[114]
push.i [function]gml_Script_effect_execution_manager
conv.i.v
call.i @@NullObject@@(argc=0)
call.i method(argc=2)
dup.v 0
pop.v.v self.effect_execution_manager
popz.v
b [191]

> gml_Script_card_execution_manager (locals=0, argc=0)
:[115]
call.i @@SetStatic@@(argc=0)
pushi.e 0
pop.v.b builtin.allEffectsExecuted
pushi.e 0
pop.v.i builtin.nbrCharLinkedToCheck
pushi.e 0
pop.v.i builtin.indexEffectToCheck
call.i @@NewGMLArray@@(argc=0)
pop.v.v builtin.playersWithMostGem
pushi.e -1
pop.v.i builtin.amountPlayersWithMostGem
call.i @@NewGMLArray@@(argc=0)
pop.v.v builtin.playersWithMaxHp
pushi.e -1
pop.v.i builtin.amountPlayersWithMaxHp
call.i @@NewGMLArray@@(argc=0)
pop.v.v builtin.playersWithLeastHp
pushi.e -1
pop.v.i builtin.amountPlayersWithLeastHp
pushi.e -1
pop.v.i builtin.randomPlayerThatMadeChoice
b [162]

> gml_Script_anon@7954@card_execution_manager@effect_execution_loop (locals=5, argc=1)
:[116]
pushi.e 0
pop.v.b builtin.allEffectsExecuted
pushi.e 0
pop.v.i builtin.nbrCharLinkedToCheck
pushi.e 0
pop.v.i builtin.indexEffectToCheck
pushglb.v global.playersManager
pushi.e -15
push.v arg.argument0
call.i array_length(argc=1)
pushi.e 1
sub.i.v
pushglb.v global.rng
call.i gml_Script_minstd_int(argc=2)
conv.v.i
push.v [array]self.argument0
dup.v 1 8
dup.v 0
push.v stacktop.get_characters
callv.v 1
pushi.e -9
push.v [stacktop]self.number
pop.v.v builtin.randomPlayerThatMadeChoice
pushi.e 100
conv.i.v
pushglb.v global.rng
call.i gml_Script_minstd_int(argc=2)
pop.v.v builtin.nbrChanceCalculated
call.i @@NewGMLArray@@(argc=0)
pop.v.v builtin.playersWithMostGem
pushi.e -1
pop.v.i builtin.amountPlayersWithMostGem
call.i @@NewGMLArray@@(argc=0)
pop.v.v builtin.playersWithMaxHp
pushi.e -1
pop.v.i builtin.amountPlayersWithMaxHp
call.i @@NewGMLArray@@(argc=0)
pop.v.v builtin.playersWithLeastHp
pushi.e -1
pop.v.i builtin.amountPlayersWithLeastHp
call.i @@NewGMLArray@@(argc=0)
pop.v.v builtin.playersWithLeastLastDirectDamage
pushi.e -1
pop.v.i builtin.amountPlayersWithLeastLastDirectDamage
pushglb.v global.playersManager
dup.v 0 8
dup.v 0
push.v stacktop.get_characters
callv.v 0
pop.v.v local._fighters
pushi.e 0
pop.v.i local._p

:[117]
pushloc.v local._p
pushloc.v local._fighters
call.i gml_Script_get_size(argc=1)
cmp.v.v LT
bf [121]

:[118]
pushi.e -7
pushloc.v local._p
conv.v.i
push.v [array]self._fighters
dup.v 0 8
dup.v 0
push.v stacktop.is_alive
callv.v 0
conv.v.b
bf [120]

:[119]
pushi.e -7
pushloc.v local._p
conv.v.i
push.v [array]self._fighters
push.v builtin.playersWithMostGem
call.i array_push(argc=2)
popz.v
pushi.e -7
pushloc.v local._p
conv.v.i
push.v [array]self._fighters
push.v builtin.playersWithMaxHp
call.i array_push(argc=2)
popz.v
pushi.e -7
pushloc.v local._p
conv.v.i
push.v [array]self._fighters
push.v builtin.playersWithLeastHp
call.i array_push(argc=2)
popz.v
pushi.e -7
pushloc.v local._p
conv.v.i
push.v [array]self._fighters
push.v builtin.playersWithLeastLastDirectDamage
call.i array_push(argc=2)
popz.v

:[120]
push.v local._p
push.e 1
add.i.v
pop.v.v local._p
b [117]

:[121]
b [124]

> gml_Script_anon@9583@anon@7954@card_execution_manager@effect_execution_loop (locals=0, argc=2)
:[122]
push.v arg.argument1
dup.v 0 8
dup.v 0
push.v stacktop.get_gem
callv.v 0
push.v arg.argument0
dup.v 0 8
dup.v 0
push.v stacktop.get_gem
callv.v 0
sub.v.v
ret.v

:[123]
exit.i

:[124]
push.i [function]gml_Script_anon@9583@anon@7954@card_execution_manager@effect_execution_loop
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
push.v builtin.playersWithMostGem
call.i array_sort(argc=2)
popz.v
push.v builtin.playersWithMostGem
call.i array_length(argc=1)
pushi.e 1
sub.i.v
pop.v.v local._s

:[125]
pushloc.v local._s
pushi.e 0
cmp.i.v GTE
bf [129]

:[126]
pushi.e -1
pushloc.v local._s
conv.v.i
push.v [array]self.playersWithMostGem
dup.v 0 8
dup.v 0
push.v stacktop.get_gem
callv.v 0
pushi.e -1
pushi.e 0
push.v [array]self.playersWithMostGem
dup.v 0 8
dup.v 0
push.v stacktop.get_gem
callv.v 0
cmp.v.v LT
bf [128]

:[127]
pushi.e 1
conv.i.v
pushloc.v local._s
push.v builtin.playersWithMostGem
call.i array_delete(argc=3)
popz.v

:[128]
push.v local._s
push.e 1
sub.i.v
pop.v.v local._s
b [125]

:[129]
push.v builtin.playersWithMostGem
call.i array_length(argc=1)
pushi.e 0
cmp.i.v GT
bf [131]

:[130]
pushi.e -1
pushi.e 0
push.v [array]self.playersWithMostGem
dup.v 0 8
dup.v 0
push.v stacktop.get_gem
callv.v 0
pop.v.v builtin.amountPlayersWithMostGem

:[131]
b [134]

> gml_Script_anon@10147@anon@7954@card_execution_manager@effect_execution_loop (locals=0, argc=2)
:[132]
push.v arg.argument1
pushi.e -9
push.v [stacktop]self.hp
push.v arg.argument0
pushi.e -9
push.v [stacktop]self.hp
sub.v.v
ret.v

:[133]
exit.i

:[134]
push.i [function]gml_Script_anon@10147@anon@7954@card_execution_manager@effect_execution_loop
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
push.v builtin.playersWithMaxHp
call.i array_sort(argc=2)
popz.v
push.v builtin.playersWithMaxHp
call.i array_length(argc=1)
pushi.e 1
sub.i.v
pop.v.v local._q

:[135]
pushloc.v local._q
pushi.e 0
cmp.i.v GTE
bf [139]

:[136]
pushi.e -1
pushloc.v local._q
conv.v.i
push.v [array]self.playersWithMaxHp
pushi.e -9
push.v [stacktop]self.hp
pushi.e -1
pushi.e 0
push.v [array]self.playersWithMaxHp
pushi.e -9
push.v [stacktop]self.hp
cmp.v.v LT
bf [138]

:[137]
pushi.e 1
conv.i.v
pushloc.v local._q
push.v builtin.playersWithMaxHp
call.i array_delete(argc=3)
popz.v

:[138]
push.v local._q
push.e 1
sub.i.v
pop.v.v local._q
b [135]

:[139]
push.v builtin.playersWithMaxHp
call.i array_length(argc=1)
pushi.e 0
cmp.i.v GT
bf [141]

:[140]
pushi.e -1
pushi.e 0
push.v [array]self.playersWithMaxHp
pushi.e -9
push.v [stacktop]self.hp
pop.v.v builtin.amountPlayersWithMaxHp

:[141]
b [144]

> gml_Script_anon@10670@anon@7954@card_execution_manager@effect_execution_loop (locals=0, argc=2)
:[142]
push.v arg.argument0
pushi.e -9
push.v [stacktop]self.hp
push.v arg.argument1
pushi.e -9
push.v [stacktop]self.hp
sub.v.v
ret.v

:[143]
exit.i

:[144]
push.i [function]gml_Script_anon@10670@anon@7954@card_execution_manager@effect_execution_loop
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
push.v builtin.playersWithLeastHp
call.i array_sort(argc=2)
popz.v
push.v builtin.playersWithLeastHp
call.i array_length(argc=1)
pushi.e 1
sub.i.v
pop.v.v local._r

:[145]
pushloc.v local._r
pushi.e 0
cmp.i.v GTE
bf [149]

:[146]
pushi.e -1
pushloc.v local._r
conv.v.i
push.v [array]self.playersWithLeastHp
pushi.e -9
push.v [stacktop]self.hp
pushi.e -1
pushi.e 0
push.v [array]self.playersWithLeastHp
pushi.e -9
push.v [stacktop]self.hp
cmp.v.v GT
bf [148]

:[147]
pushi.e 1
conv.i.v
pushloc.v local._r
push.v builtin.playersWithLeastHp
call.i array_delete(argc=3)
popz.v

:[148]
push.v local._r
push.e 1
sub.i.v
pop.v.v local._r
b [145]

:[149]
push.v builtin.playersWithLeastHp
call.i array_length(argc=1)
pushi.e 0
cmp.i.v GT
bf [151]

:[150]
pushi.e -1
pushi.e 0
push.v [array]self.playersWithLeastHp
pushi.e -9
push.v [stacktop]self.hp
pop.v.v builtin.amountPlayersWithLeastHp

:[151]
b [154]

> gml_Script_anon@11237@anon@7954@card_execution_manager@effect_execution_loop (locals=0, argc=2)
:[152]
push.v arg.argument0
pushi.e -9
push.v [stacktop]self.lastDirectDamage
push.v arg.argument1
pushi.e -9
push.v [stacktop]self.lastDirectDamage
sub.v.v
ret.v

:[153]
exit.i

:[154]
push.i [function]gml_Script_anon@11237@anon@7954@card_execution_manager@effect_execution_loop
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
push.v builtin.playersWithLeastLastDirectDamage
call.i array_sort(argc=2)
popz.v
push.v builtin.playersWithLeastLastDirectDamage
call.i array_length(argc=1)
pushi.e 1
sub.i.v
pop.v.v local._s

:[155]
pushloc.v local._s
pushi.e 0
cmp.i.v GTE
bf [159]

:[156]
pushi.e -1
pushloc.v local._s
conv.v.i
push.v [array]self.playersWithLeastLastDirectDamage
pushi.e -9
push.v [stacktop]self.lastDirectDamage
pushi.e -1
pushi.e 0
push.v [array]self.playersWithLeastLastDirectDamage
pushi.e -9
push.v [stacktop]self.lastDirectDamage
cmp.v.v GT
bf [158]

:[157]
pushi.e 1
conv.i.v
pushloc.v local._s
push.v builtin.playersWithLeastLastDirectDamage
call.i array_delete(argc=3)
popz.v

:[158]
push.v local._s
push.e 1
sub.i.v
pop.v.v local._s
b [155]

:[159]
push.v builtin.playersWithLeastLastDirectDamage
call.i array_length(argc=1)
pushi.e 0
cmp.i.v GT
bf [161]

:[160]
pushi.e -1
pushi.e 0
push.v [array]self.playersWithLeastLastDirectDamage
pushi.e -9
push.v [stacktop]self.lastDirectDamage
pop.v.v builtin.amountPlayersWithLeastLastDirectDamage

:[161]
exit.i

:[162]
push.i [function]gml_Script_anon@7954@card_execution_manager@effect_execution_loop
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
pop.v.v builtin.reset
b [165]

> gml_Script_anon@11975@card_execution_manager@effect_execution_loop (locals=0, argc=0)
:[163]
push.v builtin.allEffectsExecuted
ret.v

:[164]
exit.i

:[165]
push.i [function]gml_Script_anon@11975@card_execution_manager@effect_execution_loop
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
pop.v.v builtin.is_finished
b [169]

> gml_Script_anon@12060@card_execution_manager@effect_execution_loop (locals=0, argc=1)
:[166]
push.v builtin.nbrCharLinkedToCheck
push.e 1
add.i.v
pop.v.v builtin.nbrCharLinkedToCheck
pushi.e 0
pop.v.i builtin.indexEffectToCheck
pushi.e 100
conv.i.v
pushglb.v global.rng
call.i gml_Script_minstd_int(argc=2)
pop.v.v builtin.nbrChanceCalculated
push.v builtin.nbrCharLinkedToCheck
push.v arg.argument0
call.i gml_Script_get_size(argc=1)
cmp.v.v GTE
bf [168]

:[167]
pushi.e 1
pop.v.b builtin.allEffectsExecuted

:[168]
exit.i

:[169]
push.i [function]gml_Script_anon@12060@card_execution_manager@effect_execution_loop
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
pop.v.v builtin.moveToNextCharacter
b [190]

> gml_Script_anon@12496@card_execution_manager@effect_execution_loop (locals=3, argc=2)
:[170]
push.v builtin.allEffectsExecuted
pushi.e 0
cmp.b.v EQ
bf [172]

:[171]
pushglb.v global.waitingList
dup.v 0 8
dup.v 0
push.v stacktop.is_waiting_list_empty
callv.v 0
conv.v.b
b [173]

:[172]
push.e 0

:[173]
bf [189]

:[174]
pushglb.v global.playersManager
pushi.e -15
push.v builtin.nbrCharLinkedToCheck
conv.v.i
push.v [array]self.argument1
dup.v 1 8
dup.v 0
push.v stacktop.get_characters
callv.v 1
pop.v.v local._charToCheck
call.i @@NewGMLArray@@(argc=0)
pop.v.v local._charLinked
pushi.e 0
pop.v.i local._lc

:[175]
pushloc.v local._lc
push.v arg.argument1
call.i array_length(argc=1)
cmp.v.v LT
bf [179]

:[176]
pushglb.v global.playersManager
pushi.e -15
pushloc.v local._lc
conv.v.i
push.v [array]self.argument1
dup.v 1 8
dup.v 0
push.v stacktop.get_characters
callv.v 1
pushi.e -4
cmp.i.v NEQ
bf [178]

:[177]
pushglb.v global.playersManager
pushi.e -15
pushloc.v local._lc
conv.v.i
push.v [array]self.argument1
dup.v 1 8
dup.v 0
push.v stacktop.get_characters
callv.v 1
pushloc.v local._charLinked
call.i array_push(argc=2)
popz.v

:[178]
push.v local._lc
push.e 1
add.i.v
pop.v.v local._lc
b [175]

:[179]
pushloc.v local._charToCheck
pushi.e -4
cmp.i.v NEQ
bf [182]

:[180]
pushloc.v local._charToCheck
call.i instance_exists(argc=1)
conv.v.b
bf [182]

:[181]
pushloc.v local._charLinked
call.i array_length(argc=1)
pushi.e 0
cmp.i.v GT
b [183]

:[182]
push.e 0

:[183]
bf [188]

:[184]
push.v builtin.indexEffectToCheck
push.v arg.argument0
pushi.e -9
push.v [stacktop]self.item
pushi.e -9
push.v [stacktop]self.actionType
call.i gml_Script_get_size(argc=1)
cmp.v.v LT
bf [186]

:[185]
push.v builtin.nbrChanceCalculated
push.v builtin.indexEffectToCheck
push.v arg.argument0
pushi.e -9
push.v [stacktop]self.item
pushloc.v local._charLinked
pushloc.v local._charToCheck
push.v arg.argument0
call.i gml_Script_execute_card(argc=6)
popz.v
push.v builtin.indexEffectToCheck
push.e 1
add.i.v
pop.v.v builtin.indexEffectToCheck
b [187]

:[186]
push.v arg.argument1
call.i @@This@@(argc=0)
push.v builtin.moveToNextCharacter
callv.v 1
popz.v

:[187]
b [189]

:[188]
push.v arg.argument1
call.i @@This@@(argc=0)
push.v builtin.moveToNextCharacter
callv.v 1
popz.v

:[189]
exit.i

:[190]
push.i [function]gml_Script_anon@12496@card_execution_manager@effect_execution_loop
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
pop.v.v builtin.loop
exit.i

:[191]
push.i [function]gml_Script_card_execution_manager
conv.i.v
call.i @@NullObject@@(argc=0)
call.i method(argc=2)
dup.v 0
pop.v.v self.card_execution_manager
popz.v
b [241]

> gml_Script_door_execution_manager (locals=0, argc=0)
:[192]
call.i @@SetStatic@@(argc=0)
pushi.e 0
pop.v.b builtin.allCharChecked
call.i @@NewGMLArray@@(argc=0)
pop.v.v builtin.nbrCharToCheckList
push.d 0.5
conv.d.v
pushi.e -4
conv.i.v
push.i [function]gml_Script_myTimer
conv.i.v
call.i @@NewGMLObject@@(argc=3)
pop.v.v builtin.timerExecuteEffect
pushi.e 0
pop.v.i builtin.nbrCharToCheck
b [194]

> gml_Script_anon@14230@door_execution_manager@effect_execution_loop (locals=0, argc=0)
:[193]
push.v builtin.timerExecuteEffect
dup.v 0 8
dup.v 0
push.v stacktop.reset
callv.v 0
popz.v
pushi.e 0
pop.v.b builtin.allCharChecked
call.i @@NewGMLArray@@(argc=0)
pop.v.v builtin.nbrCharToCheckList
pushi.e 0
pop.v.i builtin.nbrCharToCheck
exit.i

:[194]
push.i [function]gml_Script_anon@14230@door_execution_manager@effect_execution_loop
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
pop.v.v builtin.reset
b [210]

> gml_Script_anon@14417@door_execution_manager@effect_execution_loop (locals=2, argc=1)
:[195]
call.i @@NewGMLArray@@(argc=0)
pop.v.v builtin.nbrCharToCheckList
pushi.e 0
pop.v.i local._p

:[196]
pushloc.v local._p
pushglb.v global.playersCount
cmp.v.v LT
bf [209]

:[197]
pushglb.v global.playersManager
pushloc.v local._p
dup.v 1 8
dup.v 0
push.v stacktop.get_characters
callv.v 1
pop.v.v local._char
pushloc.v local._char
pushi.e -4
cmp.i.v NEQ
bf [208]

:[198]
pushglb.v global.playersManager
pushloc.v local._p
dup.v 1 8
dup.v 0
push.v stacktop.is_leaving
callv.v 1
conv.v.b
bf [200]

:[199]
push.v arg.argument0
push.l 10
cmp.l.v EQ
b [201]

:[200]
push.e 0

:[201]
bf [203]

:[202]
pushloc.v local._p
push.v builtin.nbrCharToCheckList
call.i array_push(argc=2)
popz.v
b [208]

:[203]
pushglb.v global.playersManager
pushloc.v local._p
dup.v 1 8
dup.v 0
push.v stacktop.is_staying
callv.v 1
conv.v.b
bf [205]

:[204]
push.v arg.argument0
push.l 11
cmp.l.v EQ
b [206]

:[205]
push.e 0

:[206]
bf [208]

:[207]
pushloc.v local._p
push.v builtin.nbrCharToCheckList
call.i array_push(argc=2)
popz.v

:[208]
push.v local._p
push.e 1
add.i.v
pop.v.v local._p
b [196]

:[209]
exit.i

:[210]
push.i [function]gml_Script_anon@14417@door_execution_manager@effect_execution_loop
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
pop.v.v builtin.define_char_to_activate
b [213]

> gml_Script_anon@15139@door_execution_manager@effect_execution_loop (locals=0, argc=0)
:[211]
push.v builtin.allCharChecked
ret.v

:[212]
exit.i

:[213]
push.i [function]gml_Script_anon@15139@door_execution_manager@effect_execution_loop
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
pop.v.v builtin.is_finished
b [215]

> gml_Script_anon@15220@door_execution_manager@effect_execution_loop (locals=0, argc=0)
:[214]
push.v builtin.nbrCharToCheck
push.e 1
add.i.v
pop.v.v builtin.nbrCharToCheck
push.v builtin.timerExecuteEffect
dup.v 0 8
dup.v 0
push.v stacktop.reset
callv.v 0
popz.v
push.v builtin.timerExecuteEffect
dup.v 0 8
dup.v 0
push.v stacktop.run
callv.v 0
popz.v
exit.i

:[215]
push.i [function]gml_Script_anon@15220@door_execution_manager@effect_execution_loop
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
pop.v.v builtin.moveToNextCharacter
b [240]

> gml_Script_anon@15525@door_execution_manager@effect_execution_loop (locals=2, argc=1)
:[216]
push.v builtin.allCharChecked
conv.v.b
not.b
bf [221]

:[217]
push.v builtin.timerExecuteEffect
dup.v 0 8
dup.v 0
push.v stacktop.is_finished
callv.v 0
conv.v.b
bt [219]

:[218]
push.v builtin.nbrCharToCheck
pushi.e 0
cmp.i.v EQ
b [220]

:[219]
push.e 1

:[220]
b [222]

:[221]
push.e 0

:[222]
bf [239]

:[223]
push.v builtin.nbrCharToCheck
pushi.e 0
cmp.i.v EQ
bf [225]

:[224]
push.v arg.argument0
call.i @@This@@(argc=0)
push.v builtin.define_char_to_activate
callv.v 1
popz.v

:[225]
push.v builtin.nbrCharToCheckList
call.i array_length(argc=1)
pushi.e 0
cmp.i.v NEQ
bf [238]

:[226]
pushi.e -6
push.v builtin.nbrCharToCheck
conv.v.i
push.v [array]self.nbrCharToCheckList
pop.v.v local._charNumber
pushglb.v global.playersManager
pushloc.v local._charNumber
dup.v 1 8
dup.v 0
push.v stacktop.get_characters
callv.v 1
pop.v.v local._char
pushloc.v local._char
pushi.e -4
cmp.i.v NEQ
bf [228]

:[227]
pushloc.v local._char
call.i instance_exists(argc=1)
conv.v.b
b [229]

:[228]
push.e 0

:[229]
bf [234]

:[230]
push.v arg.argument0
push.l 10
cmp.l.v EQ
bf [232]

:[231]
pushloc.v local._charNumber
push.l 1
conv.l.v
pushloc.v local._charNumber
push.l 0
conv.l.v
pushloc.v local._char
pushi.e -9
push.v [stacktop]self.gem
pushbltn.v builtin.undefined
pushbltn.v builtin.undefined
pushbltn.v builtin.undefined
pushbltn.v builtin.undefined
call.i gml_Script_g_exchange_gem(argc=9)
popz.v
push.l 3
pushloc.v local._char
pushi.e -9
pop.v.l [stacktop]self.stateNext
b [234]

:[232]
push.v arg.argument0
push.l 11
cmp.l.v EQ
bf [234]

:[233]
pushloc.v local._charNumber
push.l 0
conv.l.v
pushbltn.v builtin.undefined
push.l 2
conv.l.v
pushglb.v global.loopManager
dup.v 0 8
dup.v 0
push.v stacktop.get_gem_reward
callv.v 0
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushloc.v local._char
pushi.e -9
push.v [stacktop]self.token
pushi.e -9
push.v [stacktop]self.yDraw
pushloc.v local._char
pushi.e -9
push.v [stacktop]self.token
pushi.e -9
push.v [stacktop]self.xDraw
call.i gml_Script_g_exchange_gem(argc=9)
popz.v

:[234]
push.v builtin.nbrCharToCheck
push.v builtin.nbrCharToCheckList
call.i array_length(argc=1)
pushi.e 1
sub.i.v
cmp.v.v GTE
bf [236]

:[235]
pushi.e 1
pop.v.b builtin.allCharChecked
b [237]

:[236]
call.i @@This@@(argc=0)
push.v builtin.moveToNextCharacter
callv.v 0
popz.v

:[237]
b [239]

:[238]
pushi.e 1
pop.v.b builtin.allCharChecked

:[239]
exit.i

:[240]
push.i [function]gml_Script_anon@15525@door_execution_manager@effect_execution_loop
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
pop.v.v builtin.loop
exit.i

:[241]
push.i [function]gml_Script_door_execution_manager
conv.i.v
call.i @@NullObject@@(argc=0)
call.i method(argc=2)
dup.v 0
pop.v.v self.door_execution_manager
popz.v
b [288]

> gml_Script_token_execution_manager (locals=0, argc=0)
:[242]
call.i @@SetStatic@@(argc=0)
push.d 0.41
conv.d.v
pushi.e -4
conv.i.v
push.i [function]gml_Script_myTimer
conv.i.v
call.i @@NewGMLObject@@(argc=3)
pop.v.v builtin.throwWaveTimer
pushi.e 0
pop.v.b builtin.allTokenThrow
call.i @@NewGMLArray@@(argc=0)
call.i @@NewGMLArray@@(argc=0)
call.i @@NewGMLArray@@(argc=0)
call.i @@NewGMLArray@@(argc=0)
call.i @@NewGMLArray@@(argc=4)
pop.v.v builtin.tokenList
pushi.e 0
pop.v.i builtin.tokenListCounter
b [272]

> gml_Script_anon@17975@token_execution_manager@effect_execution_loop (locals=3, argc=0)
:[243]
push.v builtin.throwWaveTimer
dup.v 0 8
dup.v 0
push.v stacktop.reset
callv.v 0
popz.v
pushi.e 0
pop.v.b builtin.allTokenThrow
call.i @@NewGMLArray@@(argc=0)
call.i @@NewGMLArray@@(argc=0)
call.i @@NewGMLArray@@(argc=0)
call.i @@NewGMLArray@@(argc=0)
call.i @@NewGMLArray@@(argc=4)
pop.v.v builtin.tokenList
pushi.e 0
pop.v.i builtin.tokenListCounter
pushglb.v global.playersManager
dup.v 0 8
dup.v 0
push.v stacktop.get_characters
callv.v 0
pop.v.v local._fighters
pushi.e 0
pop.v.i local._f

:[244]
pushloc.v local._f
pushloc.v local._fighters
call.i gml_Script_get_size(argc=1)
cmp.v.v LT
bf [263]

:[245]
pushi.e -7
pushloc.v local._f
conv.v.i
push.v [array]self._fighters
call.i instance_exists(argc=1)
conv.v.b
bf [262]

:[246]
pushglb.v global.playersManager
pushi.e -7
pushloc.v local._f
conv.v.i
push.v [array]self._fighters
pushi.e -9
push.v [stacktop]self.number
dup.v 1 8
dup.v 0
push.v stacktop.has_acted
callv.v 1
conv.v.b
bf [248]

:[247]
pushi.e -7
pushloc.v local._f
conv.v.i
push.v [array]self._fighters
pushi.e -9
push.v [stacktop]self.token
pushi.e -9
push.v [stacktop]self.state
push.l 2
cmp.l.v NEQ
b [249]

:[248]
push.e 0

:[249]
bf [262]

:[250]
pushglb.v global.playersManager
pushi.e -7
pushloc.v local._f
conv.v.i
push.v [array]self._fighters
pushi.e -9
push.v [stacktop]self.number
dup.v 1 8
dup.v 0
push.v stacktop.get_action
callv.v 1
push.l 3
cmp.l.v EQ
bf [252]

:[251]
pushi.e -7
pushloc.v local._f
conv.v.i
push.v [array]self._fighters
pushi.e -9
push.v [stacktop]self.token
pushi.e -6
pushi.e 0
push.v [array]self.tokenList
call.i array_push(argc=2)
popz.v
b [262]

:[252]
pushglb.v global.playersManager
pushi.e -7
pushloc.v local._f
conv.v.i
push.v [array]self._fighters
pushi.e -9
push.v [stacktop]self.number
dup.v 1 8
dup.v 0
push.v stacktop.get_action
callv.v 1
push.l 4
cmp.l.v EQ
bf [254]

:[253]
pushi.e -7
pushloc.v local._f
conv.v.i
push.v [array]self._fighters
pushi.e -9
push.v [stacktop]self.token
pushi.e -6
pushi.e 1
push.v [array]self.tokenList
call.i array_push(argc=2)
popz.v
b [262]

:[254]
pushglb.v global.playersManager
pushi.e -7
pushloc.v local._f
conv.v.i
push.v [array]self._fighters
pushi.e -9
push.v [stacktop]self.number
dup.v 1 8
dup.v 0
push.v stacktop.get_action
callv.v 1
push.l 5
cmp.l.v EQ
bf [256]

:[255]
pushi.e -7
pushloc.v local._f
conv.v.i
push.v [array]self._fighters
pushi.e -9
push.v [stacktop]self.token
pushi.e -6
pushi.e 2
push.v [array]self.tokenList
call.i array_push(argc=2)
popz.v
b [262]

:[256]
pushglb.v global.playersManager
pushi.e -7
pushloc.v local._f
conv.v.i
push.v [array]self._fighters
pushi.e -9
push.v [stacktop]self.number
dup.v 1 8
dup.v 0
push.v stacktop.get_action
callv.v 1
push.l 6
cmp.l.v EQ
bf [258]

:[257]
pushi.e -7
pushloc.v local._f
conv.v.i
push.v [array]self._fighters
pushi.e -9
push.v [stacktop]self.token
pushi.e -6
pushi.e 3
push.v [array]self.tokenList
call.i array_push(argc=2)
popz.v
b [262]

:[258]
pushglb.v global.playersManager
pushi.e -7
pushloc.v local._f
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
bf [260]

:[259]
pushi.e -7
pushloc.v local._f
conv.v.i
push.v [array]self._fighters
pushi.e -9
push.v [stacktop]self.token
pushi.e -6
pushi.e 3
push.v [array]self.tokenList
call.i array_push(argc=2)
popz.v
b [262]

:[260]
pushglb.v global.playersManager
pushi.e -7
pushloc.v local._f
conv.v.i
push.v [array]self._fighters
pushi.e -9
push.v [stacktop]self.number
dup.v 1 8
dup.v 0
push.v stacktop.get_action
callv.v 1
push.l 2
cmp.l.v EQ
bf [262]

:[261]
pushi.e -7
pushloc.v local._f
conv.v.i
push.v [array]self._fighters
pushi.e -9
push.v [stacktop]self.token
pushi.e -6
pushi.e 3
push.v [array]self.tokenList
call.i array_push(argc=2)
popz.v

:[262]
push.v local._f
push.e 1
add.i.v
pop.v.v local._f
b [244]

:[263]
push.v builtin.tokenList
call.i array_length(argc=1)
pushi.e 1
sub.i.v
pop.v.v local._i

:[264]
pushloc.v local._i
pushi.e 0
cmp.i.v GTE
bf [268]

:[265]
pushi.e -6
pushloc.v local._i
conv.v.i
push.v [array]self.tokenList
call.i array_length(argc=1)
pushi.e 0
cmp.i.v EQ
bf [267]

:[266]
pushi.e 1
conv.i.v
pushloc.v local._i
push.v builtin.tokenList
call.i array_delete(argc=3)
popz.v

:[267]
push.v local._i
push.e 1
sub.i.v
pop.v.v local._i
b [264]

:[268]
push.v builtin.tokenList
call.i array_length(argc=1)
pushi.e 0
cmp.i.v GT
bf [270]

:[269]
push.v builtin.throwWaveTimer
dup.v 0 8
dup.v 0
push.v stacktop.run
callv.v 0
popz.v
b [271]

:[270]
pushi.e 1
pop.v.b builtin.allTokenThrow

:[271]
exit.i

:[272]
push.i [function]gml_Script_anon@17975@token_execution_manager@effect_execution_loop
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
pop.v.v builtin.reset
b [275]

> gml_Script_anon@20115@token_execution_manager@effect_execution_loop (locals=0, argc=0)
:[273]
push.v builtin.allTokenThrow
ret.v

:[274]
exit.i

:[275]
push.i [function]gml_Script_anon@20115@token_execution_manager@effect_execution_loop
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
pop.v.v builtin.is_finished
b [287]

> gml_Script_anon@20293@token_execution_manager@effect_execution_loop (locals=1, argc=1)
:[276]
call.i @@This@@(argc=0)
push.v builtin.is_finished
callv.v 0
conv.v.b
not.b
bf [278]

:[277]
push.v builtin.throwWaveTimer
dup.v 0 8
dup.v 0
push.v stacktop.is_finished
callv.v 0
conv.v.b
b [279]

:[278]
push.e 0

:[279]
bf [286]

:[280]
pushi.e 0
pop.v.i local._i

:[281]
pushloc.v local._i
pushi.e -6
push.v builtin.tokenListCounter
conv.v.i
push.v [array]self.tokenList
call.i array_length(argc=1)
cmp.v.v LT
bf [283]

:[282]
pushi.e -1
push.v builtin.tokenListCounter
conv.v.i
push.v [arraypushaf]self.tokenList
pushloc.v local._i
conv.v.i
pushaf.e
dup.v 0 8
dup.v 0
push.v stacktop.throw_it
callv.v 0
popz.v
push.v local._i
push.e 1
add.i.v
pop.v.v local._i
b [281]

:[283]
push.v builtin.tokenListCounter
push.e 1
add.i.v
pop.v.v builtin.tokenListCounter
push.v builtin.tokenListCounter
push.v builtin.tokenList
call.i array_length(argc=1)
pushi.e 1
sub.i.v
cmp.v.v GT
bf [285]

:[284]
pushi.e 1
pop.v.b builtin.allTokenThrow
b [286]

:[285]
push.v builtin.throwWaveTimer
dup.v 0 8
dup.v 0
push.v stacktop.reset
callv.v 0
popz.v
push.v builtin.throwWaveTimer
dup.v 0 8
dup.v 0
push.v stacktop.run
callv.v 0
popz.v

:[286]
exit.i

:[287]
push.i [function]gml_Script_anon@20293@token_execution_manager@effect_execution_loop
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
pop.v.v builtin.loop
exit.i

:[288]
push.i [function]gml_Script_token_execution_manager
conv.i.v
call.i @@NullObject@@(argc=0)
call.i method(argc=2)
dup.v 0
pop.v.v self.token_execution_manager
popz.v
b [341]

> gml_Script_death_execution_manager (locals=0, argc=0)
:[289]
call.i @@SetStatic@@(argc=0)
pushi.e 0
pop.v.b builtin.waitForTimer
pushi.e 0
pop.v.b builtin.allCharChecked
pushi.e 0
pop.v.i builtin.nbrCharToCheck
push.d 0.4
conv.d.v
pushi.e -4
conv.i.v
push.i [function]gml_Script_myTimer
conv.i.v
call.i @@NewGMLObject@@(argc=3)
pop.v.v builtin.timerExecuteEffect
pushbltn.v builtin.undefined
pop.v.v builtin.stateAfterDeath
b [291]

> gml_Script_anon@21363@death_execution_manager@effect_execution_loop (locals=0, argc=0)
:[290]
pushi.e 0
pop.v.b builtin.waitForTimer
push.v builtin.timerExecuteEffect
dup.v 0 8
dup.v 0
push.v stacktop.reset
callv.v 0
popz.v
pushi.e 0
pop.v.b builtin.allCharChecked
pushi.e 0
pop.v.i builtin.nbrCharToCheck
exit.i

:[291]
push.i [function]gml_Script_anon@21363@death_execution_manager@effect_execution_loop
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
pop.v.v builtin.reset
b [294]

> gml_Script_anon@21625@death_execution_manager@effect_execution_loop (locals=0, argc=0)
:[292]
push.v builtin.allCharChecked
ret.v

:[293]
exit.i

:[294]
push.i [function]gml_Script_anon@21625@death_execution_manager@effect_execution_loop
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
pop.v.v builtin.is_finished
b [315]

> gml_Script_anon@22071@death_execution_manager@effect_execution_loop (locals=3, argc=2)
:[295]
pushbltn.v builtin.argument1
pushbltn.v builtin.undefined
cmp.v.v EQ
bf [297]

:[296]
push.l 0
pop.v.l builtin.argument1

:[297]
pushi.e 0
pop.v.b local._activateDeathState
pushi.e 0
pop.v.i local._p

:[298]
pushloc.v local._p
pushglb.v global.playersCount
cmp.v.v LT
bf [307]

:[299]
pushglb.v global.playersManager
pushloc.v local._p
dup.v 1 8
dup.v 0
push.v stacktop.get_characters
callv.v 1
pop.v.v local._char
pushloc.v local._char
pushi.e -4
cmp.i.v NEQ
bf [303]

:[300]
pushloc.v local._char
call.i instance_exists(argc=1)
conv.v.b
bf [303]

:[301]
pushloc.v local._char
dup.v 0 8
dup.v 0
push.v stacktop.is_alive
callv.v 0
conv.v.b
bf [303]

:[302]
pushloc.v local._char
pushi.e -9
push.v [stacktop]self.hp
pushi.e 0
cmp.i.v LTE
b [304]

:[303]
push.e 0

:[304]
bf [306]

:[305]
pushi.e 1
pop.v.b local._activateDeathState
pushi.e 1
pushloc.v local._char
pushi.e -9
pop.v.b [stacktop]self.isDeadThisTurn

:[306]
push.v local._p
push.e 1
add.i.v
pop.v.v local._p
b [298]

:[307]
pushloc.v local._activateDeathState
conv.v.b
bf [313]

:[308]
push.v arg.argument0
pop.v.v builtin.stateAfterDeath
push.v arg.argument1
push.l 1
cmp.l.v EQ
bf [311]

:[309]
push.l 13
conv.l.v
ret.v

:[310]
b [312]

:[311]
push.l 20
conv.l.v
ret.v

:[312]
b [314]

:[313]
push.v arg.argument0
ret.v

:[314]
exit.i

:[315]
push.i [function]gml_Script_anon@22071@death_execution_manager@effect_execution_loop
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
pop.v.v builtin.check_death_state
b [340]

> gml_Script_anon@23103@death_execution_manager@effect_execution_loop (locals=1, argc=0)
:[316]
push.v builtin.allCharChecked
conv.v.b
not.b
bf [322]

:[317]
push.v builtin.timerExecuteEffect
dup.v 0 8
dup.v 0
push.v stacktop.is_finished
callv.v 0
conv.v.b
bt [319]

:[318]
push.v builtin.waitForTimer
conv.v.b
not.b
b [320]

:[319]
push.e 1

:[320]
bf [322]

:[321]
pushglb.v global.waitingList
dup.v 0 8
dup.v 0
push.v stacktop.is_waiting_list_empty
callv.v 0
conv.v.b
b [323]

:[322]
push.e 0

:[323]
bf [339]

:[324]
pushglb.v global.playersManager
push.v builtin.nbrCharToCheck
dup.v 1 8
dup.v 0
push.v stacktop.get_characters
callv.v 1
pop.v.v local._char
pushi.e 0
pop.v.b builtin.waitForTimer
pushloc.v local._char
pushi.e -4
cmp.i.v NEQ
bf [327]

:[325]
pushloc.v local._char
call.i instance_exists(argc=1)
conv.v.b
bf [327]

:[326]
pushloc.v local._char
dup.v 0 8
dup.v 0
push.v stacktop.is_dead_this_turn
callv.v 0
conv.v.b
b [328]

:[327]
push.e 0

:[328]
bf [332]

:[329]
push.l 2
pushloc.v local._char
pushi.e -9
pop.v.l [stacktop]self.stateNext
pushloc.v local._char
pushi.e -9
push.v [stacktop]self.token
pushi.e -9
push.v [stacktop]self.theType
push.l 17
cmp.l.v NEQ
bf [331]

:[330]
pushi.e 0
pushloc.v local._char
pushi.e -9
pop.v.b [stacktop]self.isInFight

:[331]
pushi.e 0
pushloc.v local._char
pushi.e -9
pop.v.b [stacktop]self.isAlive
pushi.e 1
pop.v.b builtin.waitForTimer

:[332]
push.v builtin.nbrCharToCheck
push.e 1
add.i.v
pop.v.v builtin.nbrCharToCheck
push.v builtin.nbrCharToCheck
pushglb.v global.playersCount
cmp.v.v GTE
bf [334]

:[333]
pushi.e 1
pop.v.b builtin.allCharChecked

:[334]
push.v builtin.allCharChecked
pushi.e 0
cmp.b.v EQ
bf [336]

:[335]
push.v builtin.waitForTimer
conv.v.b
b [337]

:[336]
push.e 0

:[337]
bf [339]

:[338]
push.v builtin.timerExecuteEffect
dup.v 0 8
dup.v 0
push.v stacktop.reset
callv.v 0
popz.v
push.v builtin.timerExecuteEffect
dup.v 0 8
dup.v 0
push.v stacktop.run
callv.v 0
popz.v

:[339]
exit.i

:[340]
push.i [function]gml_Script_anon@23103@death_execution_manager@effect_execution_loop
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
pop.v.v builtin.loop
exit.i

:[341]
push.i [function]gml_Script_death_execution_manager
conv.i.v
call.i @@NullObject@@(argc=0)
call.i method(argc=2)
dup.v 0
pop.v.v self.death_execution_manager
popz.v

:[end]