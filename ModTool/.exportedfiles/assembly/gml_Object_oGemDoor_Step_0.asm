; WARNING: Missing code locals, possibly due to unsupported bytecode version or a brand new code entry.

:[0]
call.i gml_Script_live_call(argc=0)
conv.v.b
bf [2]

:[1]
pushglb.v global.live_result
ret.v

:[2]
call.i event_inherited(argc=0)
popz.v
push.v builtin.statePrev
push.v builtin.state
cmp.v.v NEQ
bf [3]

:[3]
push.v builtin.state
push.l 0
cmp.l.v EQ
bf [19]

:[4]
push.v builtin.statePrev
push.v builtin.state
cmp.v.v NEQ
bf [18]

:[5]
pushi.e 0
pop.v.b builtin.isClampVisible
push.v builtin.countClamp
pushi.e 1
cmp.i.v EQ
bf [7]

:[6]
push.v builtin.shouldReplace
conv.v.b
b [8]

:[7]
push.e 0

:[8]
bf [10]

:[9]
call.i @@This@@(argc=0)
push.v builtin.change_door_type
callv.v 0
popz.v
push.v builtin.clampTightenTimer
pushi.e -1
conv.i.v
dup.v 1 8
dup.v 0
push.v stacktop.set_direction
callv.v 1
popz.v
push.v builtin.clampTightenTimer
dup.v 0 8
dup.v 0
push.v stacktop.get_sprite
callv.v 0
call.i sprite_get_number(argc=1)
pushi.e 1
sub.i.v
pop.v.v builtin.clampFrame
pushi.e 0
pop.v.i builtin.barCompletionWidth
pushi.e 0
pop.v.i builtin.barCompletionWidthTo
push.l 1
pop.v.l builtin.stateNext
b [18]

:[10]
push.v builtin.countClamp
pushi.e 2
cmp.i.v EQ
bt [15]

:[11]
push.v builtin.countClamp
pushi.e 1
cmp.i.v EQ
bf [13]

:[12]
push.v builtin.shouldReplace
conv.v.b
not.b
b [14]

:[13]
push.e 0

:[14]
b [16]

:[15]
push.e 1

:[16]
bf [18]

:[17]
pushi.e 0
pop.v.i builtin.countClamp
pushglb.v global.waitingList
push.s "doorClamp"@9677
conv.s.v
dup.v 1 8
dup.v 0
push.v stacktop.remove
callv.v 1
popz.v

:[18]
b [48]

:[19]
push.v builtin.state
push.l 1
cmp.l.v EQ
bf [32]

:[20]
push.v builtin.statePrev
push.v builtin.state
cmp.v.v NEQ
bf [22]

:[21]
pushi.e 1
pop.v.b builtin.isClampVisible
push.v builtin.clampDownTimer
dup.v 0 8
dup.v 0
push.v stacktop.reset
callv.v 0
popz.v
push.v builtin.clampDownTimer
dup.v 0 8
dup.v 0
push.v stacktop.run
callv.v 0
popz.v

:[22]
push.v builtin.clampDownTimer
dup.v 0 8
dup.v 0
push.v stacktop.is_running
callv.v 0
conv.v.b
bt [24]

:[23]
push.v builtin.clampDownTimer
dup.v 0 8
dup.v 0
push.v stacktop.is_finished
callv.v 0
conv.v.b
b [25]

:[24]
push.e 1

:[25]
bf [29]

:[26]
push.v builtin.clampYOffsetTo
push.v builtin.clampYOffsetInit
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
push.v builtin.clampDownTimer
dup.v 0 8
dup.v 0
push.v stacktop.get_cur_length_normalize
callv.v 0
call.i gml_Script_map_value(argc=5)
pop.v.v builtin.clampOffsetY
push.v builtin.countClamp
pushi.e 1
cmp.i.v EQ
bf [28]

:[27]
push.v builtin.y
push.v builtin.clampYOffsetTo
sub.v.v
push.v builtin.clampOffsetY
add.v.v
pop.v.v builtin.doorClampOffsetY
b [29]

:[28]
pushbltn.v builtin.current_time
pushi.e 200
conv.i.d
div.d.v
call.i cos(argc=1)
pushi.e 32
mul.i.v
pushi.e 1
push.v builtin.clampDownTimer
dup.v 0 8
dup.v 0
push.v stacktop.get_cur_length_normalize
callv.v 0
sub.v.i
mul.v.v
pop.v.v builtin.clampAngle

:[29]
push.v builtin.clampDownTimer
dup.v 0 8
dup.v 0
push.v stacktop.is_finished
callv.v 0
conv.v.b
bf [31]

:[30]
push.l 2
pop.v.l builtin.stateNext

:[31]
b [48]

:[32]
push.v builtin.state
push.l 2
cmp.l.v EQ
bf [40]

:[33]
push.v builtin.statePrev
push.v builtin.state
cmp.v.v NEQ
bf [35]

:[34]
push.v builtin.clampTightenTimer
dup.v 0 8
dup.v 0
push.v stacktop.reset
callv.v 0
popz.v
push.v builtin.clampTightenTimer
dup.v 0 8
dup.v 0
push.v stacktop.run
callv.v 0
popz.v

:[35]
push.v builtin.clampTightenTimer
dup.v 0 8
dup.v 0
push.v stacktop.is_running
callv.v 0
conv.v.b
bf [37]

:[36]
push.v builtin.clampTightenTimer
dup.v 0 8
dup.v 0
push.v stacktop.get_current_frame
callv.v 0
pop.v.v builtin.clampFrame

:[37]
push.v builtin.clampTightenTimer
dup.v 0 8
dup.v 0
push.v stacktop.is_finished
callv.v 0
conv.v.b
bf [39]

:[38]
push.l 3
pop.v.l builtin.stateNext

:[39]
b [48]

:[40]
push.v builtin.state
push.l 3
cmp.l.v EQ
bf [48]

:[41]
push.v builtin.statePrev
push.v builtin.state
cmp.v.v NEQ
bf [43]

:[42]
push.v builtin.clampUpTimer
dup.v 0 8
dup.v 0
push.v stacktop.reset
callv.v 0
popz.v
push.v builtin.clampUpTimer
dup.v 0 8
dup.v 0
push.v stacktop.run
callv.v 0
popz.v

:[43]
push.v builtin.clampUpTimer
dup.v 0 8
dup.v 0
push.v stacktop.is_running
callv.v 0
conv.v.b
bf [46]

:[44]
push.v builtin.clampYOffsetInit
push.v builtin.clampYOffsetTo
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
push.v builtin.clampUpTimer
dup.v 0 8
dup.v 0
push.v stacktop.get_cur_length_normalize
callv.v 0
call.i gml_Script_map_value(argc=5)
pop.v.v builtin.clampOffsetY
push.v builtin.countClamp
pushi.e 0
cmp.i.v EQ
bf [46]

:[45]
push.v builtin.y
push.v builtin.clampYOffsetTo
sub.v.v
push.v builtin.clampOffsetY
add.v.v
pop.v.v builtin.doorClampOffsetY

:[46]
push.v builtin.clampUpTimer
dup.v 0 8
dup.v 0
push.v stacktop.is_finished
callv.v 0
conv.v.b
bf [48]

:[47]
push.v builtin.countClamp
push.e 1
add.i.v
pop.v.v builtin.countClamp
push.l 0
pop.v.l builtin.stateNext

:[48]
push.v builtin.state
pop.v.v builtin.statePrev
push.v builtin.stateNext
pop.v.v builtin.state
push.v builtin.morseRunning
conv.v.b
bf [54]

:[49]
pushbltn.v builtin.current_time
push.v builtin.morseLightTime
cmp.v.v LTE
bf [51]

:[50]
pushi.e 1
pop.v.b builtin.morseLightOn
b [52]

:[51]
pushi.e 0
pop.v.b builtin.morseLightOn

:[52]
pushbltn.v builtin.current_time
push.v builtin.morseCharEndTime
cmp.v.v GTE
bf [54]

:[53]
push.v builtin.morseCharCur
push.e 1
add.i.v
pop.v.v builtin.morseCharCur
push.v builtin.morseCharCur
push.v builtin.morseCode
call.i @@This@@(argc=0)
push.v builtin.calculate_morse_time
callv.v 2
popz.v

:[54]
push.v builtin.doorFrame
push.v builtin.doorFrameTo
cmp.v.v NEQ
bf [57]

:[55]
push.d 0.125
conv.d.v
push.v builtin.doorFrameTo
push.v builtin.doorFrame
call.i lerp(argc=3)
pop.v.v builtin.doorFrame
push.v builtin.doorFrame
push.v builtin.doorFrameTo
sub.v.v
call.i abs(argc=1)
pushi.e 1
cmp.i.v LT
bf [57]

:[56]
push.v builtin.doorFrameTo
pop.v.v builtin.doorFrame

:[57]
pushbltn.v builtin.room
pushref.i 50331651
cmp.v.v NEQ
bf [59]

:[58]
call.i @@This@@(argc=0)
push.v builtin.is_disabled
callv.v 0
conv.v.b
not.b
b [60]

:[59]
push.e 0

:[60]
bf [64]

:[61]
call.i @@This@@(argc=0)
push.v builtin.is_hover
callv.v 0
conv.v.b
bf [63]

:[62]
push.v builtin.animDoor
dup.v 0 8
dup.v 0
push.v stacktop.get_sprite
callv.v 0
call.i sprite_get_number(argc=1)
pushi.e 1
sub.i.v
pop.v.v builtin.doorFrameTo
b [64]

:[63]
pushi.e 0
pop.v.i builtin.doorFrameTo

:[64]
pushbltn.v builtin.room
pushref.i 50331655
cmp.v.v EQ
bf [end]

:[65]
pushglb.v global.playersManager
push.l 16
conv.l.v
dup.v 1 8
dup.v 0
push.v stacktop.someone_has_token_type
callv.v 1
conv.v.b
bf [67]

:[66]
push.v builtin.doorType
push.l 0
cmp.l.v NEQ
b [68]

:[67]
push.e 0

:[68]
bf [80]

:[69]
pushglb.v global.playersManager
push.l 16
conv.l.v
dup.v 1 8
dup.v 0
push.v stacktop.who_has_token_type
callv.v 1
pop.v.v local._whoHasMasterKey
pushloc.v local._whoHasMasterKey
pushi.e -1
cmp.i.v NEQ
bf [80]

:[70]
call.i @@This@@(argc=0)
push.v builtin.is_hover_enter
callv.v 0
conv.v.b
bf [72]

:[71]
pushglb.v global.__ElementController
pushi.e -9
pushloc.v local._whoHasMasterKey
conv.v.i
push.v [array]self.element_in_hover_enter
push.v builtin.id
cmp.v.v EQ
b [73]

:[72]
push.e 0

:[73]
bf [75]

:[74]
pushglb.v global.tvState
dup.v 0 8
dup.v 0
push.v stacktop.token_master_key
callv.v 0
popz.v
b [80]

:[75]
call.i @@This@@(argc=0)
push.v builtin.is_hover_leave
callv.v 0
conv.v.b
bf [77]

:[76]
pushglb.v global.__ElementController
pushi.e -9
pushloc.v local._whoHasMasterKey
conv.v.i
push.v [array]self.element_in_hover_leave
push.v builtin.id
cmp.v.v EQ
b [78]

:[77]
push.e 0

:[78]
bf [80]

:[79]
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

:[80]
pushref.i 11
pushi.e -9
pushenv [103]

:[81]
pushglb.v global.loopManager
pushi.e -9
push.v [stacktop]self.state
push.l 5
cmp.l.v EQ
pop.v.b local._withDefaultToken
pushglb.v global.playersManager
push.v builtin.number
dup.v 1 8
dup.v 0
push.v stacktop.get_characters
callv.v 1
pushi.e -9
push.v [stacktop]self.token
pushi.e -9
push.v [stacktop]self.theType
push.l 3
cmp.l.v EQ
bf [86]

:[82]
pushglb.v global.loopManager
pushi.e -9
push.v [stacktop]self.state
push.l 5
cmp.l.v EQ
bt [84]

:[83]
pushglb.v global.loopManager
pushi.e -9
push.v [stacktop]self.state
push.l 6
cmp.l.v EQ
b [85]

:[84]
push.e 1

:[85]
b [87]

:[86]
push.e 0

:[87]
pop.v.b local._withLostInTimeToken
pushloc.v local._withDefaultToken
conv.v.b
bt [89]

:[88]
pushloc.v local._withLostInTimeToken
conv.v.b
b [90]

:[89]
push.e 1

:[90]
bf [92]

:[91]
pushglb.v global.playersManager
push.v builtin.number
dup.v 1 8
dup.v 0
push.v stacktop.has_acted
callv.v 1
conv.v.b
not.b
b [93]

:[92]
push.e 0

:[93]
bf [103]

:[94]
pushi.e 0
pop.v.b local._verbPressed
push.v builtin.number
call.i gml_Script_InputPlayerUsingKbm(argc=1)
conv.v.b
bf [96]

:[95]
call.i @@Other@@(argc=0)
push.v builtin.number
dup.v 1 8
dup.v 0
push.v stacktop.has_number_clicked
callv.v 1
pop.v.v local._verbPressed
b [98]

:[96]
push.v builtin.number
call.i gml_Script_InputPlayerUsingGamepad(argc=1)
conv.v.b
bf [98]

:[97]
push.l 1
conv.l.v
push.v other.gamepadBtnLinked
call.i @@This@@(argc=0)
push.v builtin.is_verb_active
callv.v 2
pop.v.v local._verbPressed

:[98]
pushloc.v local._verbPressed
conv.v.b
bf [103]

:[99]
push.v other.doorType
push.l 0
cmp.l.v EQ
bf [101]

:[100]
pushglb.v global.playersManager
pushi.e 1
conv.b.v
push.l 1
conv.l.v
push.v builtin.number
dup.v 3 8
dup.v 0
push.v stacktop.send_action
callv.v 3
popz.v
b [103]

:[101]
pushglb.v global.loopManager
dup.v 0 8
dup.v 0
push.v stacktop.has_more_door
callv.v 0
conv.v.b
bf [103]

:[102]
pushglb.v global.playersManager
pushi.e 1
conv.b.v
push.l 2
conv.l.v
push.v builtin.number
dup.v 3 8
dup.v 0
push.v stacktop.send_action
callv.v 3
popz.v

:[103]
popenv [81]

:[end]