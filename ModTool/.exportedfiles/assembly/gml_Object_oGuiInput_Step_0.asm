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
pushi.e 1
conv.i.v
call.i keyboard_check_released(argc=1)
conv.v.b
bf [4]

:[3]
push.v builtin.backspaceTimerFirst
dup.v 0 8
dup.v 0
push.v stacktop.reset
callv.v 0
popz.v
push.v builtin.backspaceTimerFirst
dup.v 0 8
dup.v 0
push.v stacktop.run
callv.v 0
popz.v
push.v builtin.backspaceTimer
dup.v 0 8
dup.v 0
push.v stacktop.reset
callv.v 0
popz.v

:[4]
call.i @@This@@(argc=0)
push.v builtin.is_focus
callv.v 0
conv.v.b
bf [6]

:[5]
pushi.e 1
conv.i.v
call.i keyboard_check_pressed(argc=1)
conv.v.b
b [7]

:[6]
push.e 0

:[7]
bf [9]

:[8]
push.v builtin.backspaceTimerFirst
dup.v 0 8
dup.v 0
push.v stacktop.reset
callv.v 0
popz.v
push.v builtin.backspaceTimerFirst
dup.v 0 8
dup.v 0
push.v stacktop.run
callv.v 0
popz.v
push.v builtin.backspaceTimer
dup.v 0 8
dup.v 0
push.v stacktop.reset
callv.v 0
popz.v
pushbltn.v builtin.keyboard_key
pop.v.v builtin.lastKeyPressed
call.i @@This@@(argc=0)
push.v builtin.update_value
callv.v 0
popz.v

:[9]
call.i @@This@@(argc=0)
push.v builtin.is_focus
callv.v 0
conv.v.b
bf [11]

:[10]
pushi.e 1
conv.i.v
call.i keyboard_check(argc=1)
conv.v.b
b [12]

:[11]
push.e 0

:[12]
bf [end]

:[13]
push.v builtin.lastKeyPressed
pushbltn.v builtin.keyboard_key
cmp.v.v EQ
bf [15]

:[14]
push.v builtin.backspaceTimerFirst
dup.v 0 8
dup.v 0
push.v stacktop.is_finished
callv.v 0
conv.v.b
b [16]

:[15]
push.e 0

:[16]
bf [end]

:[17]
push.v builtin.backspaceTimer
dup.v 0 8
dup.v 0
push.v stacktop.is_finished
callv.v 0
conv.v.b
bt [19]

:[18]
push.v builtin.backspaceTimer
dup.v 0 8
dup.v 0
push.v stacktop.is_running
callv.v 0
conv.v.b
not.b
b [20]

:[19]
push.e 1

:[20]
bf [22]

:[21]
push.v builtin.backspaceTimer
dup.v 0 8
dup.v 0
push.v stacktop.reset
callv.v 0
popz.v
push.v builtin.backspaceTimer
dup.v 0 8
dup.v 0
push.v stacktop.run
callv.v 0
popz.v
b [end]

:[22]
call.i @@This@@(argc=0)
push.v builtin.update_value
callv.v 0
popz.v

:[end]