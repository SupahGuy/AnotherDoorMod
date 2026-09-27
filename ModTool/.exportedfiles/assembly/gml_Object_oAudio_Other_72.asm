; WARNING: Missing code locals, possibly due to unsupported bytecode version or a brand new code entry.

:[0]
push.s "type"@5379
conv.s.v
pushbltn.v builtin.async_load
call.i ds_map_find_value(argc=2)
pop.v.v local._type
pushloc.v local._type
push.s "audiogroup_load"@8635
cmp.s.v EQ
bf [end]

:[1]
push.s "group_id"@8636
conv.s.v
pushbltn.v builtin.async_load
call.i ds_map_find_value(argc=2)
pop.v.v local._groupId
pushloc.v local._groupId
pushref.i 33554435
cmp.v.v EQ
bf [4]

:[2]
pushbltn.v builtin.room
pushref.i 50331656
cmp.v.v EQ
bf [4]

:[3]
pushglb.v global.nextMusic
call.i audio_is_playing(argc=1)
conv.v.b
not.b
b [5]

:[4]
push.e 0

:[5]
bf [end]

:[6]
pushi.e -1
conv.i.v
call.i @@This@@(argc=0)
push.v builtin.fade_in
callv.v 1
popz.v

:[end]