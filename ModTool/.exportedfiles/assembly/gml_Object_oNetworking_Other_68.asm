; WARNING: Missing code locals, possibly due to unsupported bytecode version or a brand new code entry.

:[0]
push.s "type"@5379
conv.s.v
pushbltn.v builtin.async_load
call.i ds_map_find_value(argc=2)
pop.v.v local.t
push.s "id"@4551
conv.s.v
pushbltn.v builtin.async_load
call.i ds_map_find_value(argc=2)
pop.v.v local.n_id
pushloc.v local.t
pushi.e 3
cmp.i.v EQ
bf [end]

:[1]
push.s "buffer"@10783
conv.s.v
pushbltn.v builtin.async_load
call.i ds_map_find_value(argc=2)
pop.v.v local._buffer
pushloc.v local.n_id
pushloc.v local._buffer
call.i @@This@@(argc=0)
push.v builtin.event_handler
callv.v 2
popz.v

:[end]