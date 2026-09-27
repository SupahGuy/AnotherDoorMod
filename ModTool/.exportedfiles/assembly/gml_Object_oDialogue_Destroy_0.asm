; WARNING: Missing code locals, possibly due to unsupported bytecode version or a brand new code entry.

:[0]
push.v builtin.tooltipList
pushi.e -1
cmp.i.v NEQ
bf [3]

:[1]
push.v builtin.numberInList
push.v builtin.totalListLength
pushi.e 1
sub.i.v
cmp.v.v LT
bf [3]

:[2]
pushi.e -6
push.v builtin.numberInList
pushi.e 1
add.i.v
conv.v.i
push.v [array]self.tooltipList
pop.v.v local._struct
pushloc.v local._struct
pushref.i 14
pushi.e 0
conv.i.v
push.v builtin.yOrigin
push.v builtin.xOrigin
call.i instance_create_depth(argc=5)
pop.v.v local._tooltip

:[3]
push.v builtin.callBackDestroy
call.i array_length(argc=1)
pop.v.v local._callBackDestroyLength
pushloc.v local._callBackDestroyLength
pushi.e 0
cmp.i.v GT
bf [7]

:[4]
pushi.e 0
pop.v.i local._c

:[5]
pushloc.v local._c
pushloc.v local._callBackDestroyLength
cmp.v.v LT
bf [7]

:[6]
call.i @@This@@(argc=0)
pushi.e -6
pushloc.v local._c
conv.v.i
push.v [array]self.callBackDestroy
callv.v 0
popz.v
push.v local._c
push.e 1
add.i.v
pop.v.v local._c
b [5]

:[7]
pushglb.v global.waitingList
push.v builtin.id
dup.v 1 8
dup.v 0
push.v stacktop.remove
callv.v 1
popz.v

:[end]