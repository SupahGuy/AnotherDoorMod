; WARNING: Missing code locals, possibly due to unsupported bytecode version or a brand new code entry.

:[0]
push.v builtin.belongTo
pushi.e -1
cmp.i.v NEQ
bf [2]

:[1]
push.v builtin.belongTo
call.i instance_exists(argc=1)
conv.v.b
not.b
b [3]

:[2]
push.e 0

:[3]
bf [5]

:[4]
call.i instance_destroy(argc=0)
popz.v

:[5]
push.v builtin.timerShow
dup.v 0 8
dup.v 0
push.v stacktop.is_running
callv.v 0
conv.v.b
bt [7]

:[6]
push.v builtin.timerShow
dup.v 0 8
dup.v 0
push.v stacktop.is_finished
callv.v 0
conv.v.b
b [8]

:[7]
push.e 1

:[8]
bf [11]

:[9]
push.v builtin.timerShow
dup.v 0 8
dup.v 0
push.v stacktop.get_cur_length_normalize
callv.v 0
pop.v.v local._dur
pushloc.v local._dur
pop.v.v builtin.image_alpha
push.v builtin.yTo
push.v builtin.yInit
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
pushloc.v local._dur
call.i gml_Script_map_value(argc=5)
pop.v.v builtin.y
push.v builtin.timerShow
dup.v 0 8
dup.v 0
push.v stacktop.is_finished
callv.v 0
conv.v.b
bf [11]

:[10]
push.v builtin.timerShow
dup.v 0 8
dup.v 0
push.v stacktop.stop
callv.v 0
popz.v
push.v builtin.timerShow
dup.v 0 8
dup.v 0
push.v stacktop.reset
callv.v 0
popz.v

:[11]
push.v builtin.wiggle
dup.v 0 8
dup.v 0
push.v stacktop.step
callv.v 0
popz.v
push.v builtin.isDialbox
conv.v.b
bf [end]

:[12]
push.v builtin.timerClose
dup.v 0 8
dup.v 0
push.v stacktop.is_finished
callv.v 0
conv.v.b
bf [end]

:[13]
call.i instance_destroy(argc=0)
popz.v

:[end]