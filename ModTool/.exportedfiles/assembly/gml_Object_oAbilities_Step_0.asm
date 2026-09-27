:[0]
call.i event_inherited(argc=0)
popz.v
push.v builtin.state
push.l 0
cmp.l.v EQ
bf [5]

:[1]
push.v builtin.statePrev
push.v builtin.state
cmp.v.v NEQ
bf [4]

:[2]
call.i @@This@@(argc=0)
push.v builtin.is_pressed
callv.v 0
conv.v.b
bf [4]

:[3]
push.l 1
pop.v.l builtin.stateNext

:[4]
b [8]

:[5]
push.v builtin.state
push.l 1
cmp.l.v EQ
bf [7]

:[6]
b [8]

:[7]
push.v builtin.state
push.l 2
cmp.l.v EQ
bf [8]

:[8]
push.v builtin.state
pop.v.v builtin.statePrev
push.v builtin.stateNext
pop.v.v builtin.state

:[end]