; WARNING: Missing code locals, possibly due to unsupported bytecode version or a brand new code entry.

:[0]
push.v arg.argument0
pop.v.v local._size
pushglb.v global.__PRNG_buffer
pop.v.v local._buf
pushloc.v local._buf
pushbltn.v builtin.undefined
cmp.v.v EQ
bf [2]

:[1]
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
pushloc.v local._size
call.i buffer_create(argc=3)
pop.v.v local._buf
pushloc.v local._buf
pop.v.v global.__PRNG_buffer
b [4]

:[2]
pushloc.v local._buf
call.i buffer_get_size(argc=1)
pushloc.v local._size
cmp.v.v LT
bf [4]

:[3]
pushloc.v local._size
pushloc.v local._buf
call.i buffer_resize(argc=2)
popz.v

:[4]
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushloc.v local._buf
call.i buffer_seek(argc=3)
popz.v
pushloc.v local._buf
ret.v

:[end]