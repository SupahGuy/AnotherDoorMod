:[0]
b [14]

> gml_Script_g_go_to_room (locals=0, argc=1)
:[1]
pushglb.v global.networkingManager
pushi.e -9
push.v [stacktop]self.pendingStateMachine
pushi.e 0
cmp.i.v NEQ
bt [3]

:[2]
pushglb.v global.networkingManager
pushi.e -9
push.v [stacktop]self.canSendReady
conv.v.b
not.b
b [4]

:[3]
push.e 1

:[4]
bf [6]

:[5]
exit.i

:[6]
pushglb.v global.isClient
conv.v.b
bf [8]

:[7]
pushglb.v global.networkingManager
dup.v 0 8
dup.v 0
push.v stacktop.send_ready
callv.v 0
popz.v
pushglb.v global.networkingManager
dup.v 0 8
dup.v 0
push.v stacktop.step_finished
callv.v 0
popz.v
b [13]

:[8]
pushglb.v global.networkingManager
dup.v 0 8
dup.v 0
push.v stacktop.check_client_turn
callv.v 0
conv.v.b
bt [10]

:[9]
pushglb.v global.networkingManager
pushi.e -9
push.v [stacktop]self.isNetworkGame
conv.v.b
not.b
b [11]

:[10]
push.e 1

:[11]
bf [13]

:[12]
pushglb.v global.networkingManager
dup.v 0 8
dup.v 0
push.v stacktop.send_ready
callv.v 0
popz.v
pushglb.v global.networkingManager
push.v arg.argument0
dup.v 1 8
dup.v 0
push.v stacktop.go_to_room
callv.v 1
popz.v
push.v arg.argument0
call.i gml_Script_g_apply_go_to_room(argc=1)
popz.v

:[13]
exit.i

:[14]
push.i [function]gml_Script_g_go_to_room
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pop.v.v self.g_go_to_room
popz.v
b [16]

> gml_Script_g_apply_go_to_room (locals=0, argc=1)
:[15]
pushglb.v global.networkingManager
pushi.e -9
dup.i 4
push.v [stacktop]self.turnId
push.e 1
add.i.v
pop.i.v [stacktop]self.turnId
push.v arg.argument0
call.i asset_get_index(argc=1)
call.i room_goto(argc=1)
popz.v
pushglb.v global.networkingManager
pushi.e -9
dup.i 4
push.v [stacktop]self.pendingStateMachine
push.e 1
add.i.v
pop.i.v [stacktop]self.pendingStateMachine
exit.i

:[16]
push.i [function]gml_Script_g_apply_go_to_room
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pop.v.v self.g_apply_go_to_room
popz.v
b [34]

> gml_Script_g_go_to_step (locals=0, argc=4)
:[17]
pushbltn.v builtin.argument2
pushbltn.v builtin.undefined
cmp.v.v EQ
bf [19]

:[18]
pushi.e -1
pop.v.i builtin.argument2

:[19]
pushbltn.v builtin.argument3
pushbltn.v builtin.undefined
cmp.v.v EQ
bf [21]

:[20]
pushi.e -1
pop.v.i builtin.argument3

:[21]
pushglb.v global.networkingManager
pushi.e -9
push.v [stacktop]self.pendingStateMachine
pushi.e 0
cmp.i.v NEQ
bt [23]

:[22]
pushglb.v global.networkingManager
pushi.e -9
push.v [stacktop]self.canSendReady
conv.v.b
not.b
b [24]

:[23]
push.e 1

:[24]
bf [26]

:[25]
exit.i

:[26]
pushglb.v global.isClient
conv.v.b
bf [28]

:[27]
pushglb.v global.networkingManager
dup.v 0 8
dup.v 0
push.v stacktop.send_ready
callv.v 0
popz.v
pushglb.v global.networkingManager
dup.v 0 8
dup.v 0
push.v stacktop.step_finished
callv.v 0
popz.v
b [33]

:[28]
pushglb.v global.networkingManager
dup.v 0 8
dup.v 0
push.v stacktop.check_client_turn
callv.v 0
conv.v.b
bt [30]

:[29]
pushglb.v global.networkingManager
pushi.e -9
push.v [stacktop]self.isNetworkGame
conv.v.b
not.b
b [31]

:[30]
push.e 1

:[31]
bf [33]

:[32]
pushglb.v global.networkingManager
dup.v 0 8
dup.v 0
push.v stacktop.send_ready
callv.v 0
popz.v
pushglb.v global.networkingManager
push.v arg.argument3
push.v arg.argument2
push.v arg.argument1
push.v arg.argument0
dup.v 4 8
dup.v 0
push.v stacktop.go_to_step
callv.v 4
popz.v
push.v arg.argument3
push.v arg.argument2
push.v arg.argument1
push.v arg.argument0
call.i gml_Script_g_apply_go_to_step(argc=4)
popz.v

:[33]
exit.i

:[34]
push.i [function]gml_Script_g_go_to_step
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pop.v.v self.g_go_to_step
popz.v
b [60]

> gml_Script_g_apply_go_to_step (locals=1, argc=4)
:[35]
pushglb.v global.networkingManager
pushi.e -9
dup.i 4
push.v [stacktop]self.turnId
push.e 1
add.i.v
pop.i.v [stacktop]self.turnId
push.v arg.argument1
dup.v 0
push.l 0
cmp.l.v EQ
bt [41]

:[36]
dup.v 0
push.l 1
cmp.l.v EQ
bt [42]

:[37]
dup.v 0
push.l 3
cmp.l.v EQ
bt [43]

:[38]
dup.v 0
push.l 2
cmp.l.v EQ
bt [44]

:[39]
b [41]

:[40]
b [45]

:[41]
pushglb.v global.loopManager
pop.v.v local._theId
b [45]

:[42]
pushglb.v global.fightManager
pop.v.v local._theId
b [45]

:[43]
pushglb.v global.fightManager
pushi.e -9
push.v [stacktop]self.encounter
pop.v.v local._theId
b [45]

:[44]
pushi.e 0
conv.i.v
pushref.i 40
call.i instance_find(argc=2)
pop.v.v local._theId
b [45]

:[45]
popz.v
push.v arg.argument0
pushloc.v local._theId
pushi.e -9
push.v [stacktop]self.state
cmp.v.v NEQ
bf [47]

:[46]
push.v arg.argument0
pushloc.v local._theId
pushi.e -9
pop.v.v [stacktop]self.stateNext
pushglb.v global.networkingManager
pushi.e -9
dup.i 4
push.v [stacktop]self.pendingStateMachine
push.e 1
add.i.v
pop.i.v [stacktop]self.pendingStateMachine

:[47]
push.v arg.argument3
pushi.e -1
cmp.i.v NEQ
bf [59]

:[48]
push.v arg.argument3
dup.v 0
push.l 0
cmp.l.v EQ
bt [54]

:[49]
dup.v 0
push.l 1
cmp.l.v EQ
bt [55]

:[50]
dup.v 0
push.l 3
cmp.l.v EQ
bt [56]

:[51]
dup.v 0
push.l 2
cmp.l.v EQ
bt [57]

:[52]
b [54]

:[53]
b [58]

:[54]
pushglb.v global.loopManager
pop.v.v local._theId
b [58]

:[55]
pushglb.v global.fightManager
pop.v.v local._theId
b [58]

:[56]
pushglb.v global.fightManager
pushi.e -9
push.v [stacktop]self.encounter
pop.v.v local._theId
b [58]

:[57]
pushi.e 0
conv.i.v
pushref.i 40
call.i instance_find(argc=2)
pop.v.v local._theId
b [58]

:[58]
popz.v
push.v arg.argument2
pushloc.v local._theId
pushi.e -9
pop.v.v [stacktop]self.state
push.v arg.argument2
pushloc.v local._theId
pushi.e -9
pop.v.v [stacktop]self.statePrev
push.v arg.argument2
pushloc.v local._theId
pushi.e -9
pop.v.v [stacktop]self.stateNext

:[59]
exit.i

:[60]
push.i [function]gml_Script_g_apply_go_to_step
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pop.v.v self.g_apply_go_to_step
popz.v

:[end]