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
pushglb.v global.doorExecutionManager
dup.v 0 8
dup.v 0
push.v stacktop.reset
callv.v 0
popz.v
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
bf [14]

:[7]
push.v builtin.statePrev
push.v builtin.state
cmp.v.v NEQ
bf [11]

:[8]
call.i @@This@@(argc=0)
push.v builtin.init_new_run
callv.v 0
popz.v
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

:[11]
pushglb.v global.waitingList
dup.v 0 8
dup.v 0
push.v stacktop.is_waiting_list_empty
callv.v 0
conv.v.b
bf [13]

:[12]
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

:[13]
b [218]

:[14]
push.v builtin.state
push.l 3
cmp.l.v EQ
bf [32]

:[15]
push.v builtin.statePrev
push.v builtin.state
cmp.v.v NEQ
bf [27]

:[16]
pushref.i 19
pushi.e -9
pushenv [18]

:[17]
call.i @@This@@(argc=0)
push.v builtin.check_effect_activation
callv.v 0
popz.v

:[18]
popenv [17]
pushglb.v global.audio
dup.v 0 8
dup.v 0
push.v stacktop.set_door_effect
callv.v 0
popz.v
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
push.v builtin.firstTime
conv.v.b
bf [20]

:[19]
pushi.e 0
pop.v.b builtin.firstTime
b [21]

:[20]
call.i @@This@@(argc=0)
push.v builtin.incr_door_counter
callv.v 0
popz.v

:[21]
pushi.e 0
pop.v.i builtin.monsterActiveNumber
pushi.e 0
pop.v.i local._i

:[22]
pushloc.v local._i
pushglb.v global.playersCount
cmp.v.v LT
bf [24]

:[23]
pushi.e 0
pushglb.v global.playersManager
pushloc.v local._i
dup.v 1 8
dup.v 0
push.v stacktop.get_characters
callv.v 1
pushi.e -9
pop.v.b [stacktop]self.isDeadThisTurn
push.v local._i
push.e 1
add.i.v
pop.v.v local._i
b [22]

:[24]
pushref.i 53
pushi.e -9
pushenv [26]

:[25]
call.i @@This@@(argc=0)
push.v builtin.open
callv.v 0
popz.v

:[26]
popenv [25]

:[27]
pushglb.v global.waitingList
dup.v 0 8
dup.v 0
push.v stacktop.is_waiting_list_empty
callv.v 0
conv.v.b
bf [31]

:[28]
call.i @@This@@(argc=0)
push.v builtin.has_more_door
callv.v 0
conv.v.b
bf [30]

:[29]
push.l 0
conv.l.v
push.l 4
conv.l.v
call.i gml_Script_g_go_to_step(argc=2)
popz.v
b [31]

:[30]
push.l 0
conv.l.v
push.l 24
conv.l.v
call.i gml_Script_g_go_to_step(argc=2)
popz.v

:[31]
b [218]

:[32]
push.v builtin.state
push.l 24
cmp.l.v EQ
bf [40]

:[33]
push.v builtin.statePrev
push.v builtin.state
cmp.v.v NEQ
bf [37]

:[34]
push.l 0
pop.v.l local._dialogueAlignY
push.l 2
pop.v.l local._dialogueAlignX
push.l 2
pop.v.l local._speaker
b [36]

> gml_Script_anon@3722@gml_Object_oLoopManager_Step_0 (locals=0, argc=0)
:[35]
pushglb.v global.doorContinue
pushi.e 0
conv.b.v
dup.v 1 8
dup.v 0
push.v stacktop.replace_door
callv.v 1
popz.v
exit.i

:[36]
push.i [function]gml_Script_anon@3722@gml_Object_oLoopManager_Step_0
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
pop.v.v local._callback
pushloc.v local._callback
call.i @@NewGMLArray@@(argc=1)
pushbltn.v builtin.undefined
pushbltn.v builtin.undefined
pushbltn.v builtin.undefined
pushbltn.v builtin.undefined
pushloc.v local._speaker
pushloc.v local._dialogueAlignY
pushloc.v local._dialogueAlignX
push.s "demo._biomeEnd6"@10266
conv.s.v
push.i [function]gml_Script_cDialogue
conv.i.v
call.i @@NewGMLObject@@(argc=10)
pushloc.v local._speaker
pushloc.v local._dialogueAlignY
pushloc.v local._dialogueAlignX
push.s "demo._biomeEnd5"@10267
conv.s.v
push.i [function]gml_Script_cDialogue
conv.i.v
call.i @@NewGMLObject@@(argc=5)
pushloc.v local._speaker
pushloc.v local._dialogueAlignY
pushloc.v local._dialogueAlignX
push.s "demo._biomeEnd4"@10268
conv.s.v
push.i [function]gml_Script_cDialogue
conv.i.v
call.i @@NewGMLObject@@(argc=5)
pushloc.v local._speaker
pushloc.v local._dialogueAlignY
pushloc.v local._dialogueAlignX
push.s "demo._biomeEnd3"@10269
conv.s.v
push.i [function]gml_Script_cDialogue
conv.i.v
call.i @@NewGMLObject@@(argc=5)
pushloc.v local._speaker
pushloc.v local._dialogueAlignY
pushloc.v local._dialogueAlignX
push.s "demo._biomeEnd2"@10270
conv.s.v
push.i [function]gml_Script_cDialogue
conv.i.v
call.i @@NewGMLObject@@(argc=5)
pushloc.v local._speaker
pushloc.v local._dialogueAlignY
pushloc.v local._dialogueAlignX
push.s "demo._biomeEnd1"@10271
conv.s.v
push.i [function]gml_Script_cDialogue
conv.i.v
call.i @@NewGMLObject@@(argc=5)
call.i @@NewGMLArray@@(argc=6)
pop.v.v local._dialogue
pushloc.v local._dialogue
call.i gml_Script_set_list_of_tooltip(argc=1)
popz.v
pushi.e -7
pushi.e 0
push.v [array]self._dialogue
pushref.i 14
pushi.e 0
conv.i.v
pushglb.v global.gameHeight
pushi.e 2
conv.i.d
div.d.v
pushglb.v global.gameWidth
pushi.e 2
conv.i.d
div.d.v
call.i instance_create_depth(argc=5)
popz.v
pushglb.v global.tvState
pushi.e 2
conv.i.v
pushbltn.v builtin.undefined
dup.v 2 8
dup.v 0
push.v stacktop.welcome
callv.v 2
popz.v
pushglb.v global.tvState
pushi.e 2
conv.i.v
dup.v 1 8
dup.v 0
push.v stacktop.suspicious
callv.v 1
popz.v

:[37]
pushglb.v global.waitingList
dup.v 0 8
dup.v 0
push.v stacktop.is_waiting_list_empty
callv.v 0
conv.v.b
bf [39]

:[38]
push.l 0
conv.l.v
push.l 23
conv.l.v
call.i gml_Script_g_go_to_step(argc=2)
popz.v

:[39]
b [218]

:[40]
push.v builtin.state
push.l 4
cmp.l.v EQ
bf [61]

:[41]
push.v builtin.statePrev
push.v builtin.state
cmp.v.v NEQ
bf [56]

:[42]
pushglb.v global.isTutorialDone
conv.v.b
not.b
bf [44]

:[43]
call.i @@This@@(argc=0)
push.v builtin.get_current_door
callv.v 0
pushi.e 1
cmp.i.v EQ
b [45]

:[44]
push.e 0

:[45]
bf [47]

:[46]
pushi.e 1
pop.v.b global.isTutorialDone
push.s "settings.ini"@4517
conv.s.v
call.i ini_open(argc=1)
popz.v
pushglb.v global.isTutorialDone
push.s "done"@7238
conv.s.v
push.s "tutorial"@4830
conv.s.v
call.i ini_write_real(argc=3)
popz.v
call.i ini_close(argc=0)
popz.v
push.l 2
conv.l.v
push.l 2
conv.l.v
push.l 2
conv.l.v
push.s "narrator._introduction_2_2"@10273
conv.s.v
push.i [function]gml_Script_cDialogue
conv.i.v
call.i @@NewGMLObject@@(argc=5)
push.l 2
conv.l.v
push.l 2
conv.l.v
push.l 2
conv.l.v
push.s "narrator._introduction_2_1"@10274
conv.s.v
push.i [function]gml_Script_cDialogue
conv.i.v
call.i @@NewGMLObject@@(argc=5)
call.i @@NewGMLArray@@(argc=2)
pop.v.v local._tooltipList
pushloc.v local._tooltipList
call.i gml_Script_set_list_of_tooltip(argc=1)
popz.v
pushi.e -7
pushi.e 0
push.v [array]self._tooltipList
pushref.i 14
pushi.e 0
conv.i.v
pushglb.v global.gameHeight
pushi.e 2
conv.i.d
div.d.v
pushglb.v global.gameWidth
pushi.e 2
conv.i.d
div.d.v
call.i instance_create_depth(argc=5)
popz.v
b [56]

:[47]
pushglb.v global.isTutorialDone
conv.v.b
bf [50]

:[48]
pushglb.v global.runCounter
pushi.e 0
cmp.i.v NEQ
bf [50]

:[49]
call.i @@This@@(argc=0)
push.v builtin.get_current_door
callv.v 0
pushi.e 0
cmp.i.v EQ
b [51]

:[50]
push.e 0

:[51]
bf [56]

:[52]
call.i @@This@@(argc=0)
push.v builtin.get_winner_name
callv.v 0
call.i gml_Script_LocPreprocessor(argc=1)
pop.v.v local._winners
pushglb.v global.runMax
pushglb.v global.runCounter
sub.v.v
pop.v.v local._turnLeft
pushloc.v local._turnLeft
pushi.e 1
cmp.i.v EQ
bf [54]

:[53]
pushloc.v local._winners
pushloc.v local._turnLeft
push.s "narrator._turnLeftSingle#{0}#{1}"@10278
conv.s.v
call.i @@string@@(argc=3)
pop.v.v local._label
b [55]

:[54]
pushloc.v local._winners
pushloc.v local._turnLeft
push.s "narrator._turnLeftPlural#{0}#{1}"@10280
conv.s.v
call.i @@string@@(argc=3)
pop.v.v local._label

:[55]
push.l 2
conv.l.v
push.l 2
conv.l.v
push.l 2
conv.l.v
pushloc.v local._label
push.i [function]gml_Script_cDialogue
conv.i.v
call.i @@NewGMLObject@@(argc=5)
pop.v.v local._tooltipStruct
pushloc.v local._tooltipStruct
pushref.i 14
pushi.e 0
conv.i.v
pushglb.v global.gameHeight
pushi.e 2
conv.i.d
div.d.v
pushglb.v global.gameWidth
pushi.e 2
conv.i.d
div.d.v
call.i instance_create_depth(argc=5)
popz.v

:[56]
pushglb.v global.waitingList
dup.v 0 8
dup.v 0
push.v stacktop.is_waiting_list_empty
callv.v 0
conv.v.b
bf [60]

:[57]
pushglb.v global.biomeCur
pushglb.v global.biomeNext
cmp.v.v NEQ
bf [59]

:[58]
push.l 0
conv.l.v
push.l 1
conv.l.v
call.i gml_Script_g_go_to_step(argc=2)
popz.v
b [60]

:[59]
push.l 0
conv.l.v
push.l 23
conv.l.v
call.i gml_Script_g_go_to_step(argc=2)
popz.v

:[60]
b [218]

:[61]
push.v builtin.state
push.l 1
cmp.l.v EQ
bf [67]

:[62]
push.v builtin.statePrev
push.v builtin.state
cmp.v.v NEQ
bf [64]

:[63]
pushglb.v global.doorContinue
pushi.e -9
push.v [stacktop]self.replace_door
call.i @@NewGMLArray@@(argc=1)
pushbltn.v builtin.undefined
pushbltn.v builtin.undefined
pushbltn.v builtin.undefined
pushbltn.v builtin.undefined
push.l 2
conv.l.v
push.l 0
conv.l.v
push.l 2
conv.l.v
pushglb.v global.biomeNext
call.i @@This@@(argc=0)
push.v builtin.get_level_name
callv.v 1
push.s "narrator._biomeEnd4#{0}"@10282
conv.s.v
call.i @@string@@(argc=2)
push.i [function]gml_Script_cDialogue
conv.i.v
call.i @@NewGMLObject@@(argc=10)
push.l 2
conv.l.v
push.l 0
conv.l.v
push.l 2
conv.l.v
push.s "narrator._biomeEnd3"@10283
conv.s.v
push.i [function]gml_Script_cDialogue
conv.i.v
call.i @@NewGMLObject@@(argc=5)
push.l 2
conv.l.v
push.l 0
conv.l.v
push.l 2
conv.l.v
pushglb.v global.biomeCur
call.i @@This@@(argc=0)
push.v builtin.get_level_name
callv.v 1
push.s "narrator._biomeEnd2#{0}"@10284
conv.s.v
call.i @@string@@(argc=2)
push.i [function]gml_Script_cDialogue
conv.i.v
call.i @@NewGMLObject@@(argc=5)
push.l 2
conv.l.v
push.l 0
conv.l.v
push.l 2
conv.l.v
push.s "narrator._biomeEnd1"@10285
conv.s.v
push.i [function]gml_Script_cDialogue
conv.i.v
call.i @@NewGMLObject@@(argc=5)
call.i @@NewGMLArray@@(argc=4)
pop.v.v local._dialogueList
pushloc.v local._dialogueList
call.i gml_Script_set_list_of_tooltip(argc=1)
popz.v
pushi.e -7
pushi.e 0
push.v [array]self._dialogueList
pushref.i 14
pushi.e 0
conv.i.v
pushglb.v global.gameHeight
pushi.e 2
conv.i.d
div.d.v
pushglb.v global.gameWidth
pushi.e 2
conv.i.d
div.d.v
call.i instance_create_depth(argc=5)
popz.v
pushglb.v global.biomeNext
pop.v.v global.biomeCur

:[64]
pushglb.v global.waitingList
dup.v 0 8
dup.v 0
push.v stacktop.is_waiting_list_empty
callv.v 0
conv.v.b
bf [66]

:[65]
push.l 0
conv.l.v
push.l 23
conv.l.v
call.i gml_Script_g_go_to_step(argc=2)
popz.v

:[66]
b [218]

:[67]
push.v builtin.state
push.l 23
cmp.l.v EQ
bf [80]

:[68]
push.v builtin.statePrev
push.v builtin.state
cmp.v.v NEQ
bf [77]

:[69]
call.i @@This@@(argc=0)
push.v builtin.has_more_door
callv.v 0
conv.v.b
bf [72]

:[70]
pushglb.v global.dayNightCycle
dup.v 0 8
dup.v 0
push.v stacktop.reset
callv.v 0
popz.v
pushglb.v global.dayNightCycle
dup.v 0 8
dup.v 0
push.v stacktop.announce_event
callv.v 0
pop.v.v local._newEvent
pushloc.v local._newEvent
conv.v.b
not.b
bf [72]

:[71]
pushglb.v global.tvState
pushi.e 2
conv.i.v
call.i @@NewGMLArray@@(argc=1)
dup.v 1 8
dup.v 0
push.v stacktop.suspicious
callv.v 1
popz.v
pushglb.v global.tvState
pushi.e 6
conv.i.v
call.i @@NewGMLArray@@(argc=1)
dup.v 1 8
dup.v 0
push.v stacktop.monsters_announcement
callv.v 1
popz.v
pushglb.v global.tvState
pushi.e 6
conv.i.v
pushi.e 2
conv.i.v
call.i @@NewGMLArray@@(argc=2)
pushbltn.v builtin.undefined
dup.v 2 8
dup.v 0
push.v stacktop.biome_forest
callv.v 2
popz.v

:[72]
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
pushglb.v global.playersManager
dup.v 0 8
dup.v 0
push.v stacktop.get_characters
callv.v 0
pop.v.v local._fighters
pushi.e 0
pop.v.i local._i

:[73]
pushloc.v local._i
pushloc.v local._fighters
call.i gml_Script_get_size(argc=1)
cmp.v.v LT
bf [77]

:[74]
pushi.e -7
pushloc.v local._i
conv.v.i
push.v [array]self._fighters
dup.v 0 8
dup.v 0
push.v stacktop.is_in_fight
callv.v 0
conv.v.b
bf [76]

:[75]
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

:[76]
push.v local._i
push.e 1
add.i.v
pop.v.v local._i
b [73]

:[77]
pushglb.v global.waitingList
dup.v 0 8
dup.v 0
push.v stacktop.is_waiting_list_empty
callv.v 0
conv.v.b
bf [79]

:[78]
push.l 0
conv.l.v
push.l 5
conv.l.v
call.i gml_Script_g_go_to_step(argc=2)
popz.v

:[79]
b [218]

:[80]
push.v builtin.state
push.l 5
cmp.l.v EQ
bf [96]

:[81]
push.v builtin.statePrev
push.v builtin.state
cmp.v.v NEQ
bf [90]

:[82]
pushbltn.v builtin.current_time
pop.v.v global.actionDelay
pushi.e 200
conv.i.v
call.i random(argc=1)
pushi.e 1
cmp.i.v LT
bf [86]

:[83]
pushref.i 29
pushi.e -9
pushenv [85]

:[84]
push.s "... --- ..."@10288
conv.s.v
call.i @@This@@(argc=0)
push.v builtin.send_morse_code
callv.v 1
popz.v

:[85]
popenv [84]

:[86]
call.i @@This@@(argc=0)
push.v builtin.has_more_door
callv.v 0
conv.v.b
bf [88]

:[87]
pushglb.v global.doorContinue
pushi.e 0
conv.b.v
dup.v 1 8
dup.v 0
push.v stacktop.set_disabled
callv.v 1
popz.v
pushglb.v global.doorExit
pushi.e 0
conv.b.v
dup.v 1 8
dup.v 0
push.v stacktop.set_disabled
callv.v 1
popz.v
b [89]

:[88]
pushglb.v global.doorExit
pushi.e 0
conv.b.v
dup.v 1 8
dup.v 0
push.v stacktop.set_disabled
callv.v 1
popz.v

:[89]
pushglb.v global.loopManager
dup.v 0 8
dup.v 0
push.v stacktop.set_players_confused
callv.v 0
popz.v

:[90]
pushglb.v global.playersManager
pushi.e 1
conv.b.v
dup.v 1 8
dup.v 0
push.v stacktop.has_every_fighters_acted
callv.v 1
conv.v.b
bf [92]

:[91]
pushglb.v global.waitingList
dup.v 0 8
dup.v 0
push.v stacktop.is_waiting_list_empty
callv.v 0
conv.v.b
b [93]

:[92]
push.e 0

:[93]
bf [95]

:[94]
push.l 0
conv.l.v
push.l 6
conv.l.v
call.i gml_Script_g_go_to_step(argc=2)
popz.v

:[95]
b [218]

:[96]
push.v builtin.state
push.l 6
cmp.l.v EQ
bf [106]

:[97]
push.v builtin.statePrev
push.v builtin.state
cmp.v.v NEQ
bf [99]

:[98]
pushglb.v global.throwExecutionManager
dup.v 0 8
dup.v 0
push.v stacktop.reset
callv.v 0
popz.v

:[99]
pushglb.v global.throwExecutionManager
dup.v 0 8
dup.v 0
push.v stacktop.loop
callv.v 0
popz.v
pushglb.v global.waitingList
dup.v 0 8
dup.v 0
push.v stacktop.is_waiting_list_empty
callv.v 0
conv.v.b
bf [102]

:[100]
pushglb.v global.throwExecutionManager
dup.v 0 8
dup.v 0
push.v stacktop.is_finished
callv.v 0
conv.v.b
bf [102]

:[101]
pushglb.v global.playersManager
dup.v 0 8
dup.v 0
push.v stacktop.has_every_fighters_acted
callv.v 0
conv.v.b
b [103]

:[102]
push.e 0

:[103]
bf [105]

:[104]
push.l 0
conv.l.v
pushglb.v global.deathExecutionManager
push.l 7
conv.l.v
dup.v 1 8
dup.v 0
push.v stacktop.check_death_state
callv.v 1
call.i gml_Script_g_go_to_step(argc=2)
popz.v

:[105]
b [218]

:[106]
push.v builtin.state
push.l 7
cmp.l.v EQ
bf [114]

:[107]
push.v builtin.statePrev
push.v builtin.state
cmp.v.v NEQ
bf [111]

:[108]
pushref.i 29
pushi.e -9
pushenv [110]

:[109]
call.i @@This@@(argc=0)
push.v builtin.closeDoor
callv.v 0
popz.v
pushi.e 1
conv.b.v
call.i @@This@@(argc=0)
push.v builtin.set_disabled
callv.v 1
popz.v

:[110]
popenv [109]
pushglb.v global.throwExecutionManager
dup.v 0 8
dup.v 0
push.v stacktop.reset
callv.v 0
popz.v

:[111]
pushglb.v global.throwExecutionManager
dup.v 0 8
dup.v 0
push.v stacktop.loop
callv.v 0
popz.v
pushglb.v global.throwExecutionManager
dup.v 0 8
dup.v 0
push.v stacktop.is_finished
callv.v 0
conv.v.b
bf [113]

:[112]
push.l 0
conv.l.v
pushglb.v global.deathExecutionManager
push.l 8
conv.l.v
dup.v 1 8
dup.v 0
push.v stacktop.check_death_state
callv.v 1
call.i gml_Script_g_go_to_step(argc=2)
popz.v

:[113]
b [218]

:[114]
push.v builtin.state
push.l 8
cmp.l.v EQ
bf [120]

:[115]
pushglb.v global.effectExecutionManager
push.l 7
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
bf [119]

:[116]
pushglb.v global.playersManager
dup.v 0 8
dup.v 0
push.v stacktop.is_anyone_leaving
callv.v 0
conv.v.b
bf [118]

:[117]
push.l 0
conv.l.v
pushglb.v global.deathExecutionManager
push.l 12
conv.l.v
dup.v 1 8
dup.v 0
push.v stacktop.check_death_state
callv.v 1
call.i gml_Script_g_go_to_step(argc=2)
popz.v
b [119]

:[118]
push.l 0
conv.l.v
pushglb.v global.deathExecutionManager
push.l 14
conv.l.v
dup.v 1 8
dup.v 0
push.v stacktop.check_death_state
callv.v 1
call.i gml_Script_g_go_to_step(argc=2)
popz.v

:[119]
b [218]

:[120]
push.v builtin.state
push.l 12
cmp.l.v EQ
bf [126]

:[121]
push.v builtin.statePrev
push.v builtin.state
cmp.v.v NEQ
bf [123]

:[122]
pushglb.v global.doorExit
dup.v 0 8
dup.v 0
push.v stacktop.openDoor
callv.v 0
popz.v

:[123]
pushglb.v global.effectExecutionManager
push.l 9
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
bf [125]

:[124]
push.l 0
conv.l.v
pushglb.v global.deathExecutionManager
push.l 10
conv.l.v
dup.v 1 8
dup.v 0
push.v stacktop.check_death_state
callv.v 1
call.i gml_Script_g_go_to_step(argc=2)
popz.v

:[125]
b [218]

:[126]
push.v builtin.state
push.l 10
cmp.l.v EQ
bf [135]

:[127]
pushglb.v global.doorExecutionManager
push.l 10
conv.l.v
dup.v 1 8
dup.v 0
push.v stacktop.loop
callv.v 1
popz.v
pushglb.v global.doorExecutionManager
dup.v 0 8
dup.v 0
push.v stacktop.is_finished
callv.v 0
conv.v.b
bf [129]

:[128]
pushglb.v global.waitingList
dup.v 0 8
dup.v 0
push.v stacktop.is_waiting_list_empty
callv.v 0
conv.v.b
b [130]

:[129]
push.e 0

:[130]
bf [134]

:[131]
pushglb.v global.playersManager
dup.v 0 8
dup.v 0
push.v stacktop.is_anyone_staying
callv.v 0
conv.v.b
bf [133]

:[132]
push.l 0
conv.l.v
pushglb.v global.deathExecutionManager
push.l 13
conv.l.v
dup.v 1 8
dup.v 0
push.v stacktop.check_death_state
callv.v 1
call.i gml_Script_g_go_to_step(argc=2)
popz.v
b [134]

:[133]
push.l 0
conv.l.v
pushglb.v global.deathExecutionManager
push.l 15
conv.l.v
dup.v 1 8
dup.v 0
push.v stacktop.check_death_state
callv.v 1
call.i gml_Script_g_go_to_step(argc=2)
popz.v

:[134]
b [218]

:[135]
push.v builtin.state
push.l 13
cmp.l.v EQ
bf [142]

:[136]
pushglb.v global.effectExecutionManager
push.l 10
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
bf [138]

:[137]
pushglb.v global.waitingList
dup.v 0 8
dup.v 0
push.v stacktop.is_waiting_list_empty
callv.v 0
conv.v.b
b [139]

:[138]
push.e 0

:[139]
bf [141]

:[140]
push.l 0
conv.l.v
pushglb.v global.deathExecutionManager
push.l 14
conv.l.v
dup.v 1 8
dup.v 0
push.v stacktop.check_death_state
callv.v 1
call.i gml_Script_g_go_to_step(argc=2)
popz.v

:[141]
b [218]

:[142]
push.v builtin.state
push.l 14
cmp.l.v EQ
bf [148]

:[143]
push.v builtin.statePrev
push.v builtin.state
cmp.v.v NEQ
bf [145]

:[144]
pushglb.v global.doorExit
dup.v 0 8
dup.v 0
push.v stacktop.closeDoor
callv.v 0
popz.v
pushglb.v global.doorContinue
dup.v 0 8
dup.v 0
push.v stacktop.openDoor
callv.v 0
popz.v

:[145]
pushglb.v global.effectExecutionManager
push.l 11
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
bf [147]

:[146]
push.l 0
conv.l.v
pushglb.v global.deathExecutionManager
push.l 11
conv.l.v
dup.v 1 8
dup.v 0
push.v stacktop.check_death_state
callv.v 1
call.i gml_Script_g_go_to_step(argc=2)
popz.v

:[147]
b [218]

:[148]
push.v builtin.state
push.l 11
cmp.l.v EQ
bf [155]

:[149]
pushglb.v global.doorExecutionManager
push.l 11
conv.l.v
dup.v 1 8
dup.v 0
push.v stacktop.loop
callv.v 1
popz.v
pushglb.v global.doorExecutionManager
dup.v 0 8
dup.v 0
push.v stacktop.is_finished
callv.v 0
conv.v.b
bf [151]

:[150]
pushglb.v global.waitingList
dup.v 0 8
dup.v 0
push.v stacktop.is_waiting_list_empty
callv.v 0
conv.v.b
b [152]

:[151]
push.e 0

:[152]
bf [154]

:[153]
push.l 0
conv.l.v
pushglb.v global.deathExecutionManager
push.l 15
conv.l.v
dup.v 1 8
dup.v 0
push.v stacktop.check_death_state
callv.v 1
call.i gml_Script_g_go_to_step(argc=2)
popz.v

:[154]
b [218]

:[155]
push.v builtin.state
push.l 15
cmp.l.v EQ
bf [171]

:[156]
push.v builtin.statePrev
push.v builtin.state
cmp.v.v NEQ
bf [166]

:[157]
pushref.i 29
pushi.e -9
pushenv [159]

:[158]
call.i @@This@@(argc=0)
push.v builtin.closeDoor
callv.v 0
popz.v

:[159]
popenv [158]
pushi.e 0
pop.v.i local._p

:[160]
pushloc.v local._p
pushglb.v global.playersCount
cmp.v.v LT
bf [166]

:[161]
pushglb.v global.playersManager
pushloc.v local._p
dup.v 1 8
dup.v 0
push.v stacktop.get_characters
callv.v 1
pop.v.v local._char
pushglb.v global.playersManager
pushloc.v local._p
dup.v 1 8
dup.v 0
push.v stacktop.is_leaving
callv.v 1
conv.v.b
bf [163]

:[162]
pushglb.v global.playersManager
push.l 14
conv.l.v
pushloc.v local._p
dup.v 2 8
dup.v 0
push.v stacktop.apply_action
callv.v 2
popz.v
pushi.e 0
pushloc.v local._char
pushi.e -9
pop.v.b [stacktop]self.isInFight
b [165]

:[163]
pushglb.v global.playersManager
pushloc.v local._p
dup.v 1 8
dup.v 0
push.v stacktop.is_staying
callv.v 1
conv.v.b
bf [165]

:[164]
pushglb.v global.playersManager
pushloc.v local._p
dup.v 1 8
dup.v 0
push.v stacktop.apply_action
callv.v 1
popz.v

:[165]
push.v local._p
push.e 1
add.i.v
pop.v.v local._p
b [160]

:[166]
pushglb.v global.waitingList
dup.v 0 8
dup.v 0
push.v stacktop.is_waiting_list_empty
callv.v 0
conv.v.b
bf [170]

:[167]
pushglb.v global.playersManager
dup.v 0 8
dup.v 0
push.v stacktop.is_anyone_fighting
callv.v 0
conv.v.b
bf [169]

:[168]
push.l 0
conv.l.v
push.l 16
conv.l.v
call.i gml_Script_g_go_to_step(argc=2)
popz.v
b [170]

:[169]
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

:[170]
b [218]

:[171]
push.v builtin.state
push.l 16
cmp.l.v EQ
bf [177]

:[172]
push.v builtin.statePrev
push.v builtin.state
cmp.v.v NEQ
bf [174]

:[173]
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
call.i instance_create_depth(argc=4)
popz.v

:[174]
pushglb.v global.waitingList
dup.v 0 8
dup.v 0
push.v stacktop.is_waiting_list_empty
callv.v 0
conv.v.b
bf [176]

:[175]
push.l 0
conv.l.v
push.l 17
conv.l.v
call.i gml_Script_g_go_to_step(argc=2)
popz.v

:[176]
b [218]

:[177]
push.v builtin.state
push.l 17
cmp.l.v EQ
bf [179]

:[178]
push.l 0
conv.l.v
push.l 18
conv.l.v
push.l 1
conv.l.v
push.l 0
conv.l.v
call.i gml_Script_g_go_to_step(argc=4)
popz.v
b [218]

:[179]
push.v builtin.state
push.l 18
cmp.l.v EQ
bf [181]

:[180]
b [218]

:[181]
push.v builtin.state
push.l 2
cmp.l.v EQ
bf [190]

:[182]
push.v builtin.statePrev
push.v builtin.state
cmp.v.v NEQ
bf [185]

:[183]
push.v global.runCounter
push.e 1
add.i.v
pop.v.v global.runCounter
call.i @@This@@(argc=0)
push.v builtin.set_winner
callv.v 0
popz.v
pushref.i 53
call.i instance_number(argc=1)
pushi.e 0
cmp.i.v EQ
bf [185]

:[184]
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
call.i instance_create_depth(argc=4)
popz.v

:[185]
pushglb.v global.waitingList
dup.v 0 8
dup.v 0
push.v stacktop.is_waiting_list_empty
callv.v 0
conv.v.b
bf [189]

:[186]
pushglb.v global.runCounter
pushglb.v global.runMax
cmp.v.v EQ
bf [188]

:[187]
push.s "roomScore"@10289
conv.s.v
call.i gml_Script_g_go_to_room(argc=1)
popz.v
b [189]

:[188]
push.l 0
conv.l.v
push.l 0
conv.l.v
call.i gml_Script_g_go_to_step(argc=2)
popz.v

:[189]
b [218]

:[190]
push.v builtin.state
push.l 20
cmp.l.v EQ
bf [200]

:[191]
push.v builtin.statePrev
push.v builtin.state
cmp.v.v NEQ
bf [197]

:[192]
pushi.e 0
pop.v.i local._p

:[193]
pushloc.v local._p
pushglb.v global.playersCount
cmp.v.v LT
bf [197]

:[194]
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
bf [196]

:[195]
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

:[196]
push.v local._p
push.e 1
add.i.v
pop.v.v local._p
b [193]

:[197]
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
bf [199]

:[198]
push.l 0
conv.l.v
push.l 21
conv.l.v
call.i gml_Script_g_go_to_step(argc=2)
popz.v

:[199]
b [218]

:[200]
push.v builtin.state
push.l 21
cmp.l.v EQ
bf [204]

:[201]
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
bf [203]

:[202]
push.l 0
conv.l.v
push.l 22
conv.l.v
call.i gml_Script_g_go_to_step(argc=2)
popz.v

:[203]
b [218]

:[204]
push.v builtin.state
push.l 22
cmp.l.v EQ
bf [208]

:[205]
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
bf [207]

:[206]
push.l 0
conv.l.v
push.l 19
conv.l.v
call.i gml_Script_g_go_to_step(argc=2)
popz.v

:[207]
b [218]

:[208]
push.v builtin.state
push.l 19
cmp.l.v EQ
bf [218]

:[209]
push.v builtin.statePrev
push.v builtin.state
cmp.v.v NEQ
bf [211]

:[210]
pushglb.v global.deathExecutionManager
dup.v 0 8
dup.v 0
push.v stacktop.reset
callv.v 0
popz.v

:[211]
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
bf [218]

:[212]
pushi.e 0
pop.v.i local._f

:[213]
pushloc.v local._f
pushglb.v global.playersCount
cmp.v.v LT
bf [215]

:[214]
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
b [213]

:[215]
pushglb.v global.playersManager
dup.v 0 8
dup.v 0
push.v stacktop.is_anyone_fighting
callv.v 0
conv.v.b
not.b
bf [217]

:[216]
push.l 0
conv.l.v
push.l 15
conv.l.v
call.i gml_Script_g_go_to_step(argc=2)
popz.v
b [218]

:[217]
push.l 0
conv.l.v
pushglb.v global.deathExecutionManager
push.l 0
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

:[218]
push.v builtin.state
pop.v.v builtin.statePrev
push.v builtin.stateNext
pop.v.v builtin.state

:[end]