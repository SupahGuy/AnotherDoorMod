; WARNING: Missing code locals, possibly due to unsupported bytecode version or a brand new code entry.

:[0]
push.v builtin.theInput
call.i instance_destroy(argc=1)
popz.v
push.v builtin.theButton
call.i instance_destroy(argc=1)
popz.v
pushi.e 0
pop.v.i local._i

:[1]
pushloc.v local._i
push.v builtin.buttonsPlayer
call.i array_length(argc=1)
cmp.v.v LT
bf [3]

:[2]
pushi.e -6
pushloc.v local._i
conv.v.i
push.v [array]self.buttonsPlayer
call.i instance_destroy(argc=1)
popz.v
push.v local._i
push.e 1
add.i.v
pop.v.v local._i
b [1]

:[3]
pushi.e 0
conv.b.v
call.i gml_Script_pause_chatbox(argc=1)
popz.v

:[end]