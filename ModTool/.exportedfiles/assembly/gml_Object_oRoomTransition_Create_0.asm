:[0]
push.s "leaveCallback"@9526
conv.s.v
push.v builtin.id
call.i variable_instance_exists(argc=2)
conv.v.b
not.b
bf [2]

:[1]
pushbltn.v builtin.undefined
pop.v.v builtin.leaveCallback

:[2]
push.s "enterCallback"@10929
conv.s.v
push.v builtin.id
call.i variable_instance_exists(argc=2)
conv.v.b
not.b
bf [4]

:[3]
pushbltn.v builtin.undefined
pop.v.v builtin.enterCallback

:[4]
pushi.e 0
pop.v.b builtin.leaveCallbackActivated
b [6]

> gml_Script_anon@316@gml_Object_oRoomTransition_Create_0 (locals=0, argc=0)
:[5]
pushglb.v global.waitingList
push.v builtin.id
dup.v 1 8
dup.v 0
push.v stacktop.set
callv.v 1
popz.v
push.l 1
pop.v.l builtin.stateNext
exit.i

:[6]
push.i [function]gml_Script_anon@316@gml_Object_oRoomTransition_Create_0
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
pop.v.v builtin.open
push.s "ease-out"@8749
conv.s.v
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
push.d 0.75
conv.d.v
push.v builtin.id
push.i [function]gml_Script_myTimer
conv.i.v
call.i @@NewGMLObject@@(argc=6)
pop.v.v builtin.timerLeave
push.s "ease-in"@9546
conv.s.v
pushi.e 1
conv.i.v
push.d 0.25
conv.d.v
push.d 0.75
conv.d.v
push.v builtin.id
push.i [function]gml_Script_myTimer
conv.i.v
call.i @@NewGMLObject@@(argc=6)
pop.v.v builtin.timerEnter
pushglb.v global.waitingList
push.v builtin.id
dup.v 1 8
dup.v 0
push.v stacktop.set
callv.v 1
popz.v
pushi.e 0
pop.v.i builtin.heightR1
pushglb.v global.gameHeight
pop.v.v builtin.heightR2
pushbltn.v builtin.undefined
pop.v.v builtin.state
push.l 0
pop.v.l builtin.stateNext
pushbltn.v builtin.undefined
pop.v.v builtin.statePrev

:[end]