; WARNING: Missing code locals, possibly due to unsupported bytecode version or a brand new code entry.

:[0]
push.v builtin.state
push.l 0
cmp.l.v EQ
bf [13]

:[1]
push.v builtin.statePrev
push.v builtin.state
cmp.v.v NEQ
bf [3]

:[2]
push.v builtin.timerLeave
dup.v 0 8
dup.v 0
push.v stacktop.run
callv.v 0
popz.v

:[3]
push.v builtin.timerLeave
dup.v 0 8
dup.v 0
push.v stacktop.is_running
callv.v 0
conv.v.b
bt [5]

:[4]
push.v builtin.timerLeave
dup.v 0 8
dup.v 0
push.v stacktop.is_finished
callv.v 0
conv.v.b
b [6]

:[5]
push.e 1

:[6]
bf [8]

:[7]
push.v builtin.timerLeave
dup.v 0 8
dup.v 0
push.v stacktop.get_cur_length_normalize
callv.v 0
pop.v.v local._norm
pushglb.v global.gameHeight
pushi.e 2
conv.i.d
div.d.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
pushloc.v local._norm
call.i gml_Script_map_value(argc=5)
pop.v.v builtin.heightR1
pushglb.v global.gameHeight
pushi.e 2
conv.i.d
div.d.v
pushglb.v global.gameHeight
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
pushloc.v local._norm
call.i gml_Script_map_value(argc=5)
pop.v.v builtin.heightR2

:[8]
push.v builtin.timerLeave
dup.v 0 8
dup.v 0
push.v stacktop.is_finished
callv.v 0
conv.v.b
bf [12]

:[9]
push.v builtin.leaveCallback
pushbltn.v builtin.undefined
cmp.v.v NEQ
bf [11]

:[10]
pushi.e 1
pop.v.b builtin.leaveCallbackActivated
call.i @@This@@(argc=0)
push.v builtin.leaveCallback
callv.v 0
popz.v

:[11]
push.v builtin.timerLeave
dup.v 0 8
dup.v 0
push.v stacktop.reset
callv.v 0
popz.v
pushglb.v global.waitingList
push.v builtin.id
dup.v 1 8
dup.v 0
push.v stacktop.remove
callv.v 1
popz.v

:[12]
b [30]

:[13]
push.v builtin.state
push.l 1
cmp.l.v EQ
bf [30]

:[14]
push.v builtin.statePrev
push.v builtin.state
cmp.v.v NEQ
bf [21]

:[15]
push.v builtin.leaveCallbackActivated
conv.v.b
not.b
bf [17]

:[16]
push.v builtin.leaveCallback
pushbltn.v builtin.undefined
cmp.v.v NEQ
b [18]

:[17]
push.e 0

:[18]
bf [20]

:[19]
pushi.e 1
pop.v.b builtin.leaveCallbackActivated
call.i @@This@@(argc=0)
push.v builtin.leaveCallback
callv.v 0
popz.v

:[20]
push.v builtin.timerEnter
dup.v 0 8
dup.v 0
push.v stacktop.run
callv.v 0
popz.v

:[21]
push.v builtin.timerEnter
dup.v 0 8
dup.v 0
push.v stacktop.is_running
callv.v 0
conv.v.b
bt [23]

:[22]
push.v builtin.timerEnter
dup.v 0 8
dup.v 0
push.v stacktop.is_finished
callv.v 0
conv.v.b
b [24]

:[23]
push.e 1

:[24]
bf [26]

:[25]
push.v builtin.timerEnter
dup.v 0 8
dup.v 0
push.v stacktop.get_cur_length_normalize
callv.v 0
pop.v.v local._norm
pushi.e 0
conv.i.v
pushglb.v global.gameHeight
pushi.e 2
conv.i.d
div.d.v
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
pushloc.v local._norm
call.i gml_Script_map_value(argc=5)
pop.v.v builtin.heightR1
pushglb.v global.gameHeight
pushglb.v global.gameHeight
pushi.e 2
conv.i.d
div.d.v
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
pushloc.v local._norm
call.i gml_Script_map_value(argc=5)
pop.v.v builtin.heightR2

:[26]
push.v builtin.timerEnter
dup.v 0 8
dup.v 0
push.v stacktop.is_finished
callv.v 0
conv.v.b
bf [30]

:[27]
push.v builtin.enterCallback
pushbltn.v builtin.undefined
cmp.v.v NEQ
bf [29]

:[28]
call.i @@This@@(argc=0)
push.v builtin.enterCallback
callv.v 0
popz.v

:[29]
push.v builtin.timerEnter
dup.v 0 8
dup.v 0
push.v stacktop.reset
callv.v 0
popz.v
pushglb.v global.waitingList
push.v builtin.id
dup.v 1 8
dup.v 0
push.v stacktop.remove
callv.v 1
popz.v
call.i instance_destroy(argc=0)
popz.v

:[30]
push.v builtin.state
pop.v.v builtin.statePrev
push.v builtin.stateNext
pop.v.v builtin.state

:[end]