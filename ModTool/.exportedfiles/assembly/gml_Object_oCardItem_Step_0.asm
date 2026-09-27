; WARNING: Missing code locals, possibly due to unsupported bytecode version or a brand new code entry.

:[0]
call.i event_inherited(argc=0)
popz.v
push.v builtin.wiggle
dup.v 0 8
dup.v 0
push.v stacktop.step
callv.v 0
popz.v
call.i @@This@@(argc=0)
push.v builtin.is_hover_enter
callv.v 0
conv.v.b
bf [2]

:[1]
push.v builtin.wiggle
dup.v 0 8
dup.v 0
push.v stacktop.run
callv.v 0
popz.v

:[2]
push.v builtin.cardNumber
pushi.e 1
sub.i.v
pushbltn.v builtin.current_time
push.d 0.002
mul.d.v
add.v.v
call.i cos(argc=1)
pop.v.v builtin.offsetJiggleItemY
push.v builtin.cardNumber
pushbltn.v builtin.current_time
push.d 0.002
mul.d.v
add.v.v
call.i cos(argc=1)
pushi.e 2
mul.i.v
pop.v.v builtin.offsetJiggleY
push.v builtin.yTo
push.v builtin.offsetJiggleY
add.v.v
push.v builtin.offsetMoveUpY
add.v.v
pop.v.v builtin.y
push.v builtin.xTo
pop.v.v builtin.x
pushi.e 0
pop.v.i local._angleTo
push.v builtin.state
dup.v 0
push.l 0
cmp.l.v EQ
bt [13]

:[3]
dup.v 0
push.l 1
cmp.l.v EQ
bt [14]

:[4]
dup.v 0
push.l 3
cmp.l.v EQ
bt [53]

:[5]
dup.v 0
push.l 6
cmp.l.v EQ
bt [59]

:[6]
dup.v 0
push.l 10
cmp.l.v EQ
bt [59]

:[7]
dup.v 0
push.l 7
cmp.l.v EQ
bt [68]

:[8]
dup.v 0
push.l 9
cmp.l.v EQ
bt [83]

:[9]
dup.v 0
push.l 4
cmp.l.v EQ
bt [90]

:[10]
dup.v 0
push.l 11
cmp.l.v EQ
bt [93]

:[11]
dup.v 0
push.l 5
cmp.l.v EQ
bt [103]

:[12]
b [115]

:[13]
b [115]

:[14]
push.v builtin.statePrev
push.v builtin.state
cmp.v.v NEQ
bf [17]

:[15]
pushi.e 0
conv.b.v
call.i @@This@@(argc=0)
push.v builtin.set_disabled
callv.v 1
popz.v
call.i @@This@@(argc=0)
push.v builtin.show
callv.v 0
popz.v
pushglb.v global.fightManager
pushi.e -9
push.v [stacktop]self.encounter
pushi.e -9
push.v [stacktop]self.structMonster
pushglb.v global.monsters
pushi.e -9
push.v [stacktop]self.babayaga
cmp.v.v NEQ
bf [17]

:[16]
push.v builtin.animMoveUp
dup.v 0 8
dup.v 0
push.v stacktop.run
callv.v 0
popz.v

:[17]
push.v builtin.animMoveUp
dup.v 0 8
dup.v 0
push.v stacktop.is_running
callv.v 0
conv.v.b
bf [19]

:[18]
pushi.e 0
conv.i.v
pushi.e 16
conv.i.v
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
push.v builtin.animMoveUp
dup.v 0 8
dup.v 0
push.v stacktop.get_cur_length_normalize
callv.v 0
call.i gml_Script_map_value(argc=5)
pop.v.v builtin.offsetMoveUpY
push.v builtin.animMoveUp
dup.v 0 8
dup.v 0
push.v stacktop.get_cur_length_normalize
callv.v 0
pop.v.v builtin.image_alpha

:[19]
push.v builtin.animMoveUp
dup.v 0 8
dup.v 0
push.v stacktop.is_finished
callv.v 0
conv.v.b
bf [21]

:[20]
pushi.e 0
pop.v.i builtin.offsetMoveUpY
pushi.e 1
pop.v.i builtin.image_alpha

:[21]
pushref.i 11
pushi.e -9
pushenv [52]

:[22]
pushglb.v global.playersManager
push.v builtin.number
dup.v 1 8
dup.v 0
push.v stacktop.get_characters
callv.v 1
pop.v.v local._char
pushglb.v global.fightManager
pushi.e -9
push.v [stacktop]self.state
push.l 5
cmp.l.v EQ
pop.v.b local._withDefaultToken
pushloc.v local._char
pushi.e -9
push.v [stacktop]self.token
pushi.e -9
push.v [stacktop]self.theType
push.l 3
cmp.l.v EQ
pop.v.b local._withLostInTimeToken
pushloc.v local._char
pushi.e -9
push.v [stacktop]self.isInFight
pop.v.v local._isInFight
pushloc.v local._withDefaultToken
conv.v.b
bt [24]

:[23]
pushloc.v local._withLostInTimeToken
conv.v.b
b [25]

:[24]
push.e 1

:[25]
bf [28]

:[26]
call.i @@Other@@(argc=0)
dup.v 0 8
dup.v 0
push.v stacktop.is_disabled
callv.v 0
conv.v.b
not.b
bf [28]

:[27]
pushloc.v local._isInFight
conv.v.b
b [29]

:[28]
push.e 0

:[29]
bf [52]

:[30]
pushi.e 0
pop.v.b local._verbPressed
push.v builtin.number
call.i gml_Script_InputPlayerUsingKbm(argc=1)
conv.v.b
bf [32]

:[31]
call.i @@Other@@(argc=0)
push.v builtin.number
dup.v 1 8
dup.v 0
push.v stacktop.has_number_clicked
callv.v 1
pop.v.v local._verbPressed
b [34]

:[32]
push.v builtin.number
call.i gml_Script_InputPlayerUsingGamepad(argc=1)
conv.v.b
bf [34]

:[33]
push.l 1
conv.l.v
push.v other.gamepadBtnLinked
call.i @@This@@(argc=0)
push.v builtin.is_verb_active
callv.v 2
pop.v.v local._verbPressed

:[34]
pushloc.v local._verbPressed
conv.v.b
bf [38]

:[35]
pushglb.v global.playersManager
push.v builtin.number
dup.v 1 8
dup.v 0
push.v stacktop.has_acted
callv.v 1
conv.v.b
not.b
bf [38]

:[36]
push.v other.cardType
push.l 4
cmp.l.v EQ
bf [38]

:[37]
pushloc.v local._char
pushglb.v global.effect
pushi.e -9
push.v [stacktop]self.hallucinogenicVision
dup.v 1 8
dup.v 0
push.v stacktop.effect_index
callv.v 1
pushi.e -1
cmp.i.v NEQ
b [39]

:[38]
push.e 0

:[39]
pop.v.b local._validMushroomInput
pushloc.v local._verbPressed
conv.v.b
bf [46]

:[40]
pushglb.v global.playersManager
push.v builtin.number
dup.v 1 8
dup.v 0
push.v stacktop.has_acted
callv.v 1
conv.v.b
not.b
bf [46]

:[41]
push.v other.cardType
push.l 1
cmp.l.v EQ
bt [44]

:[42]
push.v other.cardType
push.l 2
cmp.l.v EQ
bt [44]

:[43]
push.v other.cardType
push.l 9
cmp.l.v EQ
b [45]

:[44]
push.e 1

:[45]
b [47]

:[46]
push.e 0

:[47]
pop.v.b local._validInputDefault
pushloc.v local._validInputDefault
conv.v.b
bt [49]

:[48]
pushloc.v local._validMushroomInput
conv.v.b
b [50]

:[49]
push.e 1

:[50]
bf [52]

:[51]
pushglb.v global.playersManager
pushi.e 1
conv.b.v
push.v other.id
pushi.e -9
push.v [stacktop]self.actionType
push.v builtin.number
dup.v 3 8
dup.v 0
push.v stacktop.send_action
callv.v 3
popz.v

:[52]
popenv [22]
b [115]

:[53]
pushglb.v global.cardExecutionManager
push.v builtin.nbrCharLinked
push.v builtin.id
dup.v 2 8
dup.v 0
push.v stacktop.loop
callv.v 2
popz.v
pushglb.v global.waitingList
dup.v 0 8
dup.v 0
push.v stacktop.is_waiting_list_empty
callv.v 0
conv.v.b
bf [55]

:[54]
pushglb.v global.cardExecutionManager
dup.v 0 8
dup.v 0
push.v stacktop.is_finished
callv.v 0
conv.v.b
b [56]

:[55]
push.e 0

:[56]
bf [58]

:[57]
push.l 4
pop.v.l builtin.stateNext

:[58]
b [115]

:[59]
push.v builtin.statePrev
push.v builtin.state
cmp.v.v NEQ
bf [61]

:[60]
push.v builtin.animAttackMomentum
dup.v 0 8
dup.v 0
push.v stacktop.reset
callv.v 0
popz.v
push.v builtin.animAttackMomentum
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

:[61]
push.v builtin.animAttackMomentum
dup.v 0 8
dup.v 0
push.v stacktop.is_running
callv.v 0
conv.v.b
bf [63]

:[62]
push.v builtin.yAnimTo
push.v builtin.yAnimFrom
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
push.v builtin.animAttackMomentum
dup.v 0 8
dup.v 0
push.v stacktop.get_cur_length_normalize
callv.v 0
call.i gml_Script_map_value(argc=5)
pop.v.v builtin.yTo

:[63]
push.v builtin.animAttackMomentum
dup.v 0 8
dup.v 0
push.v stacktop.is_finished
callv.v 0
conv.v.b
bf [67]

:[64]
push.v builtin.animAttackMomentum
dup.v 0 8
dup.v 0
push.v stacktop.reset
callv.v 0
popz.v
push.v builtin.state
push.l 6
cmp.l.v EQ
bf [66]

:[65]
push.l 7
pop.v.l builtin.stateNext
b [67]

:[66]
push.l 11
pop.v.l builtin.stateNext

:[67]
b [115]

:[68]
push.v builtin.statePrev
push.v builtin.state
cmp.v.v NEQ
bf [70]

:[69]
push.v builtin.animAttackHit
dup.v 0 8
dup.v 0
push.v stacktop.run
callv.v 0
popz.v
push.v builtin.xTo
pop.v.v builtin.xAnimFrom
push.v builtin.yTo
pop.v.v builtin.yAnimFrom
push.v builtin.animTarget
pushi.e -9
push.v [stacktop]self.xUi
pushi.e 33
add.i.v
push.v builtin.width
pushi.e 2
conv.i.d
div.d.v
sub.v.v
pop.v.v builtin.xAnimTo
push.v builtin.animTarget
pushi.e -9
push.v [stacktop]self.yUi
pushi.e 24
add.i.v
push.v builtin.height
sub.v.v
pop.v.v builtin.yAnimTo

:[70]
push.v builtin.animAttackHit
dup.v 0 8
dup.v 0
push.v stacktop.is_running
callv.v 0
conv.v.b
bf [72]

:[71]
push.v builtin.xAnimTo
push.v builtin.xAnimFrom
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
push.v builtin.animAttackHit
dup.v 0 8
dup.v 0
push.v stacktop.get_cur_length_normalize
callv.v 0
call.i gml_Script_map_value(argc=5)
pop.v.v builtin.xTo
push.v builtin.yAnimTo
push.v builtin.yAnimFrom
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
push.v builtin.animAttackHit
dup.v 0 8
dup.v 0
push.v stacktop.get_cur_length_normalize
callv.v 0
call.i gml_Script_map_value(argc=5)
pop.v.v builtin.yTo
push.v builtin.xAnimFrom
push.v builtin.xAnimTo
sub.v.v
call.i sign(argc=1)
pushi.e 64
mul.i.v
pop.v.v local._angleTo

:[72]
push.v builtin.animAttackHit
dup.v 0 8
dup.v 0
push.v stacktop.is_finished
callv.v 0
conv.v.b
bf [82]

:[73]
push.v builtin.animAttackHit
dup.v 0 8
dup.v 0
push.v stacktop.reset
callv.v 0
popz.v
push.l 9
pop.v.l builtin.stateNext
push.v builtin.animTarget
pushi.e -4
cmp.i.v NEQ
bf [75]

:[74]
push.v builtin.animDamageAmount
pushi.e -1
cmp.i.v NEQ
b [76]

:[75]
push.e 0

:[76]
bf [81]

:[77]
pushi.e 0
pop.v.i local._a

:[78]
pushloc.v local._a
push.v builtin.animDamageTime
cmp.v.v LT
bf [80]

:[79]
push.v builtin.animTarget
push.v builtin.animDamageAmount
pushi.e 1
conv.b.v
dup.v 2 8
dup.v 0
push.v stacktop.receive_damage
callv.v 2
popz.v
push.v local._a
push.e 1
add.i.v
pop.v.v local._a
b [78]

:[80]
b [82]

:[81]
push.v builtin.animTarget
dup.v 0 8
dup.v 0
push.v stacktop.miss
callv.v 0
popz.v

:[82]
b [115]

:[83]
push.v builtin.statePrev
push.v builtin.state
cmp.v.v NEQ
bf [85]

:[84]
push.v builtin.animAttackReset
dup.v 0 8
dup.v 0
push.v stacktop.run
callv.v 0
popz.v

:[85]
push.v builtin.animAttackReset
dup.v 0 8
dup.v 0
push.v stacktop.is_running
callv.v 0
conv.v.b
bf [87]

:[86]
push.v builtin.xInit
push.v builtin.xAnimTo
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
push.v builtin.animAttackReset
dup.v 0 8
dup.v 0
push.v stacktop.get_cur_length_normalize
callv.v 0
call.i gml_Script_map_value(argc=5)
pop.v.v builtin.xTo
push.v builtin.yInit
push.v builtin.yAnimTo
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
push.v builtin.animAttackReset
dup.v 0 8
dup.v 0
push.v stacktop.get_cur_length_normalize
callv.v 0
call.i gml_Script_map_value(argc=5)
pop.v.v builtin.yTo

:[87]
push.v builtin.animAttackReset
dup.v 0 8
dup.v 0
push.v stacktop.is_finished
callv.v 0
conv.v.b
bf [89]

:[88]
push.v builtin.animAttackReset
dup.v 0 8
dup.v 0
push.v stacktop.reset
callv.v 0
popz.v
pushglb.v global.waitingList
push.v builtin.id
dup.v 1 8
dup.v 0
push.v stacktop.remove
callv.v 1
popz.v
push.l 3
pop.v.l builtin.stateNext

:[89]
b [115]

:[90]
push.v builtin.statePrev
push.v builtin.state
cmp.v.v NEQ
bf [92]

:[91]
pushglb.v global.depthManager
push.s "cards"@4255
conv.s.v
dup.v 1 8
dup.v 0
push.v stacktop.get_depth
callv.v 1
pop.v.v builtin.depth

:[92]
b [115]

:[93]
push.v builtin.statePrev
push.v builtin.state
cmp.v.v NEQ
bf [100]

:[94]
push.v builtin.animEffectHit
dup.v 0 8
dup.v 0
push.v stacktop.run
callv.v 0
popz.v
push.v builtin.wiggle
dup.v 0 8
dup.v 0
push.v stacktop.run
callv.v 0
popz.v
push.v builtin.animTarget
pushi.e -4
cmp.i.v NEQ
bf [96]

:[95]
push.v builtin.animEffectStack
pushi.e -1
cmp.i.v NEQ
b [97]

:[96]
push.e 0

:[97]
bf [99]

:[98]
push.v builtin.animTarget
push.v builtin.launchEffectY
push.v builtin.launchEffectX
push.v builtin.animEffectStack
push.v builtin.animEffect
dup.v 4 8
dup.v 0
push.v stacktop.receive_effect
callv.v 4
popz.v
b [100]

:[99]
push.v builtin.animTarget
dup.v 0 8
dup.v 0
push.v stacktop.miss
callv.v 0
popz.v

:[100]
push.v builtin.animEffectHit
dup.v 0 8
dup.v 0
push.v stacktop.is_finished
callv.v 0
conv.v.b
bf [102]

:[101]
push.v builtin.animEffectHit
dup.v 0 8
dup.v 0
push.v stacktop.reset
callv.v 0
popz.v
push.l 9
pop.v.l builtin.stateNext

:[102]
b [115]

:[103]
push.v builtin.statePrev
push.v builtin.state
cmp.v.v NEQ
bf [107]

:[104]
push.v builtin.image_alpha
pushi.e 0
cmp.i.v EQ
bf [106]

:[105]
call.i instance_destroy(argc=0)
popz.v
b [107]

:[106]
push.v builtin.timerDestroy
dup.v 0 8
dup.v 0
push.v stacktop.run
callv.v 0
popz.v

:[107]
push.v builtin.timerDestroy
dup.v 0 8
dup.v 0
push.v stacktop.is_running
callv.v 0
conv.v.b
bt [109]

:[108]
push.v builtin.timerDestroy
dup.v 0 8
dup.v 0
push.v stacktop.is_finished
callv.v 0
conv.v.b
b [110]

:[109]
push.e 1

:[110]
bf [112]

:[111]
pushi.e 1
push.v builtin.timerDestroy
dup.v 0 8
dup.v 0
push.v stacktop.get_cur_length_normalize
callv.v 0
sub.v.i
pop.v.v builtin.image_alpha

:[112]
push.v builtin.timerDestroy
dup.v 0 8
dup.v 0
push.v stacktop.is_finished
callv.v 0
conv.v.b
bf [114]

:[113]
call.i instance_destroy(argc=0)
popz.v

:[114]
b [115]

:[115]
popz.v
push.d 0.1
conv.d.v
pushloc.v local._angleTo
push.v builtin.image_angle
call.i lerp(argc=3)
pop.v.v builtin.image_angle
push.v builtin.state
pop.v.v builtin.statePrev
push.v builtin.stateNext
pop.v.v builtin.state

:[end]