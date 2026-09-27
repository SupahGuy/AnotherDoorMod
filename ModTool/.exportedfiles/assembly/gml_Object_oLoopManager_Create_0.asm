:[0]
pushbltn.v builtin.undefined
pop.v.v builtin.state
pushbltn.v builtin.undefined
pop.v.v builtin.statePrev
push.l 0
pop.v.l builtin.stateNext
pushi.e 0
pop.v.i builtin.currentDoorNbr
b [6]

> gml_Script_anon@258@gml_Object_oLoopManager_Create_0 (locals=2, argc=0)
:[1]
call.i @@This@@(argc=0)
push.v builtin.has_more_door
callv.v 0
conv.v.b
bf [5]

:[2]
push.v builtin.currentDoorNbr
push.e 1
add.i.v
pop.v.v builtin.currentDoorNbr
pushglb.v global.doorContinue
pushi.e -9
push.v [stacktop]self.sprCompletionDoor
call.i sprite_get_width(argc=1)
pop.v.v local._widthBarMax
pushglb.v global.monsterList
pushi.e -9
call.i @@This@@(argc=0)
push.v builtin.get_current_door
callv.v 0
conv.v.i
push.v [array]self.newBiomePosition
pushi.e -9
push.v [stacktop]self.percentageCompletion
pushloc.v local._widthBarMax
mul.v.v
pushi.e 100
conv.i.d
div.d.v
pop.v.v local._widthBar
pushloc.v local._widthBar
pushglb.v global.doorContinue
pushi.e -9
pop.v.v [stacktop]self.barCompletionWidthTo
pushglb.v global.monsterList
pushi.e -9
call.i @@This@@(argc=0)
push.v builtin.get_current_door
callv.v 0
conv.v.i
push.v [array]self.newBiomePosition
pushi.e -9
push.v [stacktop]self.isNewBiome
conv.v.b
bf [4]

:[3]
pushglb.v global.biomeCur
pushi.e 1
add.i.v
pop.v.v global.biomeNext

:[4]
call.i @@This@@(argc=0)
push.v builtin.update_rewards
callv.v 0
popz.v

:[5]
exit.i

:[6]
push.i [function]gml_Script_anon@258@gml_Object_oLoopManager_Create_0
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
pop.v.v builtin.incr_door_counter
b [9]

> gml_Script_anon@784@gml_Object_oLoopManager_Create_0 (locals=0, argc=0)
:[7]
pushglb.v global.monsterList
pushi.e -9
call.i @@This@@(argc=0)
push.v builtin.get_current_door
callv.v 0
conv.v.i
push.v [array]self.encounters
call.i array_length(argc=1)
ret.v

:[8]
exit.i

:[9]
push.i [function]gml_Script_anon@784@gml_Object_oLoopManager_Create_0
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
pop.v.v builtin.get_current_door_length
b [12]

> gml_Script_anon@901@gml_Object_oLoopManager_Create_0 (locals=0, argc=0)
:[10]
pushglb.v global.monsterList
pushi.e -9
push.v [stacktop]self.encounters
call.i array_length(argc=1)
ret.v

:[11]
exit.i

:[12]
push.i [function]gml_Script_anon@901@gml_Object_oLoopManager_Create_0
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
pop.v.v builtin.get_nbr_door_total
b [15]

> gml_Script_anon@993@gml_Object_oLoopManager_Create_0 (locals=0, argc=0)
:[13]
push.v builtin.currentDoorNbr
call.i @@This@@(argc=0)
push.v builtin.get_nbr_door_total
callv.v 0
cmp.v.v LT
conv.b.v
ret.v

:[14]
exit.i

:[15]
push.i [function]gml_Script_anon@993@gml_Object_oLoopManager_Create_0
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
pop.v.v builtin.has_more_door
b [18]

> gml_Script_anon@1080@gml_Object_oLoopManager_Create_0 (locals=0, argc=0)
:[16]
push.v builtin.currentDoorNbr
call.i @@This@@(argc=0)
push.v builtin.get_nbr_door_total
callv.v 0
pushi.e 1
sub.i.v
cmp.v.v EQ
conv.b.v
ret.v

:[17]
exit.i

:[18]
push.i [function]gml_Script_anon@1080@gml_Object_oLoopManager_Create_0
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
pop.v.v builtin.is_last_door
b [21]

> gml_Script_anon@1213@gml_Object_oLoopManager_Create_0 (locals=0, argc=0)
:[19]
push.v builtin.currentDoorNbr
ret.v

:[20]
exit.i

:[21]
push.i [function]gml_Script_anon@1213@gml_Object_oLoopManager_Create_0
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
pop.v.v builtin.get_current_door
b [27]

> gml_Script_anon@1320@gml_Object_oLoopManager_Create_0 (locals=3, argc=0)
:[22]
call.i @@NewGMLArray@@(argc=0)
pop.v.v local._steps
pushi.e 0
pop.v.i local._i

:[23]
pushloc.v local._i
pushglb.v global.monsterList
pushi.e -9
push.v [stacktop]self.encounterNbrByDoor
call.i array_length(argc=1)
cmp.v.v LT
bf [25]

:[24]
pushloc.v local._i
pushglb.v global.monsterList
pushi.e -9
pushloc.v local._i
conv.v.i
push.v [array]self.encounterNbrByDoor
add.v.v
pop.v.v local._newAdditionGem
pushloc.v local._newAdditionGem
pushloc.v local._steps
call.i array_push(argc=2)
popz.v
push.v local._i
push.e 1
add.i.v
pop.v.v local._i
b [23]

:[25]
pushi.e 25
conv.i.v
pushloc.v local._steps
call.i array_push(argc=2)
popz.v
pushloc.v local._steps
ret.v

:[26]
exit.i

:[27]
push.i [function]gml_Script_anon@1320@gml_Object_oLoopManager_Create_0
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
pop.v.v builtin.generate_reward_reference
pushi.e 1
pop.v.i builtin.gemRewardMin
pushi.e 10
pop.v.i builtin.gemRewardMax
call.i @@NewGMLArray@@(argc=0)
pop.v.v builtin.gemRewardReference
pushi.e 0
pop.v.i builtin.gemReward
pushi.e 0
pop.v.i builtin.gemRewardNext
b [34]

> gml_Script_anon@1875@gml_Object_oLoopManager_Create_0 (locals=0, argc=0)
:[28]
pushi.e -6
push.v builtin.gemRewardReference
call.i array_length(argc=1)
pushi.e 1
sub.i.v
call.i @@This@@(argc=0)
push.v builtin.get_current_door
callv.v 0
call.i min(argc=2)
conv.v.i
push.v [array]self.gemRewardReference
pop.v.v builtin.gemReward
call.i @@This@@(argc=0)
push.v builtin.has_more_door
callv.v 0
conv.v.b
bf [30]

:[29]
pushi.e -6
push.v builtin.gemRewardReference
call.i array_length(argc=1)
pushi.e 1
sub.i.v
call.i @@This@@(argc=0)
push.v builtin.get_current_door
callv.v 0
pushi.e 1
add.i.v
call.i min(argc=2)
conv.v.i
push.v [array]self.gemRewardReference
pop.v.v builtin.gemRewardNext
pushglb.v global.narratorTv
dup.v 0 8
dup.v 0
push.v stacktop.update_monsters_number
callv.v 0
popz.v
b [31]

:[30]
push.v builtin.gemReward
pop.v.v builtin.gemRewardNext

:[31]
pushref.i 29
pushi.e -9
pushenv [33]

:[32]
call.i @@This@@(argc=0)
push.v builtin.update_rewards_tooltip
callv.v 0
popz.v

:[33]
popenv [32]
exit.i

:[34]
push.i [function]gml_Script_anon@1875@gml_Object_oLoopManager_Create_0
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
pop.v.v builtin.update_rewards
b [37]

> gml_Script_anon@2389@gml_Object_oLoopManager_Create_0 (locals=0, argc=0)
:[35]
push.v builtin.gemReward
ret.v

:[36]
exit.i

:[37]
push.i [function]gml_Script_anon@2389@gml_Object_oLoopManager_Create_0
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
pop.v.v builtin.get_gem_reward
b [40]

> gml_Script_anon@2492@gml_Object_oLoopManager_Create_0 (locals=0, argc=0)
:[38]
push.v builtin.gemRewardNext
ret.v

:[39]
exit.i

:[40]
push.i [function]gml_Script_anon@2492@gml_Object_oLoopManager_Create_0
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
pop.v.v builtin.get_gem_reward_next
pushi.e 0
pop.v.i builtin.monsterActiveNumber
b [43]

> gml_Script_anon@2682@gml_Object_oLoopManager_Create_0 (locals=0, argc=0)
:[41]
push.v builtin.monsterActiveNumber
ret.v

:[42]
exit.i

:[43]
push.i [function]gml_Script_anon@2682@gml_Object_oLoopManager_Create_0
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
pop.v.v builtin.get_monster_active_number
b [46]

> gml_Script_anon@2783@gml_Object_oLoopManager_Create_0 (locals=0, argc=0)
:[44]
push.v builtin.monsterActiveNumber
call.i @@This@@(argc=0)
push.v builtin.get_current_door_length
callv.v 0
pushi.e 1
sub.i.v
cmp.v.v EQ
conv.b.v
ret.v

:[45]
exit.i

:[46]
push.i [function]gml_Script_anon@2783@gml_Object_oLoopManager_Create_0
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
pop.v.v builtin.is_last_monster
b [49]

> gml_Script_anon@2890@gml_Object_oLoopManager_Create_0 (locals=0, argc=0)
:[47]
push.v builtin.monsterActiveNumber
call.i @@This@@(argc=0)
push.v builtin.get_current_door_length
callv.v 0
cmp.v.v LT
conv.b.v
ret.v

:[48]
exit.i

:[49]
push.i [function]gml_Script_anon@2890@gml_Object_oLoopManager_Create_0
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
pop.v.v builtin.has_more_monster
b [52]

> gml_Script_anon@3036@gml_Object_oLoopManager_Create_0 (locals=0, argc=0)
:[50]
push.v builtin.monsterActiveNumber
pushi.e 0
cmp.i.v EQ
conv.b.v
ret.v

:[51]
exit.i

:[52]
push.i [function]gml_Script_anon@3036@gml_Object_oLoopManager_Create_0
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
pop.v.v builtin.is_first_monster
b [55]

> gml_Script_anon@3313@gml_Object_oLoopManager_Create_0 (locals=1, argc=0)
:[53]
pushglb.v global.monsterList
pushi.e -9
call.i @@This@@(argc=0)
push.v builtin.get_current_door
callv.v 0
conv.v.i
push.v [arraypushaf]self.encounters
push.v builtin.monsterActiveNumber
conv.v.i
pushaf.e
pushglb.v global.monsters
call.i struct_get(argc=2)
pop.v.v local._monsterStruct
pushloc.v local._monsterStruct
ret.v

:[54]
exit.i

:[55]
push.i [function]gml_Script_anon@3313@gml_Object_oLoopManager_Create_0
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
pop.v.v builtin.get_current_monster
b [58]

> gml_Script_anon@3511@gml_Object_oLoopManager_Create_0 (locals=1, argc=1)
:[56]
pushglb.v global.monsterList
pushi.e -9
call.i @@This@@(argc=0)
push.v builtin.get_current_door
callv.v 0
conv.v.i
push.v [arraypushaf]self.encounters
push.v arg.argument0
conv.v.i
pushaf.e
pushglb.v global.monsters
call.i struct_get(argc=2)
pop.v.v local._monsterStruct
pushloc.v local._monsterStruct
ret.v

:[57]
exit.i

:[58]
push.i [function]gml_Script_anon@3511@gml_Object_oLoopManager_Create_0
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
pop.v.v builtin.get_monster_at_position
b [67]

> gml_Script_anon@3728@gml_Object_oLoopManager_Create_0 (locals=0, argc=1)
:[59]
push.v arg.argument0
pushi.e 1
cmp.i.v EQ
bf [62]

:[60]
push.s "level._forestName"@10229
conv.s.v
ret.v

:[61]
b [66]

:[62]
push.v arg.argument0
pushi.e 2
cmp.i.v EQ
bf [65]

:[63]
push.s "level._cityName"@10230
conv.s.v
ret.v

:[64]
b [66]

:[65]
push.s ""@61
conv.s.v
ret.v

:[66]
exit.i

:[67]
push.i [function]gml_Script_anon@3728@gml_Object_oLoopManager_Create_0
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
pop.v.v builtin.get_level_name
pushglb.v global.biomeCur
call.i @@This@@(argc=0)
push.v builtin.get_level_name
callv.v 1
call.i gml_Script_scribble(argc=1)
dup.v 0
pushi.e -9
push.v [stacktop]self.align
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
dup.e 2 16
callv.v 2
dup.v 0
pushi.e -9
push.v [stacktop]self.starting_format
pushglb.v global.color
pushi.e -9
push.v [stacktop]self.grey1
push.s "ftAlkhemikalSh"@5419
conv.s.v
dup.e 2 16
callv.v 2
dup.v 0
pushi.e -9
push.v [stacktop]self.scale
pushglb.v global.fontScaleTitle
dup.e 2 8
callv.v 1
pop.v.v builtin.levelName
push.v builtin.levelName
push.v builtin.levelName
dup.v 0 8
dup.v 0
push.v stacktop.get_height
callv.v 0
pushi.e 2
conv.i.d
div.d.v
call.i round(argc=1)
push.v builtin.levelName
dup.v 0 8
dup.v 0
push.v stacktop.get_width
callv.v 0
pushi.e 2
conv.i.d
div.d.v
call.i round(argc=1)
dup.v 2 8
dup.v 0
push.v stacktop.origin
callv.v 2
popz.v
b [71]

> gml_Script_anon@4183@gml_Object_oLoopManager_Create_0 (locals=0, argc=0)
:[68]
push.v builtin.levelName
call.i gml_Script_scribble_is_text_element(argc=1)
conv.v.b
bf [70]

:[69]
push.v builtin.levelName
dup.v 0 8
dup.v 0
push.v stacktop.flush
callv.v 0
popz.v

:[70]
pushglb.v global.biomeCur
call.i @@This@@(argc=0)
push.v builtin.get_level_name
callv.v 1
call.i gml_Script_scribble(argc=1)
dup.v 0
pushi.e -9
push.v [stacktop]self.align
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
dup.e 2 16
callv.v 2
dup.v 0
pushi.e -9
push.v [stacktop]self.starting_format
pushglb.v global.color
pushi.e -9
push.v [stacktop]self.grey1
push.s "ftAlkhemikalSh"@5419
conv.s.v
dup.e 2 16
callv.v 2
dup.v 0
pushi.e -9
push.v [stacktop]self.scale
pushglb.v global.fontScaleTitle
dup.e 2 8
callv.v 1
pop.v.v builtin.levelName
push.v builtin.levelName
push.v builtin.levelName
dup.v 0 8
dup.v 0
push.v stacktop.get_height
callv.v 0
pushi.e 2
conv.i.d
div.d.v
call.i round(argc=1)
push.v builtin.levelName
dup.v 0 8
dup.v 0
push.v stacktop.get_width
callv.v 0
pushi.e 2
conv.i.d
div.d.v
call.i round(argc=1)
dup.v 2 8
dup.v 0
push.v stacktop.origin
callv.v 2
popz.v
exit.i

:[71]
push.i [function]gml_Script_anon@4183@gml_Object_oLoopManager_Create_0
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
pop.v.v builtin.update_level_name
pushi.e 1
pop.v.b builtin.firstTime
b [80]

> gml_Script_anon@4600@gml_Object_oLoopManager_Create_0 (locals=3, argc=0)
:[72]
pushi.e 1
pop.v.b builtin.firstTime
pushi.e 0
pop.v.i local._i

:[73]
pushloc.v local._i
pushglb.v global.playersCount
cmp.v.v LT
bf [77]

:[74]
pushglb.v global.playersManager
pushloc.v local._i
dup.v 1 8
dup.v 0
push.v stacktop.apply_action
callv.v 1
popz.v
pushglb.v global.playersManager
pushloc.v local._i
dup.v 1 8
dup.v 0
push.v stacktop.get_characters
callv.v 1
pop.v.v local._char
pushloc.v local._char
pushi.e -4
cmp.i.v NEQ
bf [76]

:[75]
pushloc.v local._char
pushi.e -9
push.v [stacktop]self.hpMaxInit
pop.v.v local._hpMaxInit
pushloc.v local._char
pushi.e 0
conv.b.v
pushloc.v local._hpMaxInit
pushloc.v local._hpMaxInit
dup.v 3 8
dup.v 0
push.v stacktop.rezurrection
callv.v 3
popz.v

:[76]
push.v local._i
push.e 1
add.i.v
pop.v.v local._i
b [73]

:[77]
pushi.e 1
pop.v.i global.biomeCur
pushi.e 1
pop.v.i global.biomeNext
pushi.e 0
pop.v.i builtin.currentDoorNbr
pushi.e 0
pop.v.i builtin.monsterActiveNumber
pushglb.v global.runCounter
pushi.e 0
cmp.i.v NEQ
bf [79]

:[78]
pushglb.v global.monsterList
dup.v 0 8
dup.v 0
push.v stacktop.generate_data
callv.v 0
popz.v

:[79]
call.i @@This@@(argc=0)
push.v builtin.generate_reward_reference
callv.v 0
pop.v.v builtin.gemRewardReference
call.i @@This@@(argc=0)
push.v builtin.update_rewards
callv.v 0
popz.v
pushglb.v global.doorContinue
dup.v 0 8
dup.v 0
push.v stacktop.reset_state
callv.v 0
popz.v
pushglb.v global.doorContinue
dup.v 0 8
dup.v 0
push.v stacktop.change_door_type
callv.v 0
popz.v
pushglb.v global.fightManager
dup.v 0 8
dup.v 0
push.v stacktop.reset_fight_counter
callv.v 0
popz.v
exit.i

:[80]
push.i [function]gml_Script_anon@4600@gml_Object_oLoopManager_Create_0
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
pop.v.v builtin.init_new_run
b [98]

> gml_Script_anon@5579@gml_Object_oLoopManager_Create_0 (locals=7, argc=0)
:[81]
pushi.e 0
pop.v.i local._p

:[82]
pushloc.v local._p
pushglb.v global.playersCount
cmp.v.v LT
bf [94]

:[83]
pushloc.v local._p
pushi.e 1
add.i.v
pushloc.v local._p
push.s "[p{0}]P{1}[/c]"@10238
conv.s.v
call.i @@string@@(argc=3)
pop.v.v local._player
pushglb.v global.playersManager
pushloc.v local._p
dup.v 1 8
dup.v 0
push.v stacktop.get_characters
callv.v 1
dup.v 0 8
dup.v 0
push.v stacktop.get_gem_secured
callv.v 0
push.s "[yellow1]{0}[/c]"@10239
conv.s.v
call.i @@string@@(argc=2)
pop.v.v local._score
pushglb.v global.playersManager
pushloc.v local._p
dup.v 1 8
dup.v 0
push.v stacktop.get_characters
callv.v 1
dup.v 0 8
dup.v 0
push.v stacktop.get_gem_secured
callv.v 0
pop.v.v local._scoreOrder
push.s "[/c]"@9971
conv.s.v
pushglb.v global.playersManager
pushloc.v local._p
dup.v 1 8
dup.v 0
push.v stacktop.get_name
callv.v 1
pushloc.v local._p
push.s "[p{0}]"@9972
conv.s.v
call.i @@string@@(argc=2)
call.i string_concat(argc=3)
pop.v.v local._name
pushloc.v local._p
pushi.e 0
cmp.i.v EQ
bf [85]

:[84]
push.l 24
pop.v.l local._screenState
b [91]

:[85]
pushloc.v local._p
pushi.e 1
cmp.i.v EQ
bf [87]

:[86]
push.l 25
pop.v.l local._screenState
b [91]

:[87]
pushloc.v local._p
pushi.e 2
cmp.i.v EQ
bf [89]

:[88]
push.l 26
pop.v.l local._screenState
b [91]

:[89]
pushloc.v local._p
pushi.e 3
cmp.i.v EQ
bf [91]

:[90]
push.l 27
pop.v.l local._screenState

:[91]
pushloc.v local._screenState
pushloc.v local._scoreOrder
pushloc.v local._score
pushloc.v local._name
pushloc.v local._player
b [93]

> gml_Script____struct___414@anon@5579@gml_Object_oLoopManager_Create_0 (locals=0, argc=0)
:[92]
call.i @@SetStatic@@(argc=0)
pushi.e -15
pushi.e 0
push.v [array]self.argument
pop.v.v self.player
pushi.e -15
pushi.e 1
push.v [array]self.argument
pop.v.v self.name
pushi.e -15
pushi.e 2
push.v [array]self.argument
pop.v.v self.score
pushi.e -15
pushi.e 3
push.v [array]self.argument
pop.v.v self.scoreOrder
pushi.e -15
pushi.e 4
push.v [array]self.argument
pop.v.v self.screenState
exit.i

:[93]
push.i [function]gml_Script____struct___414@anon@5579@gml_Object_oLoopManager_Create_0
conv.i.v
call.i @@NullObject@@(argc=0)
call.i method(argc=2)
dup.v 0
pop.v.v global.___struct___414
call.i @@NewGMLObject@@(argc=6)
pop.v.v local._struct
pushloc.v local._struct
call.i @@Global@@(argc=0)
pushi.e -9
pushloc.v local._p
conv.v.i
pop.v.v [array]self.winner
push.v local._p
push.e 1
add.i.v
pop.v.v local._p
b [82]

:[94]
b [97]

> gml_Script_anon@6443@anon@5579@gml_Object_oLoopManager_Create_0 (locals=0, argc=2)
:[95]
pushi.e -1
conv.i.v
push.s "scoreOrder"@9282
conv.s.v
push.v arg.argument1
push.v arg.argument0
call.i gml_Script_array_sort_by_struct(argc=4)
ret.v

:[96]
exit.i

:[97]
push.i [function]gml_Script_anon@6443@anon@5579@gml_Object_oLoopManager_Create_0
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
pushglb.v global.winner
call.i array_sort(argc=2)
popz.v
exit.i

:[98]
push.i [function]gml_Script_anon@5579@gml_Object_oLoopManager_Create_0
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
pop.v.v builtin.set_winner
b [116]

> gml_Script_anon@6552@gml_Object_oLoopManager_Create_0 (locals=10, argc=0)
:[99]
call.i @@NewGMLArray@@(argc=0)
pop.v.v local._players
pushi.e 0
pop.v.i local._p

:[100]
pushloc.v local._p
pushglb.v global.playersCount
cmp.v.v LT
bf [104]

:[101]
pushloc.v local._p
pushi.e 1
add.i.v
pushloc.v local._p
push.s "[p{0}]P{1}[/c]"@10238
conv.s.v
call.i @@string@@(argc=3)
pop.v.v local._player
pushglb.v global.playersManager
pushloc.v local._p
dup.v 1 8
dup.v 0
push.v stacktop.get_characters
callv.v 1
dup.v 0 8
dup.v 0
push.v stacktop.get_gem_secured
callv.v 0
push.s "[yellow1]{0}[/c]"@10239
conv.s.v
call.i @@string@@(argc=2)
pop.v.v local._score
pushglb.v global.playersManager
pushloc.v local._p
dup.v 1 8
dup.v 0
push.v stacktop.get_characters
callv.v 1
dup.v 0 8
dup.v 0
push.v stacktop.get_gem_secured
callv.v 0
pop.v.v local._scoreOrder
push.s "[/c]"@9971
conv.s.v
pushglb.v global.playersManager
pushloc.v local._p
dup.v 1 8
dup.v 0
push.v stacktop.get_name
callv.v 1
pushloc.v local._p
push.s "[p{0}]"@9972
conv.s.v
call.i @@string@@(argc=2)
call.i string_concat(argc=3)
pop.v.v local._name
pushloc.v local._scoreOrder
pushloc.v local._score
pushloc.v local._name
pushloc.v local._player
b [103]

> gml_Script____struct___415@anon@6552@gml_Object_oLoopManager_Create_0 (locals=0, argc=0)
:[102]
call.i @@SetStatic@@(argc=0)
pushi.e -15
pushi.e 0
push.v [array]self.argument
pop.v.v self.player
pushi.e -15
pushi.e 1
push.v [array]self.argument
pop.v.v self.name
pushi.e -15
pushi.e 2
push.v [array]self.argument
pop.v.v self.score
pushi.e -15
pushi.e 3
push.v [array]self.argument
pop.v.v self.scoreOrder
exit.i

:[103]
push.i [function]gml_Script____struct___415@anon@6552@gml_Object_oLoopManager_Create_0
conv.i.v
call.i @@NullObject@@(argc=0)
call.i method(argc=2)
dup.v 0
pop.v.v global.___struct___415
call.i @@NewGMLObject@@(argc=5)
pop.v.v local._struct
pushloc.v local._struct
pushloc.v local._players
call.i array_push(argc=2)
popz.v
push.v local._p
push.e 1
add.i.v
pop.v.v local._p
b [100]

:[104]
b [107]

> gml_Script_anon@7136@anon@6552@gml_Object_oLoopManager_Create_0 (locals=0, argc=2)
:[105]
pushi.e -1
conv.i.v
push.s "scoreOrder"@9282
conv.s.v
push.v arg.argument1
push.v arg.argument0
call.i gml_Script_array_sort_by_struct(argc=4)
ret.v

:[106]
exit.i

:[107]
push.i [function]gml_Script_anon@7136@anon@6552@gml_Object_oLoopManager_Create_0
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
pushloc.v local._players
call.i array_sort(argc=2)
popz.v
push.s ""@61
pop.v.s local._winner
pushi.e -7
pushi.e 0
push.v [array]self._players
pushi.e -9
push.v [stacktop]self.scoreOrder
pop.v.v local._mostGem
pushi.e 0
pop.v.i local._i

:[108]
pushloc.v local._i
pushloc.v local._players
call.i array_length(argc=1)
cmp.v.v LT
bf [114]

:[109]
pushi.e -7
pushloc.v local._i
conv.v.i
push.v [array]self._players
pushi.e -9
push.v [stacktop]self.scoreOrder
pushloc.v local._mostGem
cmp.v.v EQ
bf [113]

:[110]
pushloc.v local._i
pushi.e 0
cmp.i.v GT
bf [112]

:[111]
push.v local._winner
push.s " / "@10255
add.s.v
pop.v.v local._winner

:[112]
push.v local._winner
pushi.e -7
pushloc.v local._i
conv.v.i
push.v [array]self._players
pushi.e -9
push.v [stacktop]self.name
add.v.v
pop.v.v local._winner

:[113]
push.v local._i
push.e 1
add.i.v
pop.v.v local._i
b [108]

:[114]
pushloc.v local._winner
ret.v

:[115]
exit.i

:[116]
push.i [function]gml_Script_anon@6552@gml_Object_oLoopManager_Create_0
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
pop.v.v builtin.get_winner_name
pushi.e -1
pop.v.i builtin.playersConfusedFace
pushi.e -1
pop.v.i builtin.playersConfusedLitha
b [130]

> gml_Script_anon@7725@gml_Object_oLoopManager_Create_0 (locals=4, argc=0)
:[117]
pushglb.v global.playersManager
dup.v 0 8
dup.v 0
push.v stacktop.get_characters
callv.v 0
pop.v.v local._fighters
call.i @@NewGMLArray@@(argc=0)
pop.v.v local._inFightCharacters
call.i @@NewGMLArray@@(argc=0)
pop.v.v local._arrayOfPlayersWithAnotherFace
pushi.e 0
pop.v.i local._p

:[118]
pushloc.v local._p
pushloc.v local._fighters
call.i array_length(argc=1)
cmp.v.v LT
bf [123]

:[119]
pushi.e -7
pushloc.v local._p
conv.v.i
push.v [array]self._fighters
dup.v 0 8
dup.v 0
push.v stacktop.is_in_fight
callv.v 0
conv.v.b
bf [122]

:[120]
pushi.e -7
pushloc.v local._p
conv.v.i
push.v [array]self._fighters
pushi.e -9
push.v [stacktop]self.number
pushloc.v local._inFightCharacters
call.i array_push(argc=2)
popz.v
pushi.e -7
pushloc.v local._p
conv.v.i
push.v [array]self._fighters
pushglb.v global.effect
pushi.e -9
push.v [stacktop]self.anotherFace
dup.v 1 8
dup.v 0
push.v stacktop.effect_index
callv.v 1
pushi.e -1
cmp.i.v NEQ
bf [122]

:[121]
pushi.e -7
pushloc.v local._p
conv.v.i
push.v [array]self._fighters
pushi.e -9
push.v [stacktop]self.number
pushloc.v local._arrayOfPlayersWithAnotherFace
call.i array_push(argc=2)
popz.v

:[122]
push.v local._p
push.e 1
add.i.v
pop.v.v local._p
b [118]

:[123]
pushloc.v local._arrayOfPlayersWithAnotherFace
call.i array_length(argc=1)
pushi.e 0
cmp.i.v GT
bf [125]

:[124]
pushloc.v local._arrayOfPlayersWithAnotherFace
call.i array_length(argc=1)
pushi.e 1
sub.i.v
pushglb.v global.rng
call.i gml_Script_minstd_int(argc=2)
pop.v.v builtin.playersConfusedFace
b [126]

:[125]
pushi.e -1
pop.v.i builtin.playersConfusedFace

:[126]
pushloc.v local._inFightCharacters
call.i array_length(argc=1)
pushi.e 0
cmp.i.v GT
bf [128]

:[127]
pushloc.v local._inFightCharacters
call.i array_length(argc=1)
pushi.e 1
sub.i.v
pushglb.v global.rng
call.i gml_Script_minstd_int(argc=2)
pop.v.v builtin.playersConfusedLitha
b [129]

:[128]
pushi.e -1
pop.v.i builtin.playersConfusedLitha

:[129]
exit.i

:[130]
push.i [function]gml_Script_anon@7725@gml_Object_oLoopManager_Create_0
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
pop.v.v builtin.set_players_confused
pushi.e 1
pop.v.b builtin.firstRun

:[end]