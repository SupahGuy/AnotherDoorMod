:[0]
call.i @@This@@(argc=0)
push.v builtin.hello
callv.v 0
popz.v
pushi.e 10
conv.i.v
pushi.e -6
pushi.e 0
pop.v.v [array]self.alarm

:[end]