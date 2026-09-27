; WARNING: Missing code locals, possibly due to unsupported bytecode version or a brand new code entry.

:[0]
push.v arg.argument0
pop.v.v local._box_0
pushi.e -7
pushi.e 0
push.v [array]self._box_0
pushglb.v global.__ptrt_MINSTD
cmp.v.v NEQ
bf [2]

:[1]
pushi.e 1
conv.b.v
push.s "Expected a MINSTD, got "@11534
pushloc.v local._box_0
call.i string(argc=1)
add.v.s
call.i show_error(argc=2)
popz.v
exit.i

:[2]
pushi.e -7
pushi.e 1
push.v [array]self._box_0
pop.v.v local._ptr_0
pushi.e -7
pushi.e 1
push.v [array]self._box_0
pop.v.v local._ptr_0
pushloc.v local._ptr_0
call.i int64(argc=1)
pushi.e 0
cmp.i.v EQ
bf [4]

:[3]
pushi.e 1
conv.b.v
push.s "This MINSTD is destroyed."@11535
conv.s.v
call.i show_error(argc=2)
popz.v
exit.i

:[4]
pushi.e 0
conv.i.v
call.i ptr(argc=1)
pushi.e -7
pushi.e 1
pop.v.v [array]self._box_0
pushloc.v local._ptr_0
call.i minstd_destroy_raw(argc=1)
popz.v

:[end]