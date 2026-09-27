; WARNING: Missing code locals, possibly due to unsupported bytecode version or a brand new code entry.

:[0]
pushi.e 8
conv.i.v
call.i gml_Script_prng_prepare_buffer(argc=1)
pop.v.v local._buf
pushi.e 8
conv.i.v
pushloc.v local._buf
call.i buffer_get_address(argc=1)
call.i xorshift64_create_raw(argc=2)
conv.v.b
bf [6]

:[1]
pushi.e 12
conv.i.v
pushloc.v local._buf
call.i buffer_read(argc=2)
pop.v.v local._ptr_0
pushloc.v local._ptr_0
pushi.e 0
cmp.i.v NEQ
bf [3]

:[2]
pushi.e 2
conv.i.v
call.i array_create(argc=1)
pop.v.v local._box_0
pushglb.v global.__ptrt_Xorshift64
pushi.e -7
pushi.e 0
pop.v.v [array]self._box_0
pushloc.v local._ptr_0
call.i ptr(argc=1)
pushi.e -7
pushi.e 1
pop.v.v [array]self._box_0
b [4]

:[3]
pushbltn.v builtin.undefined
pop.v.v local._box_0

:[4]
pushloc.v local._box_0
ret.v

:[5]
b [end]

:[6]
pushbltn.v builtin.undefined
ret.v

:[end]