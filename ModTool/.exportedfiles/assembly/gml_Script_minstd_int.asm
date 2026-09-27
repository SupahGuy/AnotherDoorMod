:[0]
pushi.e -15
pushi.e 0
push.v [array]self.argument0
pushglb.v global.__ptrt_MINSTD
cmp.v.v NEQ
bf [2]

:[1]
pushi.e 1
conv.b.v
push.s "Expected a MINSTD, got "@11534
push.v arg.argument0
call.i string(argc=1)
add.v.s
call.i show_error(argc=2)
popz.v
exit.i

:[2]
pushi.e -15
pushi.e 1
push.v [array]self.argument0
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
push.v arg.argument1
pushi.e -15
pushi.e 1
push.v [array]self.argument0
call.i minstd_int_raw(argc=2)
ret.v

:[end]