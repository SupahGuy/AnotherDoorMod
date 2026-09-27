:[0]
b [2]

> gml_Script_g_change_music_volume (locals=0, argc=0)
:[1]
pushi.e 0
conv.i.v
pushglb.v global.musicVolume
pushi.e 100
conv.i.d
div.d.v
pushref.i 33554435
call.i audio_group_set_gain(argc=3)
popz.v
pushi.e 0
conv.i.v
pushglb.v global.musicVolume
pushi.e 100
conv.i.d
div.d.v
pushref.i 33554437
call.i audio_group_set_gain(argc=3)
popz.v
push.s "settings.ini"@4517
conv.s.v
call.i ini_open(argc=1)
popz.v
pushglb.v global.musicVolume
push.s "musicVolume"@4515
conv.s.v
push.s "audio"@4519
conv.s.v
call.i ini_write_real(argc=3)
popz.v
call.i ini_close(argc=0)
popz.v
exit.i

:[2]
push.i [function]gml_Script_g_change_music_volume
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pop.v.v self.g_change_music_volume
popz.v
b [4]

> gml_Script_g_change_sfx_volume (locals=0, argc=0)
:[3]
pushi.e 0
conv.i.v
pushglb.v global.sfxVolume
pushi.e 100
conv.i.d
div.d.v
pushref.i 33554434
call.i audio_group_set_gain(argc=3)
popz.v
push.s "settings.ini"@4517
conv.s.v
call.i ini_open(argc=1)
popz.v
pushglb.v global.sfxVolume
push.s "sfxVolume"@4524
conv.s.v
push.s "audio"@4519
conv.s.v
call.i ini_write_real(argc=3)
popz.v
call.i ini_close(argc=0)
popz.v
exit.i

:[4]
push.i [function]gml_Script_g_change_sfx_volume
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pop.v.v self.g_change_sfx_volume
popz.v

:[end]