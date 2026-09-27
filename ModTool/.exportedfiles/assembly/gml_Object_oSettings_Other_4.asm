:[0]
pushbltn.v builtin.room
pushref.i 50331656
cmp.v.v EQ
bf [2]

:[1]
push.v builtin.btnLeaveParty
dup.v 0 8
dup.v 0
push.v stacktop.hide
callv.v 0
popz.v
b [3]

:[2]
push.v builtin.btnLeaveParty
dup.v 0 8
dup.v 0
push.v stacktop.show
callv.v 0
popz.v

:[3]
pushbltn.v builtin.room
pushref.i 50331656
cmp.v.v EQ
bf [8]

:[4]
pushglb.v global.isTutorialDone
conv.v.b
bf [6]

:[5]
push.v builtin.gameplayTutorialLeft
pushi.e 1
conv.b.v
dup.v 1 8
dup.v 0
push.v stacktop.set_disabled
callv.v 1
popz.v
push.v builtin.gameplayTutorialRight
pushi.e 0
conv.b.v
dup.v 1 8
dup.v 0
push.v stacktop.set_disabled
callv.v 1
popz.v
b [7]

:[6]
push.v builtin.gameplayTutorialRight
pushi.e 1
conv.b.v
dup.v 1 8
dup.v 0
push.v stacktop.set_disabled
callv.v 1
popz.v
push.v builtin.gameplayTutorialLeft
pushi.e 0
conv.b.v
dup.v 1 8
dup.v 0
push.v stacktop.set_disabled
callv.v 1
popz.v

:[7]
b [9]

:[8]
push.v builtin.gameplayTutorialLeft
pushi.e 1
conv.b.v
dup.v 1 8
dup.v 0
push.v stacktop.set_disabled
callv.v 1
popz.v
push.v builtin.gameplayTutorialRight
pushi.e 1
conv.b.v
dup.v 1 8
dup.v 0
push.v stacktop.set_disabled
callv.v 1
popz.v

:[9]
call.i @@This@@(argc=0)
push.v builtin.switch_off
callv.v 0
popz.v

:[end]