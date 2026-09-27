; WARNING: Missing code locals, possibly due to unsupported bytecode version or a brand new code entry.

:[0]
call.i gml_Script_live_call(argc=0)
conv.v.b
bf [2]

:[1]
pushglb.v global.live_result
ret.v

:[2]
pushbltn.v builtin.room
pushref.i 50331655
cmp.v.v NEQ
bf [4]

:[3]
exit.i

:[4]
push.v builtin.statePrev
push.v builtin.state
cmp.v.v NEQ
bf [6]

:[5]
pushglb.v global.effectExecutionManager
dup.v 0 8
dup.v 0
push.v stacktop.reset
callv.v 0
popz.v
pushglb.v global.deathExecutionManager
dup.v 0 8
dup.v 0
push.v stacktop.reset
callv.v 0
popz.v
pushglb.v global.doorExecutionManager
dup.v 0 8
dup.v 0
push.v stacktop.reset
callv.v 0
popz.v
pushglb.v global.networkingManager
dup.v 0 8
dup.v 0
push.v stacktop.state_switched
callv.v 0
popz.v

:[6]
push.v builtin.state
push.l 0
cmp.l.v EQ
bf [16]

:[7]
push.v builtin.statePrev
push.v builtin.state
cmp.v.v NEQ
bf [13]

:[8]
pushref.i 53
pushi.e -9
pushenv [10]

:[9]
call.i @@This@@(argc=0)
push.v builtin.open
callv.v 0
popz.v

:[10]
popenv [9]
call.i @@This@@(argc=0)
push.v builtin.set_room
callv.v 0
popz.v
pushref.i 19
pushi.e -9
pushenv [12]

:[11]
call.i @@This@@(argc=0)
push.v builtin.check_effect_activation
callv.v 0
popz.v

:[12]
popenv [11]
pushglb.v global.audio
dup.v 0 8
dup.v 0
push.v stacktop.get_music_of_situation
callv.v 0
pop.v.v global.nextMusic
pushglb.v global.audio
dup.v 0 8
dup.v 0
push.v stacktop.switch_music
callv.v 0
popz.v

:[13]
pushglb.v global.waitingList
dup.v 0 8
dup.v 0
push.v stacktop.is_waiting_list_empty
callv.v 0
conv.v.b
bf [15]

:[14]
push.l 1
conv.l.v
push.l 1
conv.l.v
call.i gml_Script_g_go_to_step(argc=2)
popz.v

:[15]
b [215]

:[16]
push.v builtin.state
push.l 1
cmp.l.v EQ
bf [20]

:[17]
pushglb.v global.effectExecutionManager
push.l 1
conv.l.v
dup.v 1 8
dup.v 0
push.v stacktop.loop
callv.v 1
popz.v
pushglb.v global.effectExecutionManager
dup.v 0 8
dup.v 0
push.v stacktop.is_finished
callv.v 0
conv.v.b
bf [19]

:[18]
push.l 1
conv.l.v
pushglb.v global.deathExecutionManager
push.l 1
conv.l.v
push.l 2
conv.l.v
dup.v 2 8
dup.v 0
push.v stacktop.check_death_state
callv.v 2
call.i gml_Script_g_go_to_step(argc=2)
popz.v

:[19]
b [215]

:[20]
push.v builtin.state
push.l 2
cmp.l.v EQ
bf [34]

:[21]
pushglb.v global.playersManager
dup.v 0 8
dup.v 0
push.v stacktop.is_anyone_fighting
callv.v 0
conv.v.b
bf [23]

:[22]
push.v builtin.statePrev
push.v builtin.state
cmp.v.v NEQ
b [24]

:[23]
push.e 0

:[24]
bf [29]

:[25]
push.v builtin.encounter
pushi.e -9
push.v [stacktop]self.activate_dialogue
pushbltn.v builtin.undefined
cmp.v.v NEQ
bf [29]

:[26]
push.v builtin.encounter
pushi.e -9
push.v [stacktop]self.dialogueRoundCount
pop.v.v local._dialogueVariable
push.v builtin.encounter
pushi.e -9
push.v [stacktop]self.structMonster
pushglb.v global.monsters
pushi.e -9
push.v [stacktop]self.faun
cmp.v.v EQ
bf [28]

:[27]
push.s "lore.ini"@5582
conv.s.v
call.i ini_open(argc=1)
popz.v
pushi.e 0
conv.i.v
push.s "encounter"@4943
conv.s.v
push.s "faun"@5316
conv.s.v
call.i ini_read_real(argc=3)
pop.v.v local._dialogueVariable
call.i ini_close(argc=0)
popz.v

:[28]
push.v builtin.encounter
pushloc.v local._dialogueVariable
dup.v 1 8
dup.v 0
push.v stacktop.activate_dialogue
callv.v 1
popz.v

:[29]
pushglb.v global.waitingList
dup.v 0 8
dup.v 0
push.v stacktop.is_waiting_list_empty
callv.v 0
conv.v.b
bf [33]

:[30]
pushglb.v global.playersManager
dup.v 0 8
dup.v 0
push.v stacktop.is_anyone_fighting
callv.v 0
conv.v.b
bf [32]

:[31]
push.l 1
conv.l.v
push.l 3
conv.l.v
call.i gml_Script_g_go_to_step(argc=2)
popz.v
b [33]

:[32]
push.l 1
conv.l.v
push.l 10
conv.l.v
call.i gml_Script_g_go_to_step(argc=2)
popz.v

:[33]
b [215]

:[34]
push.v builtin.state
push.l 3
cmp.l.v EQ
bf [56]

:[35]
push.v builtin.statePrev
push.v builtin.state
cmp.v.v NEQ
bf [46]

:[36]
pushi.e 0
pop.v.i builtin.nbrFightersAtCardDraw
pushi.e 0
pop.v.i local._f

:[37]
pushloc.v local._f
pushglb.v global.playersManager
dup.v 0 8
dup.v 0
push.v stacktop.get_characters
callv.v 0
call.i array_length(argc=1)
cmp.v.v LT
bf [41]

:[38]
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
bf [40]

:[39]
push.v builtin.nbrFightersAtCardDraw
push.e 1
add.i.v
pop.v.v builtin.nbrFightersAtCardDraw

:[40]
push.v local._f
push.e 1
add.i.v
pop.v.v local._f
b [37]

:[41]
pushglb.v global.actionCards
dup.v 0 8
dup.v 0
push.v stacktop.draw
callv.v 0
popz.v
pushglb.v global.playersManager
dup.v 0 8
dup.v 0
push.v stacktop.get_characters
callv.v 0
pop.v.v local._fighters
pushi.e 0
pop.v.i local._i

:[42]
pushloc.v local._i
pushloc.v local._fighters
call.i gml_Script_get_size(argc=1)
cmp.v.v LT
bf [46]

:[43]
pushi.e -7
pushloc.v local._i
conv.v.i
push.v [array]self._fighters
dup.v 0 8
dup.v 0
push.v stacktop.is_in_fight
callv.v 0
conv.v.b
bf [45]

:[44]
pushglb.v global.playersManager
pushi.e -7
pushloc.v local._i
conv.v.i
push.v [array]self._fighters
pushi.e -9
push.v [stacktop]self.number
dup.v 1 8
dup.v 0
push.v stacktop.apply_action
callv.v 1
popz.v

:[45]
push.v local._i
push.e 1
add.i.v
pop.v.v local._i
b [42]

:[46]
pushglb.v global.waitingList
dup.v 0 8
dup.v 0
push.v stacktop.is_waiting_list_empty
callv.v 0
conv.v.b
bf [55]

:[47]
push.v builtin.encounter
pushi.e -9
push.v [stacktop]self.structMonster
pushi.e -9
push.v [stacktop]self.category
push.l 0
cmp.l.v EQ
bt [51]

:[48]
push.v builtin.encounter
pushi.e -9
push.v [stacktop]self.structMonster
pushi.e -9
push.v [stacktop]self.category
push.l 3
cmp.l.v EQ
bt [51]

:[49]
push.v builtin.encounter
pushi.e -9
push.v [stacktop]self.structMonster
pushi.e -9
push.v [stacktop]self.category
push.l 1
cmp.l.v EQ
bt [51]

:[50]
push.v builtin.encounter
pushi.e -9
push.v [stacktop]self.structMonster
pushi.e -9
push.v [stacktop]self.category
push.l 7
cmp.l.v EQ
b [52]

:[51]
push.e 1

:[52]
bf [54]

:[53]
push.l 1
conv.l.v
push.l 5
conv.l.v
call.i gml_Script_g_go_to_step(argc=2)
popz.v
b [55]

:[54]
push.l 1
conv.l.v
push.l 4
conv.l.v
call.i gml_Script_g_go_to_step(argc=2)
popz.v

:[55]
b [215]

:[56]
push.v builtin.state
push.l 4
cmp.l.v EQ
bf [69]

:[57]
push.v builtin.statePrev
push.v builtin.state
cmp.v.v NEQ
bf [61]

:[58]
pushi.e 0
push.v builtin.encounter
pushi.e -9
pop.v.b [stacktop]self.isMiniGameFinished
pushref.i 6
pushi.e -9
pushenv [60]

:[59]
push.l 1
pop.v.l builtin.stateNext

:[60]
popenv [59]

:[61]
push.v builtin.encounter
pushi.e -9
push.v [stacktop]self.isMiniGameFinished
conv.v.b
bf [63]

:[62]
pushglb.v global.waitingList
dup.v 0 8
dup.v 0
push.v stacktop.is_waiting_list_empty
callv.v 0
conv.v.b
b [64]

:[63]
push.e 0

:[64]
bf [66]

:[65]
push.l 1
conv.l.v
pushglb.v global.deathExecutionManager
push.l 1
conv.l.v
push.l 6
conv.l.v
dup.v 2 8
dup.v 0
push.v stacktop.check_death_state
callv.v 2
call.i gml_Script_g_go_to_step(argc=2)
popz.v
b [68]

:[66]
push.v builtin.encounter
pushi.e -9
push.v [stacktop]self.stateNext
push.l 0
cmp.l.v EQ
bf [68]

:[67]
push.l 3
conv.l.v
push.l 1
conv.l.v
call.i gml_Script_g_go_to_step(argc=2)
popz.v

:[68]
b [215]

:[69]
push.v builtin.state
push.l 5
cmp.l.v EQ
bf [83]

:[70]
push.v builtin.statePrev
push.v builtin.state
cmp.v.v NEQ
bf [74]

:[71]
pushbltn.v builtin.current_time
pop.v.v global.actionDelay
pushglb.v global.loopManager
dup.v 0 8
dup.v 0
push.v stacktop.set_players_confused
callv.v 0
popz.v
pushref.i 6
pushi.e -9
pushenv [73]

:[72]
push.l 1
pop.v.l builtin.stateNext

:[73]
popenv [72]
pushglb.v global.dayNightCycle
pushi.e 0
conv.i.v
dup.v 1 8
dup.v 0
push.v stacktop.check_cycle_event
callv.v 1
popz.v

:[74]
pushglb.v global.dayNightCycle
pushi.e 1
conv.i.v
dup.v 1 8
dup.v 0
push.v stacktop.check_cycle_event
callv.v 1
popz.v
pushglb.v global.waitingList
dup.v 0 8
dup.v 0
push.v stacktop.is_waiting_list_empty
callv.v 0
conv.v.b
bf [79]

:[75]
pushglb.v global.playersManager
pushi.e 1
conv.b.v
dup.v 1 8
dup.v 0
push.v stacktop.has_every_fighters_acted
callv.v 1
conv.v.b
bt [77]

:[76]
pushglb.v global.playersManager
dup.v 0 8
dup.v 0
push.v stacktop.does_anyone_have_hp
callv.v 0
conv.v.b
not.b
b [78]

:[77]
push.e 1

:[78]
b [80]

:[79]
push.e 0

:[80]
bf [82]

:[81]
push.l 1
conv.l.v
pushglb.v global.deathExecutionManager
push.l 1
conv.l.v
push.l 6
conv.l.v
dup.v 2 8
dup.v 0
push.v stacktop.check_death_state
callv.v 2
call.i gml_Script_g_go_to_step(argc=2)
popz.v

:[82]
b [215]

:[83]
push.v builtin.state
push.l 6
cmp.l.v EQ
bf [93]

:[84]
push.v builtin.statePrev
push.v builtin.state
cmp.v.v NEQ
bf [86]

:[85]
pushglb.v global.throwExecutionManager
dup.v 0 8
dup.v 0
push.v stacktop.reset
callv.v 0
popz.v

:[86]
pushglb.v global.throwExecutionManager
dup.v 0 8
dup.v 0
push.v stacktop.loop
callv.v 0
popz.v
pushglb.v global.dayNightCycle
pushi.e 1
conv.i.v
dup.v 1 8
dup.v 0
push.v stacktop.check_cycle_event
callv.v 1
popz.v
pushglb.v global.waitingList
dup.v 0 8
dup.v 0
push.v stacktop.is_waiting_list_empty
callv.v 0
conv.v.b
bf [89]

:[87]
pushglb.v global.throwExecutionManager
dup.v 0 8
dup.v 0
push.v stacktop.is_finished
callv.v 0
conv.v.b
bf [89]

:[88]
pushglb.v global.playersManager
dup.v 0 8
dup.v 0
push.v stacktop.has_every_fighters_acted
callv.v 0
conv.v.b
b [90]

:[89]
push.e 0

:[90]
bf [92]

:[91]
push.l 1
conv.l.v
pushglb.v global.deathExecutionManager
push.l 1
conv.l.v
push.l 7
conv.l.v
dup.v 2 8
dup.v 0
push.v stacktop.check_death_state
callv.v 2
call.i gml_Script_g_go_to_step(argc=2)
popz.v

:[92]
b [215]

:[93]
push.v builtin.state
push.l 7
cmp.l.v EQ
bf [103]

:[94]
push.v builtin.statePrev
push.v builtin.state
cmp.v.v NEQ
bf [96]

:[95]
pushglb.v global.throwExecutionManager
dup.v 0 8
dup.v 0
push.v stacktop.reset
callv.v 0
popz.v

:[96]
pushglb.v global.throwExecutionManager
dup.v 0 8
dup.v 0
push.v stacktop.loop
callv.v 0
popz.v
pushglb.v global.dayNightCycle
pushi.e 1
conv.i.v
dup.v 1 8
dup.v 0
push.v stacktop.check_cycle_event
callv.v 1
popz.v
pushglb.v global.waitingList
dup.v 0 8
dup.v 0
push.v stacktop.is_waiting_list_empty
callv.v 0
conv.v.b
bf [99]

:[97]
pushglb.v global.throwExecutionManager
dup.v 0 8
dup.v 0
push.v stacktop.is_finished
callv.v 0
conv.v.b
bf [99]

:[98]
pushglb.v global.playersManager
dup.v 0 8
dup.v 0
push.v stacktop.has_every_fighters_acted
callv.v 0
conv.v.b
b [100]

:[99]
push.e 0

:[100]
bf [102]

:[101]
push.l 1
conv.l.v
pushglb.v global.deathExecutionManager
push.l 1
conv.l.v
push.l 8
conv.l.v
dup.v 2 8
dup.v 0
push.v stacktop.check_death_state
callv.v 2
call.i gml_Script_g_go_to_step(argc=2)
popz.v

:[102]
b [215]

:[103]
push.v builtin.state
push.l 8
cmp.l.v EQ
bf [107]

:[104]
pushglb.v global.effectExecutionManager
push.l 2
conv.l.v
dup.v 1 8
dup.v 0
push.v stacktop.loop
callv.v 1
popz.v
pushglb.v global.effectExecutionManager
dup.v 0 8
dup.v 0
push.v stacktop.is_finished
callv.v 0
conv.v.b
bf [106]

:[105]
push.l 1
conv.l.v
pushglb.v global.deathExecutionManager
push.l 1
conv.l.v
push.l 9
conv.l.v
dup.v 2 8
dup.v 0
push.v stacktop.check_death_state
callv.v 2
call.i gml_Script_g_go_to_step(argc=2)
popz.v

:[106]
b [215]

:[107]
push.v builtin.state
push.l 9
cmp.l.v EQ
bf [133]

:[108]
push.v builtin.statePrev
push.v builtin.state
cmp.v.v NEQ
bf [113]

:[109]
pushi.e 0
pop.v.i builtin.executeCounter
pushglb.v global.actionCards
pushi.e -9
push.v [stacktop]self.theHand
call.i array_length(argc=1)
pop.v.v builtin.executeCounterMax
push.v builtin.executeCounter
push.v builtin.executeCounterMax
cmp.v.v EQ
bf [111]

:[110]
pushi.e 1
conv.b.v
b [112]

:[111]
pushi.e 0
conv.b.v

:[112]
pop.v.v builtin.executeCounterFinished

:[113]
push.v builtin.executeCounterFinished
conv.v.b
not.b
bf [131]

:[114]
pushglb.v global.actionCards
pushi.e -9
push.v builtin.executeCounter
conv.v.i
push.v [array]self.theHand
pushi.e -9
push.v [stacktop]self.state
push.l 1
cmp.l.v EQ
bf [124]

:[115]
pushglb.v global.playersManager
dup.v 0 8
dup.v 0
push.v stacktop.get_characters
callv.v 0
pop.v.v local._fighters
pushglb.v global.actionCards
pushi.e -9
push.v builtin.executeCounter
conv.v.i
push.v [array]self.theHand
pop.v.v local._actualCard
pushi.e 0
pop.v.i local._f

:[116]
pushloc.v local._f
pushloc.v local._fighters
call.i array_length(argc=1)
cmp.v.v LT
bf [120]

:[117]
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
pushloc.v local._actualCard
pushi.e -9
push.v [stacktop]self.actionType
cmp.v.v EQ
bf [119]

:[118]
pushi.e -7
pushloc.v local._f
conv.v.i
push.v [array]self._fighters
pushi.e -9
push.v [stacktop]self.number
pushloc.v local._actualCard
pushi.e -9
push.v [stacktop]self.nbrCharLinked
call.i array_push(argc=2)
popz.v

:[119]
push.v local._f
push.e 1
add.i.v
pop.v.v local._f
b [116]

:[120]
pushloc.v local._actualCard
pushi.e -9
push.v [stacktop]self.nbrCharLinked
call.i array_length(argc=1)
pushi.e 0
cmp.i.v GT
bf [122]

:[121]
pushglb.v global.cardExecutionManager
pushloc.v local._actualCard
pushi.e -9
push.v [stacktop]self.nbrCharLinked
dup.v 1 8
dup.v 0
push.v stacktop.reset
callv.v 1
popz.v
push.l 3
pop.v.l local._cardNextState
b [123]

:[122]
push.l 4
pop.v.l local._cardNextState

:[123]
pushloc.v local._cardNextState
pushglb.v global.actionCards
pushi.e -9
push.v builtin.executeCounter
conv.v.i
push.v [array]self.theHand
pushi.e -9
pop.v.v [stacktop]self.stateNext

:[124]
pushglb.v global.actionCards
pushi.e -9
push.v builtin.executeCounter
conv.v.i
push.v [array]self.theHand
pushi.e -9
push.v [stacktop]self.state
push.l 4
cmp.l.v EQ
bf [126]

:[125]
pushglb.v global.waitingList
dup.v 0 8
dup.v 0
push.v stacktop.is_waiting_list_empty
callv.v 0
conv.v.b
b [127]

:[126]
push.e 0

:[127]
bf [130]

:[128]
push.v builtin.executeCounter
push.e 1
add.i.v
pop.v.v builtin.executeCounter
push.v builtin.executeCounter
push.v builtin.executeCounterMax
cmp.v.v EQ
bf [130]

:[129]
pushi.e 1
pop.v.b builtin.executeCounterFinished

:[130]
b [132]

:[131]
push.l 1
conv.l.v
pushglb.v global.deathExecutionManager
push.l 1
conv.l.v
push.l 10
conv.l.v
dup.v 2 8
dup.v 0
push.v stacktop.check_death_state
callv.v 2
call.i gml_Script_g_go_to_step(argc=2)
popz.v

:[132]
b [215]

:[133]
push.v builtin.state
push.l 10
cmp.l.v EQ
bf [149]

:[134]
push.v builtin.statePrev
push.v builtin.state
cmp.v.v NEQ
bf [141]

:[135]
push.v builtin.encounter
dup.v 0 8
dup.v 0
push.v stacktop.increase_fight_round_counter
callv.v 0
popz.v
pushglb.v global.playersManager
dup.v 0 8
dup.v 0
push.v stacktop.get_characters
callv.v 0
pop.v.v local._fighters
pushi.e 0
pop.v.i local._f

:[136]
pushloc.v local._f
pushloc.v local._fighters
call.i array_length(argc=1)
cmp.v.v LT
bf [140]

:[137]
pushi.e -7
pushloc.v local._f
conv.v.i
push.v [array]self._fighters
dup.v 0 8
dup.v 0
push.v stacktop.is_in_fight
callv.v 0
conv.v.b
bf [139]

:[138]
pushglb.v global.playersManager
pushi.e -7
pushloc.v local._f
conv.v.i
push.v [array]self._fighters
pushi.e -9
push.v [stacktop]self.number
dup.v 1 8
dup.v 0
push.v stacktop.apply_action
callv.v 1
popz.v

:[139]
push.v local._f
push.e 1
add.i.v
pop.v.v local._f
b [136]

:[140]
pushglb.v global.actionCards
dup.v 0 8
dup.v 0
push.v stacktop.empty_hand
callv.v 0
popz.v

:[141]
pushglb.v global.waitingList
dup.v 0 8
dup.v 0
push.v stacktop.is_waiting_list_empty
callv.v 0
conv.v.b
bf [148]

:[142]
push.v builtin.encounter
pushi.e -9
push.v [stacktop]self.fightRoundCount
push.v builtin.encounter
pushi.e -9
push.v [stacktop]self.fightRoundCountMax
cmp.v.v EQ
bt [144]

:[143]
pushglb.v global.playersManager
dup.v 0 8
dup.v 0
push.v stacktop.is_anyone_fighting
callv.v 0
conv.v.b
not.b
b [145]

:[144]
push.e 1

:[145]
bf [147]

:[146]
push.l 1
conv.l.v
push.l 18
conv.l.v
call.i gml_Script_g_go_to_step(argc=2)
popz.v
b [148]

:[147]
push.l 1
conv.l.v
push.l 2
conv.l.v
call.i gml_Script_g_go_to_step(argc=2)
popz.v

:[148]
b [215]

:[149]
push.v builtin.state
push.l 13
cmp.l.v EQ
bf [159]

:[150]
push.v builtin.statePrev
push.v builtin.state
cmp.v.v NEQ
bf [156]

:[151]
pushi.e 0
pop.v.i local._p

:[152]
pushloc.v local._p
pushglb.v global.playersCount
cmp.v.v LT
bf [156]

:[153]
pushglb.v global.playersManager
pushloc.v local._p
dup.v 1 8
dup.v 0
push.v stacktop.get_characters
callv.v 1
pushi.e -9
push.v [stacktop]self.hp
pushi.e 0
cmp.i.v LTE
bf [155]

:[154]
pushglb.v global.playersManager
pushloc.v local._p
dup.v 1 8
dup.v 0
push.v stacktop.get_characters
callv.v 1
push.l 28
conv.l.v
push.l 27
conv.l.v
call.i @@NewGMLArray@@(argc=2)
dup.v 1 8
dup.v 0
push.v stacktop.delete_effect
callv.v 1
popz.v

:[155]
push.v local._p
push.e 1
add.i.v
pop.v.v local._p
b [152]

:[156]
pushglb.v global.effectExecutionManager
push.l 27
conv.l.v
dup.v 1 8
dup.v 0
push.v stacktop.loop
callv.v 1
popz.v
pushglb.v global.effectExecutionManager
dup.v 0 8
dup.v 0
push.v stacktop.is_finished
callv.v 0
conv.v.b
bf [158]

:[157]
push.l 1
conv.l.v
push.l 12
conv.l.v
call.i gml_Script_g_go_to_step(argc=2)
popz.v

:[158]
b [215]

:[159]
push.v builtin.state
push.l 12
cmp.l.v EQ
bf [163]

:[160]
pushglb.v global.effectExecutionManager
push.l 26
conv.l.v
dup.v 1 8
dup.v 0
push.v stacktop.loop
callv.v 1
popz.v
pushglb.v global.effectExecutionManager
dup.v 0 8
dup.v 0
push.v stacktop.is_finished
callv.v 0
conv.v.b
bf [162]

:[161]
push.l 1
conv.l.v
push.l 14
conv.l.v
call.i gml_Script_g_go_to_step(argc=2)
popz.v

:[162]
b [215]

:[163]
push.v builtin.state
push.l 14
cmp.l.v EQ
bf [168]

:[164]
pushglb.v global.effectExecutionManager
push.l 28
conv.l.v
dup.v 1 8
dup.v 0
push.v stacktop.loop
callv.v 1
popz.v
pushglb.v global.effectExecutionManager
dup.v 0 8
dup.v 0
push.v stacktop.is_finished
callv.v 0
conv.v.b
bf [167]

:[165]
pushglb.v global.effectExecutionManager
dup.v 0 8
dup.v 0
push.v stacktop.is_finished
callv.v 0
conv.v.b
bf [167]

:[166]
push.l 1
conv.l.v
push.l 11
conv.l.v
call.i gml_Script_g_go_to_step(argc=2)
popz.v

:[167]
b [215]

:[168]
push.v builtin.state
push.l 11
cmp.l.v EQ
bf [179]

:[169]
push.v builtin.statePrev
push.v builtin.state
cmp.v.v NEQ
bf [171]

:[170]
pushglb.v global.deathExecutionManager
dup.v 0 8
dup.v 0
push.v stacktop.reset
callv.v 0
popz.v

:[171]
pushglb.v global.deathExecutionManager
dup.v 0 8
dup.v 0
push.v stacktop.loop
callv.v 0
popz.v
pushglb.v global.deathExecutionManager
dup.v 0 8
dup.v 0
push.v stacktop.is_finished
callv.v 0
conv.v.b
bf [178]

:[172]
pushi.e 0
pop.v.i local._f

:[173]
pushloc.v local._f
pushglb.v global.playersCount
cmp.v.v LT
bf [175]

:[174]
pushi.e 0
pushglb.v global.playersManager
pushloc.v local._f
dup.v 1 8
dup.v 0
push.v stacktop.get_characters
callv.v 1
pushi.e -9
pop.v.b [stacktop]self.isDeadThisTurn
push.v local._f
push.e 1
add.i.v
pop.v.v local._f
b [173]

:[175]
pushglb.v global.playersManager
dup.v 0 8
dup.v 0
push.v stacktop.is_anyone_fighting
callv.v 0
conv.v.b
not.b
bf [177]

:[176]
push.l 1
conv.l.v
push.l 10
conv.l.v
call.i gml_Script_g_go_to_step(argc=2)
popz.v
b [178]

:[177]
push.l 1
conv.l.v
pushglb.v global.deathExecutionManager
push.l 1
conv.l.v
pushglb.v global.deathExecutionManager
pushi.e -9
push.v [stacktop]self.stateAfterDeath
dup.v 2 8
dup.v 0
push.v stacktop.check_death_state
callv.v 2
call.i gml_Script_g_go_to_step(argc=2)
popz.v

:[178]
b [215]

:[179]
push.v builtin.state
push.l 18
cmp.l.v EQ
bf [194]

:[180]
push.v builtin.statePrev
push.v builtin.state
cmp.v.v NEQ
bf [184]

:[181]
pushglb.v global.audio
pushi.e 0
conv.b.v
pushbltn.v builtin.undefined
pushbltn.v builtin.undefined
dup.v 3 8
dup.v 0
push.v stacktop.fade_in
callv.v 3
popz.v
push.v builtin.encounter
pushi.e -9
push.v [stacktop]self.monster_script_end
pushbltn.v builtin.undefined
cmp.v.v NEQ
bf [183]

:[182]
push.v builtin.encounter
dup.v 0 8
dup.v 0
push.v stacktop.monster_script_end
callv.v 0
popz.v

:[183]
push.v builtin.encounter
call.i instance_destroy(argc=1)
popz.v
pushi.e -4
pop.v.i builtin.encounter
pushglb.v global.loopManager
pushi.e -9
dup.i 4
push.v [stacktop]self.monsterActiveNumber
push.e 1
add.i.v
pop.i.v [stacktop]self.monsterActiveNumber

:[184]
pushglb.v global.playersManager
dup.v 0 8
dup.v 0
push.v stacktop.is_anyone_fighting
callv.v 0
conv.v.b
bf [186]

:[185]
pushglb.v global.waitingList
dup.v 0 8
dup.v 0
push.v stacktop.is_waiting_list_empty
callv.v 0
conv.v.b
b [187]

:[186]
push.e 0

:[187]
bf [192]

:[188]
pushglb.v global.loopManager
dup.v 0 8
dup.v 0
push.v stacktop.has_more_monster
callv.v 0
conv.v.b
bf [190]

:[189]
push.l 1
conv.l.v
push.l 0
conv.l.v
call.i gml_Script_g_go_to_step(argc=2)
popz.v
b [191]

:[190]
push.l 1
conv.l.v
push.l 17
conv.l.v
call.i gml_Script_g_go_to_step(argc=2)
popz.v

:[191]
b [193]

:[192]
push.l 1
conv.l.v
push.l 16
conv.l.v
call.i gml_Script_g_go_to_step(argc=2)
popz.v

:[193]
b [215]

:[194]
push.v builtin.state
push.l 16
cmp.l.v EQ
bf [204]

:[195]
push.v builtin.statePrev
push.v builtin.state
cmp.v.v NEQ
bf [201]

:[196]
b [198]

> gml_Script_anon@13625@gml_Object_oFightManager_Step_0 (locals=0, argc=0)
:[197]
pushi.e 0
pushglb.v global.fightManager
pushi.e -9
pop.v.b [stacktop]self.isFightActive
exit.i

:[198]
push.i [function]gml_Script_anon@13625@gml_Object_oFightManager_Step_0
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
pop.v.v local._callback
pushloc.v local._callback
b [200]

> gml_Script____struct___365@gml_Object_oFightManager_Step_0 (locals=0, argc=0)
:[199]
call.i @@SetStatic@@(argc=0)
pushi.e -15
pushi.e 0
push.v [array]self.argument
pop.v.v self.leaveCallback
exit.i

:[200]
push.i [function]gml_Script____struct___365@gml_Object_oFightManager_Step_0
conv.i.v
call.i @@NullObject@@(argc=0)
call.i method(argc=2)
dup.v 0
pop.v.v global.___struct___365
call.i @@NewGMLObject@@(argc=2)
pushref.i 53
pushglb.v global.depthManager
push.s "roomTransition"@4992
conv.s.v
dup.v 1 8
dup.v 0
push.v stacktop.get_depth
callv.v 1
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create_depth(argc=5)
popz.v

:[201]
pushglb.v global.waitingList
dup.v 0 8
dup.v 0
push.v stacktop.is_waiting_list_empty
callv.v 0
conv.v.b
bf [203]

:[202]
push.l 1
conv.l.v
push.l 19
conv.l.v
push.l 0
conv.l.v
push.l 2
conv.l.v
call.i gml_Script_g_go_to_step(argc=4)
popz.v

:[203]
b [215]

:[204]
push.v builtin.state
push.l 17
cmp.l.v EQ
bf [214]

:[205]
push.v builtin.statePrev
push.v builtin.state
cmp.v.v NEQ
bf [211]

:[206]
b [208]

> gml_Script_anon@14083@gml_Object_oFightManager_Step_0 (locals=0, argc=0)
:[207]
pushi.e 0
pushglb.v global.fightManager
pushi.e -9
pop.v.b [stacktop]self.isFightActive
exit.i

:[208]
push.i [function]gml_Script_anon@14083@gml_Object_oFightManager_Step_0
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
pop.v.v local._callback
pushloc.v local._callback
b [210]

> gml_Script____struct___366@gml_Object_oFightManager_Step_0 (locals=0, argc=0)
:[209]
call.i @@SetStatic@@(argc=0)
pushi.e -15
pushi.e 0
push.v [array]self.argument
pop.v.v self.leaveCallback
exit.i

:[210]
push.i [function]gml_Script____struct___366@gml_Object_oFightManager_Step_0
conv.i.v
call.i @@NullObject@@(argc=0)
call.i method(argc=2)
dup.v 0
pop.v.v global.___struct___366
call.i @@NewGMLObject@@(argc=2)
pushref.i 53
pushglb.v global.depthManager
push.s "roomTransition"@4992
conv.s.v
dup.v 1 8
dup.v 0
push.v stacktop.get_depth
callv.v 1
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create_depth(argc=5)
popz.v

:[211]
pushglb.v global.waitingList
dup.v 0 8
dup.v 0
push.v stacktop.is_waiting_list_empty
callv.v 0
conv.v.b
bf [213]

:[212]
push.l 1
conv.l.v
push.l 19
conv.l.v
push.l 0
conv.l.v
push.l 3
conv.l.v
call.i gml_Script_g_go_to_step(argc=4)
popz.v

:[213]
b [215]

:[214]
push.v builtin.state
push.l 19
cmp.l.v EQ
bf [215]

:[215]
push.v builtin.state
pop.v.v builtin.statePrev
push.v builtin.stateNext
pop.v.v builtin.state

:[end]