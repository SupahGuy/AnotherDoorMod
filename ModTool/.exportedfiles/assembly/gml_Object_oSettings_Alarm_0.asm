:[0]
pushref.i 11
pushi.e -9
pushenv [2]

:[1]
call.i @@This@@(argc=0)
push.v builtin.check_hover
callv.v 0
popz.v

:[2]
popenv [1]
pushi.e -1
conv.i.v
pushi.e -6
pushi.e 0
pop.v.v [array]self.alarm

:[end]