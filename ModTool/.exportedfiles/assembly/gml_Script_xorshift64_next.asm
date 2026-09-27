; WARNING: Missing code locals, possibly due to unsupported bytecode version or a brand new code entry.

:[0]
pushi.e 8
conv.i.v
call.i gml_Script_prng_prepare_buffer(argc=1)
pop.v.v local._buf
pushi.e -15
pushi.e 0
push.v [array]self.argument0
pushglb.v global.__ptrt_Xorshift64
cmp.v.v NEQ
bf [2]

:[1]
pushi.e 1
conv.b.v
push.s "Expected a Xorshift64, got "@11580
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
push.s "This Xorshift64 is destroyed."@11581
conv.s.v
call.i show_error(argc=2)
popz.v
exit.i

:[4]
pushi.e -15
pushi.e 1
push.v [array]self.argument0
pushi.e 8
conv.i.v
pushloc.v local._buf
call.i buffer_get_address(argc=1)
call.i xorshift64_next_raw(argc=3)
conv.v.b
bf [7]

:[5]
pushi.e 12
conv.i.v
pushloc.v local._buf
call.i buffer_read(argc=2)
ret.v

:[6]
b [end]

:[7]
pushbltn.v builtin.undefined
ret.v

:[end]