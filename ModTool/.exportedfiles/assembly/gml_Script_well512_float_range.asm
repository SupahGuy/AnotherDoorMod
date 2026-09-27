:[0]
pushi.e -15
pushi.e 0
push.v [array]self.argument0
pushglb.v global.__ptrt_WELL512
cmp.v.v NEQ
bf [2]

:[1]
pushi.e 1
conv.b.v
push.s "Expected a WELL512, got "@11556
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
push.s "This WELL512 is destroyed."@11557
conv.s.v
call.i show_error(argc=2)
popz.v
exit.i

:[4]
push.v arg.argument2
push.v arg.argument1
pushi.e -15
pushi.e 1
push.v [array]self.argument0
call.i well512_float_range_raw(argc=3)
ret.v

:[end]