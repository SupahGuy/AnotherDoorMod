; WARNING: Missing code locals, possibly due to unsupported bytecode version or a brand new code entry.

:[0]
call.i gml_Script_live_call(argc=0)
conv.v.b
bf [2]

:[1]
pushglb.v global.live_result
ret.v

:[2]
push.v builtin.statePrev
push.v builtin.state
cmp.v.v NEQ
bf [4]

:[3]
pushglb.v global.networkingManager
dup.v 0 8
dup.v 0
push.v stacktop.state_switched
callv.v 0
popz.v

:[4]
push.v builtin.state
push.l 1
cmp.l.v EQ
bf [20]

:[5]
push.v builtin.statePrev
push.v builtin.state
cmp.v.v NEQ
bf [9]

:[6]
pushglb.v global.tvState
dup.v 0 8
dup.v 0
push.v stacktop.bios
callv.v 0
popz.v
pushi.e 0
pop.v.i local._p

:[7]
pushloc.v local._p
pushglb.v global.playersCount
cmp.v.v LT
bf [9]

:[8]
pushglb.v global.playersManager
pushloc.v local._p
dup.v 1 8
dup.v 0
push.v stacktop.apply_action
callv.v 1
popz.v
push.v local._p
push.e 1
add.i.v
pop.v.v local._p
b [7]

:[9]
pushglb.v global.narratorTv
pushi.e -9
push.v [stacktop]self.typist
dup.v 0 8
dup.v 0
push.v stacktop.get_state
callv.v 0
pushi.e 1
cmp.i.v EQ
bf [14]

:[10]
push.v builtin.timerBios
dup.v 0 8
dup.v 0
push.v stacktop.is_running
callv.v 0
conv.v.b
bt [12]

:[11]
push.v builtin.timerBios
dup.v 0 8
dup.v 0
push.v stacktop.is_finished
callv.v 0
conv.v.b
b [13]

:[12]
push.e 1

:[13]
not.b
b [15]

:[14]
push.e 0

:[15]
bf [17]

:[16]
push.v builtin.timerBios
dup.v 0 8
dup.v 0
push.v stacktop.run
callv.v 0
popz.v

:[17]
push.v builtin.timerBios
dup.v 0 8
dup.v 0
push.v stacktop.is_finished
callv.v 0
conv.v.b
bf [19]

:[18]
push.l 2
conv.l.v
push.l 2
conv.l.v
call.i gml_Script_g_go_to_step(argc=2)
popz.v

:[19]
b [92]

:[20]
push.v builtin.state
push.l 2
cmp.l.v EQ
bf [26]

:[21]
push.v builtin.statePrev
push.v builtin.state
cmp.v.v NEQ
bf [23]

:[22]
pushglb.v global.tvState
dup.v 0 8
dup.v 0
push.v stacktop.calibration
callv.v 0
popz.v
pushi.e -6
pushi.e 0
push.v [array]self.firstDialogueList
pushref.i 14
pushi.e 0
conv.i.v
pushbltn.v builtin.room_height
pushi.e 32
sub.i.v
pushbltn.v builtin.room_width
pushi.e 2
conv.i.d
div.d.v
call.i instance_create_depth(argc=5)
popz.v

:[23]
pushglb.v global.waitingList
dup.v 0 8
dup.v 0
push.v stacktop.is_waiting_list_empty
callv.v 0
conv.v.b
bf [25]

:[24]
push.l 2
conv.l.v
push.l 4
conv.l.v
call.i gml_Script_g_go_to_step(argc=2)
popz.v

:[25]
b [92]

:[26]
push.v builtin.state
push.l 4
cmp.l.v EQ
bf [75]

:[27]
push.v builtin.statePrev
push.v builtin.state
cmp.v.v NEQ
bf [31]

:[28]
push.v builtin.bookTimer
dup.v 0 8
dup.v 0
push.v stacktop.run
callv.v 0
popz.v
pushref.i 11
pushi.e -9
pushenv [30]

:[29]
push.l 1
conv.l.v
call.i @@This@@(argc=0)
push.v builtin.set_sprite
callv.v 1
popz.v

:[30]
popenv [29]

:[31]
pushi.e 0
pop.v.i local._offsetY1
push.v builtin.bookTimer
dup.v 0 8
dup.v 0
push.v stacktop.is_running
callv.v 0
conv.v.b
bt [33]

:[32]
push.v builtin.bookTimer
dup.v 0 8
dup.v 0
push.v stacktop.is_finished
callv.v 0
conv.v.b
b [34]

:[33]
push.e 1

:[34]
bf [36]

:[35]
push.v builtin.bookTimer
dup.v 0 8
dup.v 0
push.v stacktop.get_cur_length_normalize
callv.v 0
pop.v.v local._length1
pushi.e 0
conv.i.v
push.v builtin.bookOffsetYMax
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
pushloc.v local._length1
call.i gml_Script_map_value(argc=5)
pop.v.v local._offsetY1

:[36]
pushi.e 0
pop.v.i local._offsetY2
push.v builtin.bookFinishedTimer
dup.v 0 8
dup.v 0
push.v stacktop.is_running
callv.v 0
conv.v.b
bt [38]

:[37]
push.v builtin.bookFinishedTimer
dup.v 0 8
dup.v 0
push.v stacktop.is_finished
callv.v 0
conv.v.b
b [39]

:[38]
push.e 1

:[39]
bf [41]

:[40]
push.v builtin.bookFinishedTimer
dup.v 0 8
dup.v 0
push.v stacktop.get_cur_length_normalize
callv.v 0
pop.v.v local._length2
push.v builtin.bookOffsetYMax
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
pushloc.v local._length2
call.i gml_Script_map_value(argc=5)
pop.v.v local._offsetY2

:[41]
pushloc.v local._offsetY1
pushloc.v local._offsetY2
add.v.v
pop.v.v builtin.bookOffsetY
pushref.i 11
pushi.e -9
pushenv [62]

:[42]
push.l 1
conv.l.v
push.l 6
conv.l.v
call.i @@This@@(argc=0)
push.v builtin.is_verb_active
callv.v 2
conv.v.b
bf [62]

:[43]
pushi.e 0
pop.v.i local._p

:[44]
pushloc.v local._p
push.v other.bookPositionList
call.i gml_Script_get_size(argc=1)
cmp.v.v LT
bf [62]

:[45]
call.i @@Other@@(argc=0)
pushi.e -9
pushloc.v local._p
conv.v.i
push.v [arraypushaf]self.bookPositionList
pushi.e 1
pushaf.e
pushi.e 76
add.i.v
push.v other.bookOffsetY
add.v.v
pushi.e 30
sub.i.v
call.i @@Other@@(argc=0)
pushi.e -9
pushloc.v local._p
conv.v.i
push.v [arraypushaf]self.bookPositionList
pushi.e 0
pushaf.e
pushi.e 50
add.i.v
call.i @@Other@@(argc=0)
pushi.e -9
pushloc.v local._p
conv.v.i
push.v [arraypushaf]self.bookPositionList
pushi.e 1
pushaf.e
push.v other.bookOffsetY
add.v.v
pushi.e 16
sub.i.v
call.i @@Other@@(argc=0)
pushi.e -9
pushloc.v local._p
conv.v.i
push.v [arraypushaf]self.bookPositionList
pushi.e 0
pushaf.e
push.v builtin.y
push.v builtin.x
call.i point_in_rectangle(argc=6)
conv.v.b
bf [61]

:[46]
pushi.e 0
pop.v.i local._actionToApply
pushloc.v local._p
dup.v 0
pushi.e 0
cmp.i.v EQ
bt [54]

:[47]
dup.v 0
pushi.e 1
cmp.i.v EQ
bt [55]

:[48]
dup.v 0
pushi.e 2
cmp.i.v EQ
bt [56]

:[49]
dup.v 0
pushi.e 3
cmp.i.v EQ
bt [57]

:[50]
dup.v 0
pushi.e 4
cmp.i.v EQ
bt [58]

:[51]
dup.v 0
pushi.e 5
cmp.i.v EQ
bt [59]

:[52]
b [54]

:[53]
b [60]

:[54]
push.l 3
pop.v.l local._actionToApply
b [60]

:[55]
push.l 4
pop.v.l local._actionToApply
b [60]

:[56]
push.l 5
pop.v.l local._actionToApply
b [60]

:[57]
push.l 6
pop.v.l local._actionToApply
b [60]

:[58]
push.l 7
pop.v.l local._actionToApply
b [60]

:[59]
push.l 8
pop.v.l local._actionToApply
b [60]

:[60]
popz.v
pushglb.v global.playersManager
pushloc.v local._actionToApply
push.v builtin.number
dup.v 2 8
dup.v 0
push.v stacktop.send_action
callv.v 2
popz.v
call.i @@Other@@(argc=0)
pushloc.v local._p
push.v builtin.number
push.v builtin.y
push.v builtin.x
dup.v 4 8
dup.v 0
push.v stacktop.send_stamp
callv.v 4
popz.v
b [62]

:[61]
push.v local._p
push.e 1
add.i.v
pop.v.v local._p
b [44]

:[62]
popenv [42]
pushglb.v global.playersManager
dup.v 0 8
dup.v 0
push.v stacktop.has_everyone_acted
callv.v 0
conv.v.b
bf [64]

:[63]
push.v builtin.bookFinishedTimerActive
conv.v.b
not.b
b [65]

:[64]
push.e 0

:[65]
bf [67]

:[66]
pushi.e 1
pop.v.b builtin.bookFinishedTimerActive
push.v builtin.bookFinishedTimer
dup.v 0 8
dup.v 0
push.v stacktop.run
callv.v 0
popz.v

:[67]
push.v builtin.bookFinishedTimer
dup.v 0 8
dup.v 0
push.v stacktop.is_finished
callv.v 0
conv.v.b
bf [69]

:[68]
pushglb.v global.waitingList
dup.v 0 8
dup.v 0
push.v stacktop.is_waiting_list_empty
callv.v 0
conv.v.b
b [70]

:[69]
push.e 0

:[70]
bf [74]

:[71]
pushglb.v global.isTutorialDone
conv.v.b
bf [73]

:[72]
push.l 2
conv.l.v
push.l 5
conv.l.v
call.i gml_Script_g_go_to_step(argc=2)
popz.v
b [74]

:[73]
push.l 2
conv.l.v
push.l 3
conv.l.v
call.i gml_Script_g_go_to_step(argc=2)
popz.v

:[74]
b [92]

:[75]
push.v builtin.state
push.l 3
cmp.l.v EQ
bf [85]

:[76]
push.v builtin.statePrev
push.v builtin.state
cmp.v.v NEQ
bf [82]

:[77]
call.i @@This@@(argc=0)
push.v builtin.generate_characters
callv.v 0
popz.v
pushref.i 11
pushi.e -9
pushenv [79]

:[78]
call.i @@This@@(argc=0)
push.v builtin.set_sprite
callv.v 0
popz.v

:[79]
popenv [78]
pushref.i 57
pushi.e -9
pushenv [81]

:[80]
call.i instance_destroy(argc=0)
popz.v

:[81]
popenv [80]
pushglb.v global.particlesSys
call.i part_particles_clear(argc=1)
popz.v
call.i @@This@@(argc=0)
push.v builtin.add_dialogue_character
callv.v 0
popz.v

:[82]
pushglb.v global.waitingList
dup.v 0 8
dup.v 0
push.v stacktop.is_waiting_list_empty
callv.v 0
conv.v.b
bf [84]

:[83]
push.l 2
conv.l.v
push.l 5
conv.l.v
call.i gml_Script_g_go_to_step(argc=2)
popz.v

:[84]
b [92]

:[85]
push.v builtin.state
push.l 5
cmp.l.v EQ
bf [92]

:[86]
push.v builtin.statePrev
push.v builtin.state
cmp.v.v NEQ
bf [90]

:[87]
pushglb.v global.isTutorialDone
conv.v.b
bf [89]

:[88]
call.i @@This@@(argc=0)
push.v builtin.generate_characters
callv.v 0
popz.v

:[89]
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

:[90]
pushglb.v global.waitingList
dup.v 0 8
dup.v 0
push.v stacktop.is_waiting_list_empty
callv.v 0
conv.v.b
bf [92]

:[91]
push.s "roomStage"@10016
conv.s.v
call.i gml_Script_g_go_to_room(argc=1)
popz.v

:[92]
push.v builtin.state
pop.v.v builtin.statePrev
push.v builtin.stateNext
pop.v.v builtin.state

:[end]