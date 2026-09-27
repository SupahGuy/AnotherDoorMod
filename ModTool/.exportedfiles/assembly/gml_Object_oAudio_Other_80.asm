; WARNING: Missing code locals, possibly due to unsupported bytecode version or a brand new code entry.

:[0]
push.s "asset_id"@8638
conv.s.v
pushbltn.v builtin.async_load
call.i ds_map_find_value(argc=2)
pop.v.v local._assetId
push.s "was_stopped"@8640
conv.s.v
pushbltn.v builtin.async_load
call.i ds_map_find_value(argc=2)
pop.v.v local._wasStopped
pushloc.v local._assetId
call.i audio_sound_get_audio_group(argc=1)
pushref.i 33554435
cmp.v.v EQ
bf [2]

:[1]
pushloc.v local._wasStopped
conv.v.b
not.b
b [3]

:[2]
push.e 0

:[3]
bf [end]

:[4]
push.v builtin.timerMainTheme
dup.v 0 8
dup.v 0
push.v stacktop.reset
callv.v 0
popz.v
push.v builtin.timerMainTheme
dup.v 0 8
dup.v 0
push.v stacktop.run
callv.v 0
popz.v

:[end]