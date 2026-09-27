; WARNING: Missing code locals, possibly due to unsupported bytecode version or a brand new code entry.

:[0]
push.d 0.18
conv.d.v
pushi.e 0
conv.i.v
pushglb.v global.chromaStrenght
call.i lerp(argc=3)
pop.v.v global.chromaStrenght
push.v builtin.shakeTimer
dup.v 0 8
dup.v 0
push.v stacktop.is_running
callv.v 0
conv.v.b
bt [2]

:[1]
push.v builtin.shakeTimer
dup.v 0 8
dup.v 0
push.v stacktop.is_finished
callv.v 0
conv.v.b
b [3]

:[2]
push.e 1

:[3]
bf [5]

:[4]
push.v builtin.shakeTimer
dup.v 0 8
dup.v 0
push.v stacktop.is_delay_running
callv.v 0
conv.v.b
not.b
b [6]

:[5]
push.e 0

:[6]
bf [8]

:[7]
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
push.v builtin.shakeTimer
dup.v 0 8
dup.v 0
push.v stacktop.get_cur_length_normalize
callv.v 0
call.i gml_Script_map_value(argc=5)
pop.v.v local._mult
pushglb.v global.shake
push.v builtin.id
dup.v 1 8
dup.v 0
push.v stacktop.get_intensity
callv.v 1
pop.v.v local._incr
pushglb.v global.shake
dup.v 0 8
dup.v 0
push.v stacktop.get_values
callv.v 0
pop.v.v local._values
pushi.e -7
pushi.e 0
push.v [array]self._values
pushloc.v local._incr
mul.v.v
pushloc.v local._mult
mul.v.v
pop.v.v builtin.shakeX
pushi.e -7
pushi.e 1
push.v [array]self._values
pushloc.v local._incr
mul.v.v
pushloc.v local._mult
mul.v.v
pop.v.v builtin.shakeY
b [9]

:[8]
pushi.e 0
pop.v.i builtin.shakeX
pushi.e 0
pop.v.i builtin.shakeY

:[9]
push.v builtin.shakeTimer
dup.v 0 8
dup.v 0
push.v stacktop.is_finished
callv.v 0
conv.v.b
bf [11]

:[10]
push.v builtin.shakeTimer
dup.v 0 8
dup.v 0
push.v stacktop.reset
callv.v 0
popz.v
pushglb.v global.shake
push.v builtin.id
dup.v 1 8
dup.v 0
push.v stacktop.remove_element
callv.v 1
popz.v

:[11]
push.v builtin.x
push.v builtin.xVel
add.v.v
pop.v.v builtin.newX
push.v builtin.y
push.v builtin.yVel
add.v.v
pop.v.v builtin.newY
push.v builtin.newX
pop.v.v builtin.x
push.v builtin.newY
pop.v.v builtin.y
push.v builtin.x
pushglb.v global.gameWidth
pushi.e 2
conv.i.d
div.d.v
sub.v.v
push.v builtin.shakeX
add.v.v
pop.v.v builtin.xView
push.v builtin.y
pushglb.v global.gameHeight
pushi.e 2
conv.i.d
div.d.v
sub.v.v
push.v builtin.shakeY
add.v.v
pop.v.v builtin.yView

:[end]