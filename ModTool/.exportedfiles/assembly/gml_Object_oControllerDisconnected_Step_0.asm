; WARNING: Missing code locals, possibly due to unsupported bytecode version or a brand new code entry.

:[0]
pushglb.v global.isGameLaunched
conv.v.b
bf [6]

:[1]
pushi.e 0
pop.v.i local._i

:[2]
pushloc.v local._i
pushi.e 4
cmp.i.v LT
bf [6]

:[3]
pushloc.v local._i
call.i gml_Script_InputPlayerGetStatus(argc=1)
pop.v.v local._state
pushloc.v local._state
push.l 1
cmp.l.v EQ
bf [5]

:[4]
pushi.e 1
conv.b.v
call.i gml_Script_pause_controller(argc=1)
popz.v
pushi.e 1
conv.b.v
pushbltn.v builtin.undefined
push.l 12
conv.l.v
pushi.e 0
conv.b.v
pushglb.v global.playersCount
pushglb.v global.playersCount
pushi.e -1
conv.i.v
call.i gml_Script_InputPartySetParams(argc=7)
popz.v
pushi.e 1
conv.b.v
call.i gml_Script_InputPartySetJoin(argc=1)
popz.v
push.v builtin.animSuccess
dup.v 0 8
dup.v 0
push.v stacktop.reset
callv.v 0
popz.v
push.v builtin.animSuccess
dup.v 0 8
dup.v 0
push.v stacktop.stop
callv.v 0
popz.v

:[5]
push.v local._i
push.e 1
add.i.v
pop.v.v local._i
b [2]

:[6]
call.i gml_Script_is_paused_controller(argc=0)
conv.v.b
bf [end]

:[7]
call.i gml_Script_InputPartyGetReady(argc=0)
conv.v.b
bf [10]

:[8]
push.v builtin.animSuccess
dup.v 0 8
dup.v 0
push.v stacktop.is_running
callv.v 0
conv.v.b
not.b
bf [10]

:[9]
push.v builtin.animSuccess
dup.v 0 8
dup.v 0
push.v stacktop.is_finished
callv.v 0
conv.v.b
not.b
b [11]

:[10]
push.e 0

:[11]
bf [13]

:[12]
push.v builtin.animSuccess
dup.v 0 8
dup.v 0
push.v stacktop.run
callv.v 0
popz.v

:[13]
push.v builtin.animSuccess
dup.v 0 8
dup.v 0
push.v stacktop.is_finished
callv.v 0
conv.v.b
bf [end]

:[14]
push.v builtin.animSuccess
dup.v 0 8
dup.v 0
push.v stacktop.reset
callv.v 0
popz.v
pushi.e 0
conv.b.v
call.i gml_Script_pause_controller(argc=1)
popz.v
pushi.e 0
conv.b.v
call.i gml_Script_InputPartySetJoin(argc=1)
popz.v

:[end]