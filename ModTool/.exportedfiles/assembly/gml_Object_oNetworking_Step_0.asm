; WARNING: Missing code locals, possibly due to unsupported bytecode version or a brand new code entry.

:[0]
call.i @@This@@(argc=0)
push.v builtin.is_steam_init
callv.v 0
conv.v.b
bf [2]

:[1]
call.i steam_update(argc=0)
popz.v

:[2]
push.v builtin.timeOutCreateHost
dup.v 0 8
dup.v 0
push.v stacktop.is_finished
callv.v 0
conv.v.b
bf [4]

:[3]
push.v builtin.timeOutCreateHost
dup.v 0 8
dup.v 0
push.v stacktop.reset
callv.v 0
popz.v
call.i @@This@@(argc=0)
push.v builtin.host_create_failed
callv.v 0
popz.v

:[4]
push.v builtin.timeOutJoinHost
dup.v 0 8
dup.v 0
push.v stacktop.is_finished
callv.v 0
conv.v.b
bf [6]

:[5]
push.v builtin.timeOutJoinHost
dup.v 0 8
dup.v 0
push.v stacktop.reset
callv.v 0
popz.v
call.i @@This@@(argc=0)
push.v builtin.join_host_failed
callv.v 0
popz.v

:[6]
pushi.e 1
pop.v.b local._hasBufferImportant

:[7]
pushloc.v local._hasBufferImportant
conv.v.b
bf [12]

:[8]
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
push.v builtin.bufferImportant
call.i buffer_seek(argc=3)
popz.v
push.v builtin.bufferImportant
call.i buffer_get_size(argc=1)
push.v builtin.bufferImportant
push.l 0
conv.l.v
call.i steam_net_messages_receive_on_channel(argc=3)
pop.v.v local._dataSizeImportant
pushloc.v local._dataSizeImportant
conv.v.b
bf [10]

:[9]
push.v builtin.bufferImportant
call.i @@This@@(argc=0)
push.v builtin.event_handler
callv.v 1
popz.v
b [11]

:[10]
pushi.e 0
pop.v.b local._hasBufferImportant

:[11]
b [7]

:[12]
pushi.e 1
pop.v.b local._hasBufferNotVital

:[13]
pushloc.v local._hasBufferNotVital
conv.v.b
bf [end]

:[14]
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
push.v builtin.bufferNotVital
call.i buffer_seek(argc=3)
popz.v
push.v builtin.bufferNotVital
call.i buffer_get_size(argc=1)
push.v builtin.bufferNotVital
push.l 1
conv.l.v
call.i steam_net_messages_receive_on_channel(argc=3)
pop.v.v local._dataSizebufferNotVital
pushloc.v local._dataSizebufferNotVital
conv.v.b
bf [16]

:[15]
push.v builtin.bufferNotVital
call.i @@This@@(argc=0)
push.v builtin.event_handler
callv.v 1
popz.v
b [17]

:[16]
pushi.e 0
pop.v.b local._hasBufferNotVital

:[17]
b [13]

:[end]