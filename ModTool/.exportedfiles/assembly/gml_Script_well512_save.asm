; WARNING: Missing code locals, possibly due to unsupported bytecode version or a brand new code entry.

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
push.v arg.argument1
call.i buffer_tell(argc=1)
pop.v.v local._pos
pushi.e 0
conv.i.v
pushi.e 5
conv.i.v
push.v arg.argument1
call.i buffer_write(argc=3)
popz.v
pushi.e 8
dup.i 0
push.i 0
cmp.i.i LTE
bt [6]

:[5]
pushi.e 0
conv.i.v
pushi.e 12
conv.i.v
push.v arg.argument1
call.i buffer_write(argc=3)
popz.v
pushi.e 1
sub.i.i
dup.i 0
bt [5]

:[6]
popz.i
pushloc.v local._pos
push.v arg.argument1
call.i buffer_get_address(argc=1)
pushi.e -15
pushi.e 1
push.v [array]self.argument0
call.i well512_save_raw(argc=3)
popz.v

:[end]