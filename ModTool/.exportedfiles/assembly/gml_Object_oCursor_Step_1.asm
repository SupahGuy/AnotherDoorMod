; WARNING: Missing code locals, possibly due to unsupported bytecode version or a brand new code entry.

:[0]
pushi.e 0
pop.v.b builtin.hasMovedThisStep
pushglb.v global.networkingManager
pushi.e -9
push.v [stacktop]self.isNetworkGame
conv.v.b
bf [2]

:[1]
push.v builtin.number
call.i gml_Script_InputPlayerGetGhost(argc=1)
conv.v.b
b [3]

:[2]
push.e 0

:[3]
bf [9]

:[4]
push.v builtin.verbsToSet
call.i array_length(argc=1)
pop.v.v local._verbsLength
pushloc.v local._verbsLength
pushi.e 0
cmp.i.v NEQ
bf [9]

:[5]
pushi.e 0
pop.v.i local._i

:[6]
pushloc.v local._i
pushloc.v local._verbsLength
cmp.v.v LT
bf [8]

:[7]
pushi.e -6
pushloc.v local._i
conv.v.i
push.v [array]self.verbsToSet
pop.v.v local._verb
pushloc.v local._verb
pushi.e -9
push.v [stacktop]self.type
pushloc.v local._verb
pushi.e -9
push.v [stacktop]self.value
pushloc.v local._verb
pushi.e -9
push.v [stacktop]self.verb
call.i @@This@@(argc=0)
push.v builtin.add_verb_active
callv.v 3
popz.v
push.v local._i
push.e 1
add.i.v
pop.v.v local._i
b [6]

:[8]
call.i @@NewGMLArray@@(argc=0)
pop.v.v builtin.verbsToSet

:[9]
push.v builtin.number
call.i gml_Script_InputPlayerGetGhost(argc=1)
conv.v.b
not.b
bf [33]

:[10]
push.d 0.05
conv.d.v
push.v builtin.theSpeedDecOrigin
push.v builtin.theSpeedDec
call.i lerp(argc=3)
pop.v.v builtin.theSpeedDec
push.v builtin.theSpeedDec
pushi.e 0
conv.i.v
push.v builtin.xVel
call.i lerp(argc=3)
pop.v.v builtin.xVel
push.v builtin.theSpeedDec
pushi.e 0
conv.i.v
push.v builtin.yVel
call.i lerp(argc=3)
pop.v.v builtin.yVel
push.v builtin.number
call.i gml_Script_InputPlayerUsingGamepad(argc=1)
conv.v.b
bf [17]

:[11]
push.v builtin.number
push.l 0
conv.l.v
call.i gml_Script_InputY(argc=2)
pop.v.v builtin.yVel
push.v builtin.number
push.l 0
conv.l.v
call.i gml_Script_InputX(argc=2)
pop.v.v builtin.xVel
push.v builtin.xVel
pushi.e 0
cmp.i.v NEQ
bt [13]

:[12]
push.v builtin.yVel
pushi.e 0
cmp.i.v NEQ
b [14]

:[13]
push.e 1

:[14]
bf [16]

:[15]
push.v builtin.x
push.v builtin.xVel
push.v builtin.theSpeed
mul.v.v
add.v.v
pop.v.v local._newX
push.v builtin.y
push.v builtin.yVel
push.v builtin.theSpeed
mul.v.v
add.v.v
pop.v.v local._newY
pushglb.v global.gameWidth
pushi.e 4
sub.i.v
pushi.e 0
conv.i.v
pushloc.v local._newX
call.i clamp(argc=3)
pop.v.v builtin.x
pushglb.v global.gameHeight
pushi.e 4
sub.i.v
pushi.e 0
conv.i.v
pushloc.v local._newY
call.i clamp(argc=3)
pop.v.v builtin.y

:[16]
b [19]

:[17]
push.v builtin.number
call.i gml_Script_InputPlayerUsingKbm(argc=1)
conv.v.b
bf [19]

:[18]
pushi.e 0
conv.i.v
call.i device_mouse_x_to_gui(argc=1)
pushglb.v global.zoom
div.v.v
pop.v.v builtin.x
pushi.e 0
conv.i.v
call.i device_mouse_y_to_gui(argc=1)
pushglb.v global.zoom
div.v.v
pop.v.v builtin.y

:[19]
push.v builtin.prevX
push.v builtin.x
cmp.v.v NEQ
bt [21]

:[20]
push.v builtin.prevY
push.v builtin.y
cmp.v.v NEQ
b [22]

:[21]
push.e 1

:[22]
bf [32]

:[23]
pushi.e 1
pop.v.b builtin.hasMovedThisStep
pushglb.v global.networkingManager
pushi.e -9
push.v [stacktop]self.isNetworkGame
conv.v.b
bf [29]

:[24]
push.v builtin.isCursorVisible
conv.v.b
bt [26]

:[25]
push.v builtin.isCursorVisibilityForced
conv.v.b
b [27]

:[26]
push.e 1

:[27]
bf [29]

:[28]
pushbltn.v builtin.current_time
push.v builtin.lastNetworkSend
sub.v.v
push.v builtin.networkSendInterval
cmp.v.v GTE
b [30]

:[29]
push.e 0

:[30]
bf [32]

:[31]
pushbltn.v builtin.current_time
pop.v.v builtin.lastNetworkSend
pushglb.v global.networkingManager
push.l 2
conv.l.v
push.v builtin.y
push.v builtin.x
push.v builtin.number
dup.v 4 8
dup.v 0
push.v stacktop.mouse_coordinate
callv.v 4
popz.v

:[32]
b [36]

:[33]
push.v builtin.networkTargetY
push.v builtin.networkTargetX
push.v builtin.y
push.v builtin.x
call.i point_distance(argc=4)
push.d 0.5
cmp.d.v LT
bf [35]

:[34]
push.v builtin.networkTargetX
pop.v.v builtin.x
push.v builtin.networkTargetY
pop.v.v builtin.y
b [36]

:[35]
push.d 0.25
conv.d.v
push.v builtin.networkTargetX
push.v builtin.x
call.i lerp(argc=3)
pop.v.v builtin.x
push.d 0.25
conv.d.v
push.v builtin.networkTargetY
push.v builtin.y
call.i lerp(argc=3)
pop.v.v builtin.y

:[36]
push.v builtin.hasMovedThisStep
conv.v.b
bf [38]

:[37]
call.i @@This@@(argc=0)
push.v builtin.check_hover
callv.v 0
popz.v

:[38]
pushglb.v global.networkingManager
pushi.e -9
push.v [stacktop]self.isNetworkGame
conv.v.b
bf [43]

:[39]
push.v builtin.number
call.i gml_Script_InputPlayerGetGhost(argc=1)
conv.v.b
not.b
bf [43]

:[40]
pushbltn.v builtin.room
pushref.i 50331655
cmp.v.v EQ
bf [43]

:[41]
pushref.i 54
pushi.e -9
push.v [stacktop]self.isVisible
conv.v.b
not.b
bf [43]

:[42]
pushref.i 8
call.i instance_number(argc=1)
pushi.e 0
cmp.i.v EQ
b [44]

:[43]
push.e 0

:[44]
bf [47]

:[45]
push.l 1
conv.l.v
push.l 13
conv.l.v
call.i @@This@@(argc=0)
push.v builtin.is_verb_active
callv.v 2
conv.v.b
bf [47]

:[46]
pushi.e 1
conv.b.v
push.v builtin.number
push.v builtin.isCursorVisible
conv.v.b
not.b
conv.b.v
call.i @@This@@(argc=0)
push.v builtin.show_cursor
callv.v 3
popz.v

:[47]
push.l 1
conv.l.v
push.l 12
conv.l.v
call.i @@This@@(argc=0)
push.v builtin.is_verb_active
callv.v 2
conv.v.b
bf [63]

:[48]
pushref.i 8
call.i instance_exists(argc=1)
conv.v.b
bf [50]

:[49]
pushi.e 0
conv.b.v
call.i gml_Script_pause_chatbox(argc=1)
popz.v
pushref.i 8
call.i instance_destroy(argc=1)
popz.v
b [63]

:[50]
call.i gml_Script_is_paused_controller(argc=0)
conv.v.b
not.b
bf [58]

:[51]
push.v builtin.number
call.i gml_Script_InputPlayerGetGhost(argc=1)
conv.v.b
not.b
bf [58]

:[52]
pushbltn.v builtin.room
pushref.i 50331651
cmp.v.v EQ
bt [56]

:[53]
pushbltn.v builtin.room
pushref.i 50331655
cmp.v.v EQ
bt [56]

:[54]
pushbltn.v builtin.room
pushref.i 50331649
cmp.v.v EQ
bt [56]

:[55]
pushbltn.v builtin.room
pushref.i 50331652
cmp.v.v EQ
b [57]

:[56]
push.e 1

:[57]
b [59]

:[58]
push.e 0

:[59]
bf [63]

:[60]
pushref.i 54
pushi.e -9
pushenv [62]

:[61]
call.i @@This@@(argc=0)
push.v builtin.switch_state
callv.v 0
popz.v

:[62]
popenv [61]

:[63]
push.v builtin.state
push.l 0
cmp.l.v EQ
bf [73]

:[64]
push.v builtin.statePrev
push.v builtin.state
cmp.v.v NEQ
bf [66]

:[65]
push.v builtin.spriteDefault
pop.v.v builtin.sprite_index

:[66]
push.v builtin.number
call.i gml_Script_InputPlayerGetGhost(argc=1)
conv.v.b
not.b
bf [68]

:[67]
push.l 1
conv.l.v
push.l 6
conv.l.v
call.i @@This@@(argc=0)
push.v builtin.is_verb_active
callv.v 2
conv.v.b
b [69]

:[68]
push.e 0

:[69]
bf [72]

:[70]
pushglb.v global.__ElementController
pushi.e -9
push.v builtin.number
conv.v.i
push.v [array]self.can_click
conv.v.b
bf [72]

:[71]
push.v builtin.spriteActive
pop.v.v builtin.sprite_index
push.l 1
pop.v.l builtin.stateNext

:[72]
b [92]

:[73]
push.v builtin.state
push.l 1
cmp.l.v EQ
bf [89]

:[74]
push.v builtin.statePrev
push.v builtin.state
cmp.v.v NEQ
bf [85]

:[75]
call.i @@This@@(argc=0)
push.v builtin.check_hover
callv.v 0
popz.v
pushglb.v global.__ElementController
pushi.e -9
push.v builtin.number
conv.v.i
push.v [array]self.element_in_hover
pop.v.v local._instHover
pushglb.v global.__ElementController
pushi.e -9
push.v builtin.number
conv.v.i
push.v [array]self.element_in_focus
pop.v.v local._instFocus
pushloc.v local._instHover
pushbltn.v builtin.undefined
cmp.v.v NEQ
bf [77]

:[76]
pushloc.v local._instHover
call.i instance_exists(argc=1)
conv.v.b
b [78]

:[77]
push.e 0

:[78]
bf [80]

:[79]
pushloc.v local._instHover
push.v builtin.number
dup.v 1 8
dup.v 0
push.v stacktop.click
callv.v 1
popz.v
b [85]

:[80]
pushloc.v local._instFocus
pushbltn.v builtin.undefined
cmp.v.v NEQ
bf [82]

:[81]
pushloc.v local._instFocus
call.i instance_exists(argc=1)
conv.v.b
b [83]

:[82]
push.e 0

:[83]
bf [85]

:[84]
pushloc.v local._instFocus
push.v builtin.number
dup.v 1 8
dup.v 0
push.v stacktop.remove_focus
callv.v 1
popz.v

:[85]
push.l 0
conv.l.v
push.l 6
conv.l.v
call.i @@This@@(argc=0)
push.v builtin.is_verb_active
callv.v 2
conv.v.b
bf [88]

:[86]
push.l 2
pop.v.l builtin.stateNext
pushglb.v global.__ElementController
pushi.e -9
push.v builtin.number
conv.v.i
push.v [array]self.element_in_active
pop.v.v local._elem
pushloc.v local._elem
call.i instance_exists(argc=1)
conv.v.b
bf [88]

:[87]
pushloc.v local._elem
push.v builtin.number
dup.v 1 8
dup.v 0
push.v stacktop.released
callv.v 1
popz.v

:[88]
b [92]

:[89]
push.v builtin.state
push.l 2
cmp.l.v EQ
bf [92]

:[90]
push.v builtin.statePrev
push.v builtin.state
cmp.v.v NEQ
bf [91]

:[91]
push.l 0
pop.v.l builtin.stateNext

:[92]
push.v builtin.state
pop.v.v builtin.statePrev
push.v builtin.stateNext
pop.v.v builtin.state
push.v builtin.x
pop.v.v builtin.prevX
push.v builtin.y
pop.v.v builtin.prevY

:[end]