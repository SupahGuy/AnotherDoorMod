; WARNING: Missing code locals, possibly due to unsupported bytecode version or a brand new code entry.

:[0]
push.v builtin.timerFloat
dup.v 0 8
dup.v 0
push.v stacktop.is_finished
callv.v 0
conv.v.b
bf [2]

:[1]
call.i instance_destroy(argc=0)
popz.v

:[2]
push.v builtin.timerFloat
dup.v 0 8
dup.v 0
push.v stacktop.is_running
callv.v 0
conv.v.b
bf [end]

:[3]
push.v builtin.timerFloat
dup.v 0 8
dup.v 0
push.v stacktop.get_cur_length_normalize
callv.v 0
pop.v.v local._length
push.v builtin.goingTop
conv.v.b
bf [5]

:[4]
push.v builtin.yInit
pushloc.v local._length
pushi.e 16
mul.i.v
sub.v.v
pop.v.v builtin.y
b [end]

:[5]
push.v builtin.yInit
pushloc.v local._length
pushi.e 16
mul.i.v
add.v.v
pop.v.v builtin.y

:[end]