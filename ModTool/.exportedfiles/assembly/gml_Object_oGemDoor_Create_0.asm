; WARNING: Missing code locals, possibly due to unsupported bytecode version or a brand new code entry.

:[0]
call.i event_inherited(argc=0)
popz.v
push.l 0
pop.v.l builtin.state
push.v builtin.state
pop.v.v builtin.statePrev
push.v builtin.state
pop.v.v builtin.stateNext
pushi.e 1
conv.b.v
call.i @@This@@(argc=0)
push.v builtin.set_disabled
callv.v 1
popz.v
pushi.e 0
pop.v.i builtin.doorOffsetX
pushi.e 0
pop.v.i builtin.doorOffsetY
pushref.i 16777642
call.i @@This@@(argc=0)
push.v builtin.define_sprite
callv.v 1
popz.v
pushref.i 16777640
pushbltn.v builtin.undefined
pushbltn.v builtin.undefined
pushi.e -1
conv.i.v
pushbltn.v builtin.undefined
pushbltn.v builtin.undefined
push.v builtin.id
push.i [function]gml_Script_myTimer
conv.i.v
call.i @@NewGMLObject@@(argc=8)
pop.v.v builtin.animDoor
b [19]

> gml_Script_anon@356@gml_Object_oGemDoor_Create_0 (locals=0, argc=1)
:[1]
pushbltn.v builtin.argument0
pushbltn.v builtin.undefined
cmp.v.v EQ
bf [3]

:[2]
pushi.e -1
pop.v.i builtin.argument0

:[3]
push.v arg.argument0
pushi.e -1
cmp.i.v EQ
bf [10]

:[4]
pushglb.v global.biomeCur
dup.v 0
pushi.e 1
cmp.i.v EQ
bt [7]

:[5]
dup.v 0
pushi.e 2
cmp.i.v EQ
bt [8]

:[6]
b [9]

:[7]
push.l 1
pop.v.l builtin.doorType
b [9]

:[8]
push.l 2
pop.v.l builtin.doorType
b [9]

:[9]
popz.v
b [11]

:[10]
push.v arg.argument0
pop.v.v builtin.doorType

:[11]
pushglb.v global.loopManager
dup.v 0 8
dup.v 0
push.v stacktop.update_level_name
callv.v 0
popz.v
push.v builtin.doorType
dup.v 0
push.l 0
cmp.l.v EQ
bt [15]

:[12]
dup.v 0
push.l 1
cmp.l.v EQ
bt [16]

:[13]
dup.v 0
push.l 2
cmp.l.v EQ
bt [17]

:[14]
b [18]

:[15]
pushglb.v global.uiPos
pushi.e -9
push.v [stacktop]self.mainSceneDoors
pushi.e -9
push.v [stacktop]self.bgExit
pushi.e -9
push.v [stacktop]self.x
pop.v.v builtin.x
pushglb.v global.uiPos
pushi.e -9
push.v [stacktop]self.mainSceneDoors
pushi.e -9
push.v [stacktop]self.bgExit
pushi.e -9
push.v [stacktop]self.y
pop.v.v builtin.y
pushref.i 16777642
call.i @@This@@(argc=0)
push.v builtin.define_sprite
callv.v 1
popz.v
pushref.i 16777640
pushbltn.v builtin.undefined
pushbltn.v builtin.undefined
pushi.e -1
conv.i.v
pushbltn.v builtin.undefined
pushbltn.v builtin.undefined
push.v builtin.id
push.i [function]gml_Script_myTimer
conv.i.v
call.i @@NewGMLObject@@(argc=8)
pop.v.v builtin.animDoor
pushglb.v global.uiPos
pushi.e -9
push.v [stacktop]self.mainSceneDoors
pushi.e -9
push.v [stacktop]self.doorExitOffset
pushi.e -9
push.v [stacktop]self.x
pop.v.v builtin.doorOffsetX
pushglb.v global.uiPos
pushi.e -9
push.v [stacktop]self.mainSceneDoors
pushi.e -9
push.v [stacktop]self.doorExitOffset
pushi.e -9
push.v [stacktop]self.y
pop.v.v builtin.doorOffsetY
b [18]

:[16]
pushglb.v global.uiPos
pushi.e -9
push.v [stacktop]self.mainSceneDoors
pushi.e -9
push.v [stacktop]self.bgForest
pushi.e -9
push.v [stacktop]self.x
pop.v.v builtin.x
pushglb.v global.uiPos
pushi.e -9
push.v [stacktop]self.mainSceneDoors
pushi.e -9
push.v [stacktop]self.bgForest
pushi.e -9
push.v [stacktop]self.y
pop.v.v builtin.y
pushref.i 16777637
call.i @@This@@(argc=0)
push.v builtin.define_sprite
callv.v 1
popz.v
pushref.i 16777641
pushbltn.v builtin.undefined
pushbltn.v builtin.undefined
pushi.e -1
conv.i.v
pushbltn.v builtin.undefined
pushbltn.v builtin.undefined
push.v builtin.id
push.i [function]gml_Script_myTimer
conv.i.v
call.i @@NewGMLObject@@(argc=8)
pop.v.v builtin.animDoor
pushglb.v global.uiPos
pushi.e -9
push.v [stacktop]self.mainSceneDoors
pushi.e -9
push.v [stacktop]self.doorForestOffset
pushi.e -9
push.v [stacktop]self.x
pop.v.v builtin.doorOffsetX
pushglb.v global.uiPos
pushi.e -9
push.v [stacktop]self.mainSceneDoors
pushi.e -9
push.v [stacktop]self.doorForestOffset
pushi.e -9
push.v [stacktop]self.y
pop.v.v builtin.doorOffsetY
b [18]

:[17]
pushglb.v global.uiPos
pushi.e -9
push.v [stacktop]self.mainSceneDoors
pushi.e -9
push.v [stacktop]self.bgCity
pushi.e -9
push.v [stacktop]self.x
pop.v.v builtin.x
pushglb.v global.uiPos
pushi.e -9
push.v [stacktop]self.mainSceneDoors
pushi.e -9
push.v [stacktop]self.bgCity
pushi.e -9
push.v [stacktop]self.y
pop.v.v builtin.y
pushref.i 16777636
call.i @@This@@(argc=0)
push.v builtin.define_sprite
callv.v 1
popz.v
pushref.i 16777639
pushbltn.v builtin.undefined
pushbltn.v builtin.undefined
pushi.e -1
conv.i.v
pushbltn.v builtin.undefined
pushbltn.v builtin.undefined
push.v builtin.id
push.i [function]gml_Script_myTimer
conv.i.v
call.i @@NewGMLObject@@(argc=8)
pop.v.v builtin.animDoor
pushglb.v global.uiPos
pushi.e -9
push.v [stacktop]self.mainSceneDoors
pushi.e -9
push.v [stacktop]self.doorCityOffset
pushi.e -9
push.v [stacktop]self.x
pop.v.v builtin.doorOffsetX
pushglb.v global.uiPos
pushi.e -9
push.v [stacktop]self.mainSceneDoors
pushi.e -9
push.v [stacktop]self.doorCityOffset
pushi.e -9
push.v [stacktop]self.y
pop.v.v builtin.doorOffsetY
b [18]

:[18]
popz.v
exit.i

:[19]
push.i [function]gml_Script_anon@356@gml_Object_oGemDoor_Create_0
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
pop.v.v builtin.change_door_type
push.v builtin.doorType
call.i @@This@@(argc=0)
push.v builtin.change_door_type
callv.v 1
popz.v
pushi.e 0
pop.v.b builtin.morseRunning
push.s ""@61
pop.v.s builtin.morseCode
pushi.e -1
pop.v.i builtin.morseCharStartTime
pushi.e -1
pop.v.i builtin.morseCharEndTime
pushi.e 300
pop.v.i builtin.morseDitLength
push.v builtin.morseDitLength
pushi.e 3
mul.i.v
pop.v.v builtin.morseDahLength
push.v builtin.morseDitLength
pop.v.v builtin.morseIntraLength
push.v builtin.morseDitLength
pushi.e 3
mul.i.v
pop.v.v builtin.morseInterLength
pushi.e 1
pop.v.i builtin.morseCharCur
pushi.e 0
pop.v.b builtin.morseLightOn
pushi.e 0
pop.v.i builtin.lightExit
b [32]

> gml_Script_anon@2814@gml_Object_oGemDoor_Create_0 (locals=3, argc=2)
:[20]
push.v arg.argument1
push.v arg.argument0
call.i string_char_at(argc=2)
pop.v.v local._char
push.v arg.argument0
call.i string_length(argc=1)
push.v arg.argument1
cmp.v.v LT
bf [22]

:[21]
push.s ""@61
pop.v.s builtin.morseCode
pushi.e 0
pop.v.b builtin.morseRunning
pushi.e 1
pop.v.i builtin.morseCharCur
exit.i

:[22]
pushbltn.v builtin.current_time
pop.v.v builtin.morseCharStartTime
push.v builtin.morseCharStartTime
pop.v.v local._lightTime
push.v builtin.morseCharStartTime
pop.v.v local._endTime
pushloc.v local._char
dup.v 0
push.s " "@3157
cmp.s.v EQ
bt [28]

:[23]
dup.v 0
push.s "."@492
cmp.s.v EQ
bt [29]

:[24]
dup.v 0
push.s "·"@3905
cmp.s.v EQ
bt [29]

:[25]
dup.v 0
push.s "-"@566
cmp.s.v EQ
bt [30]

:[26]
dup.v 0
push.s "−"@9649
cmp.s.v EQ
bt [30]

:[27]
b [31]

:[28]
push.v local._lightTime
pushi.e 0
add.i.v
pop.v.v local._lightTime
push.v local._endTime
push.v builtin.morseInterLength
add.v.v
pop.v.v local._endTime
b [31]

:[29]
push.v local._lightTime
push.v builtin.morseDitLength
add.v.v
pop.v.v local._lightTime
pushloc.v local._lightTime
push.v builtin.morseIntraLength
add.v.v
pop.v.v local._endTime
b [31]

:[30]
push.v local._lightTime
push.v builtin.morseDahLength
add.v.v
pop.v.v local._lightTime
pushloc.v local._lightTime
push.v builtin.morseIntraLength
add.v.v
pop.v.v local._endTime
b [31]

:[31]
popz.v
pushloc.v local._lightTime
pop.v.v builtin.morseLightTime
pushloc.v local._endTime
pop.v.v builtin.morseCharEndTime
exit.i

:[32]
push.i [function]gml_Script_anon@2814@gml_Object_oGemDoor_Create_0
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
pop.v.v builtin.calculate_morse_time
b [34]

> gml_Script_anon@3980@gml_Object_oGemDoor_Create_0 (locals=0, argc=1)
:[33]
push.v arg.argument0
pop.v.v builtin.morseCode
push.s "  "@7964
conv.s.v
push.v builtin.morseCode
push.s "  "@7964
conv.s.v
call.i string_concat(argc=3)
pop.v.v builtin.morseCode
pushi.e 1
pop.v.b builtin.morseRunning
pushi.e 1
pop.v.i builtin.morseCharCur
push.v builtin.morseCharCur
push.v builtin.morseCode
call.i @@This@@(argc=0)
push.v builtin.calculate_morse_time
callv.v 2
popz.v
exit.i

:[34]
push.i [function]gml_Script_anon@3980@gml_Object_oGemDoor_Create_0
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
pop.v.v builtin.send_morse_code
pushi.e 0
pop.v.i builtin.doorFrame
pushi.e 0
pop.v.i builtin.doorFrameTo
pushref.i 16777640
call.i sprite_prefetch(argc=1)
popz.v
b [38]

> gml_Script_anon@4414@gml_Object_oGemDoor_Create_0 (locals=1, argc=1)
:[35]
pushbltn.v builtin.argument0
pushbltn.v builtin.undefined
cmp.v.v EQ
bf [37]

:[36]
pushi.e 100
pop.v.i builtin.argument0

:[37]
push.v builtin.animDoor
dup.v 0 8
dup.v 0
push.v stacktop.get_sprite
callv.v 0
call.i sprite_get_number(argc=1)
pushi.e 1
sub.i.v
pushi.e 0
conv.i.v
pushi.e 100
conv.i.v
pushi.e 0
conv.i.v
push.v arg.argument0
call.i gml_Script_map_value(argc=5)
pop.v.v local._nbrImg
pushloc.v local._nbrImg
pop.v.v builtin.doorFrameTo
exit.i

:[38]
push.i [function]gml_Script_anon@4414@gml_Object_oGemDoor_Create_0
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
pop.v.v builtin.openDoor
b [42]

> gml_Script_anon@4606@gml_Object_oGemDoor_Create_0 (locals=1, argc=1)
:[39]
pushbltn.v builtin.argument0
pushbltn.v builtin.undefined
cmp.v.v EQ
bf [41]

:[40]
pushi.e 100
pop.v.i builtin.argument0

:[41]
pushi.e 0
conv.i.v
push.v builtin.animDoor
dup.v 0 8
dup.v 0
push.v stacktop.get_sprite
callv.v 0
call.i sprite_get_number(argc=1)
pushi.e 1
sub.i.v
pushi.e 100
conv.i.v
pushi.e 0
conv.i.v
push.v arg.argument0
call.i gml_Script_map_value(argc=5)
pop.v.v local._nbrImg
pushloc.v local._nbrImg
pop.v.v builtin.doorFrameTo
exit.i

:[42]
push.i [function]gml_Script_anon@4606@gml_Object_oGemDoor_Create_0
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
pop.v.v builtin.closeDoor
push.l 0
pop.v.l local._alignY
push.l 2
pop.v.l local._alignX
pushbltn.v builtin.undefined
pop.v.v builtin.gamepadBtnLinked
push.v builtin.doorType
push.l 0
cmp.l.v EQ
bf [44]

:[43]
push.l 7
pop.v.l builtin.gamepadBtnLinked
pushref.i 16777276
pop.v.v local._spriteButton
pushloc.v local._alignY
pushloc.v local._alignX
push.s "endchoice._leaveDesc"@9664
conv.s.v
push.s "endchoice._leaveTitle"@9665
conv.s.v
push.v builtin.id
push.i [function]gml_Script_cTooltip
conv.i.v
call.i @@NewGMLObject@@(argc=6)
pop.v.v local._tooltip
b [45]

:[44]
push.l 8
pop.v.l builtin.gamepadBtnLinked
pushref.i 16777281
pop.v.v local._spriteButton
pushloc.v local._alignY
pushloc.v local._alignX
pushglb.v global.loopManager
dup.v 0 8
dup.v 0
push.v stacktop.get_gem_reward
callv.v 0
push.s "endchoice._continueDesc#{0}"@9666
conv.s.v
call.i @@string@@(argc=2)
push.s "endchoice._continueTitle"@9667
conv.s.v
push.v builtin.id
push.i [function]gml_Script_cTooltip
conv.i.v
call.i @@NewGMLObject@@(argc=6)
pop.v.v local._tooltip

:[45]
pushloc.v local._tooltip
pushref.i 61
pushglb.v global.depthManager
push.s "tooltip"@4995
conv.s.v
dup.v 1 8
dup.v 0
push.v stacktop.get_depth
callv.v 1
pushglb.v global.uiPos
pushi.e -9
push.v [stacktop]self.mainSceneDoors
pushi.e -9
push.v [stacktop]self.bgExit
pushi.e -9
push.v [stacktop]self.y
pushi.e 8
sub.i.v
push.v builtin.sprite_index
call.i sprite_get_yoffset(argc=1)
sub.v.v
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
b [50]

> gml_Script_anon@5783@gml_Object_oGemDoor_Create_0 (locals=0, argc=0)
:[46]
push.v builtin.doorType
push.l 0
cmp.l.v EQ
bf [48]

:[47]
pushi.e -1
pushi.e 0
push.v [array]self.tooltip
push.s "endchoice._leaveDesc"@9664
conv.s.v
push.s "endchoice._leaveTitle"@9665
conv.s.v
dup.v 2 8
dup.v 0
push.v stacktop.updateTxt
callv.v 2
popz.v
b [49]

:[48]
pushi.e -1
pushi.e 0
push.v [array]self.tooltip
pushglb.v global.loopManager
dup.v 0 8
dup.v 0
push.v stacktop.get_gem_reward
callv.v 0
push.s "endchoice._continueDesc#{0}"@9666
conv.s.v
call.i @@string@@(argc=2)
push.s "endchoice._continueTitle"@9667
conv.s.v
dup.v 2 8
dup.v 0
push.v stacktop.updateTxt
callv.v 2
popz.v

:[49]
exit.i

:[50]
push.i [function]gml_Script_anon@5783@gml_Object_oGemDoor_Create_0
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
pop.v.v builtin.update_rewards_tooltip
pushi.e 0
pop.v.i builtin.barCompletionWidth
pushi.e 0
pop.v.i builtin.barCompletionWidthTo
push.v builtin.doorType
push.l 0
cmp.l.v NEQ
bf [52]

:[51]
pushref.i 16777385
pop.v.v builtin.sprCompletionDoor

:[52]
pushi.e 1
pop.v.b builtin.shouldReplace
b [56]

> gml_Script_anon@6320@gml_Object_oGemDoor_Create_0 (locals=0, argc=1)
:[53]
pushbltn.v builtin.argument0
pushbltn.v builtin.undefined
cmp.v.v EQ
bf [55]

:[54]
pushi.e 1
pop.v.b builtin.argument0

:[55]
push.v arg.argument0
pop.v.v builtin.shouldReplace
pushi.e 0
pop.v.i builtin.countClamp
pushi.e 0
pop.v.i builtin.clampFrame
push.v builtin.clampTightenTimer
pushi.e 1
conv.i.v
dup.v 1 8
dup.v 0
push.v stacktop.set_direction
callv.v 1
popz.v
pushglb.v global.waitingList
push.s "doorClamp"@9677
conv.s.v
dup.v 1 8
dup.v 0
push.v stacktop.set
callv.v 1
popz.v
push.l 1
pop.v.l builtin.stateNext
exit.i

:[56]
push.i [function]gml_Script_anon@6320@gml_Object_oGemDoor_Create_0
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
pop.v.v builtin.replace_door
pushi.e 0
pop.v.b builtin.isClampVisible
push.s "ease-out"@8749
conv.s.v
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
pushi.e 3
conv.i.v
push.v builtin.id
push.i [function]gml_Script_myTimer
conv.i.v
call.i @@NewGMLObject@@(argc=6)
pop.v.v builtin.clampDownTimer
pushref.i 16777913
pushbltn.v builtin.undefined
pushbltn.v builtin.undefined
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
push.v builtin.id
push.i [function]gml_Script_myTimer
conv.i.v
call.i @@NewGMLObject@@(argc=8)
pop.v.v builtin.clampTightenTimer
push.s "ease-in"@9546
conv.s.v
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
pushi.e 3
conv.i.v
push.v builtin.id
push.i [function]gml_Script_myTimer
conv.i.v
call.i @@NewGMLObject@@(argc=6)
pop.v.v builtin.clampUpTimer
pushi.e 0
pop.v.i builtin.clampAngle
pushi.e 0
pop.v.i builtin.clampX
pushi.e 0
pop.v.i builtin.clampY
pushi.e -140
pop.v.i builtin.clampYInit
pushi.e 0
pop.v.i builtin.clampFrame
pushi.e 32
pushref.i 16777638
call.i sprite_get_height(argc=1)
add.v.i
pushref.i 16777638
call.i sprite_get_yoffset(argc=1)
add.v.v
neg.v
pop.v.v builtin.clampYOffsetInit
pushref.i 16777913
call.i sprite_get_height(argc=1)
pop.v.v builtin.clampYOffsetTo
push.v builtin.clampYInit
pop.v.v builtin.clampOffsetY
push.v builtin.y
pop.v.v builtin.doorClampOffsetY
pushi.e 0
pop.v.i builtin.countClamp
b [58]

> gml_Script_anon@7210@gml_Object_oGemDoor_Create_0 (locals=0, argc=0)
:[57]
pushi.e 0
pop.v.i builtin.barCompletionWidth
pushi.e 0
pop.v.i builtin.barCompletionWidthTo
pushi.e 32
pushref.i 16777638
call.i sprite_get_height(argc=1)
add.v.i
pushref.i 16777638
call.i sprite_get_yoffset(argc=1)
add.v.v
neg.v
pop.v.v builtin.clampYOffsetInit
pushref.i 16777913
call.i sprite_get_height(argc=1)
pop.v.v builtin.clampYOffsetTo
push.v builtin.clampYInit
pop.v.v builtin.clampOffsetY
push.v builtin.y
pop.v.v builtin.doorClampOffsetY
exit.i

:[58]
push.i [function]gml_Script_anon@7210@gml_Object_oGemDoor_Create_0
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
pop.v.v builtin.reset_state

:[end]