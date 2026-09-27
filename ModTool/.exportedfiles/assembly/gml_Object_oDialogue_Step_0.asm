; WARNING: Missing code locals, possibly due to unsupported bytecode version or a brand new code entry.

:[0]
push.v builtin.timerShow
dup.v 0 8
dup.v 0
push.v stacktop.is_running
callv.v 0
conv.v.b
bt [2]

:[1]
push.v builtin.timerShow
dup.v 0 8
dup.v 0
push.v stacktop.is_finished
callv.v 0
conv.v.b
b [3]

:[2]
push.e 1

:[3]
bf [6]

:[4]
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
bf [6]

:[5]
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

:[6]
push.v builtin.wiggle
dup.v 0 8
dup.v 0
push.v stacktop.step
callv.v 0
popz.v
pushglb.v global.pause
conv.v.b
not.b
bf [end]

:[7]
push.v builtin.closeType
push.l 2
cmp.l.v EQ
bf [9]

:[8]
push.v builtin.timerClose
dup.v 0 8
dup.v 0
push.v stacktop.is_finished
callv.v 0
conv.v.b
b [10]

:[9]
push.e 0

:[10]
bf [12]

:[11]
call.i instance_destroy(argc=0)
popz.v
b [19]

:[12]
push.v builtin.closeType
push.l 1
cmp.l.v EQ
bf [19]

:[13]
pushref.i 11
pushi.e -9
pushenv [18]

:[14]
push.l 1
conv.l.v
push.l 6
conv.l.v
call.i @@This@@(argc=0)
push.v builtin.is_verb_active
callv.v 2
conv.v.b
bf [18]

:[15]
push.v other.typist
dup.v 0 8
dup.v 0
push.v stacktop.get_state
callv.v 0
pushi.e 1
cmp.i.v NEQ
bf [17]

:[16]
push.v other.typist
dup.v 0 8
dup.v 0
push.v stacktop.skip
callv.v 0
popz.v
b [18]

:[17]
call.i @@Other@@(argc=0)
pushi.e 1
conv.b.v
pushi.e 1
conv.b.v
push.v builtin.number
dup.v 3 8
dup.v 0
push.v stacktop.update_counter_dialogue
callv.v 3
popz.v

:[18]
popenv [14]

:[19]
push.v builtin.callBackTextActivated
pushi.e 0
cmp.b.v EQ
bf [21]

:[20]
push.v builtin.typist
dup.v 0 8
dup.v 0
push.v stacktop.get_state
callv.v 0
pushi.e 1
cmp.i.v EQ
b [22]

:[21]
push.e 0

:[22]
bf [end]

:[23]
push.v builtin.callBackTextEnd
call.i array_length(argc=1)
pop.v.v local._callBackTextEndLength
pushloc.v local._callBackTextEndLength
pushi.e 0
cmp.i.v GT
bf [27]

:[24]
pushi.e 0
pop.v.i local._c

:[25]
pushloc.v local._c
pushloc.v local._callBackTextEndLength
cmp.v.v LT
bf [27]

:[26]
call.i @@This@@(argc=0)
pushi.e -6
pushloc.v local._c
conv.v.i
push.v [array]self.callBackTextEnd
callv.v 0
popz.v
push.v local._c
push.e 1
add.i.v
pop.v.v local._c
b [25]

:[27]
pushi.e 1
pop.v.b builtin.callBackTextActivated

:[end]