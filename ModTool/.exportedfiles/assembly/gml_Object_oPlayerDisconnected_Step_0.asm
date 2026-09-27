; WARNING: Missing code locals, possibly due to unsupported bytecode version or a brand new code entry.

:[0]
push.v builtin.btnWannaLeave
dup.v 0 8
dup.v 0
push.v stacktop.is_pressed
callv.v 0
conv.v.b
bf [end]

:[1]
push.v builtin.btnWannaLeave
dup.v 0 8
dup.v 0
push.v stacktop.who_clicked
callv.v 0
pop.v.v local._numberWhoCliked
pushloc.v local._numberWhoCliked
pushbltn.v builtin.undefined
cmp.v.v NEQ
bf [end]

:[2]
pushi.e 0
conv.b.v
pushi.e -6
pushloc.v local._numberWhoCliked
conv.v.i
pop.v.v [array]self.wannaWait
call.i @@This@@(argc=0)
push.v builtin.check_counter_no_wait
callv.v 0
popz.v

:[end]