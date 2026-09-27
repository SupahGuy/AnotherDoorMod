:[0]
push.s "--- Game End Another Door ---"@9616
conv.s.v
call.i gml_Script_trace(argc=1)
popz.v
pushref.i 48
pushi.e -9
pushenv [6]

:[1]
call.i @@This@@(argc=0)
push.v builtin.is_steam_init
callv.v 0
conv.v.b
bf [3]

:[2]
push.v builtin.isNetworkGame
conv.v.b
b [4]

:[3]
push.e 0

:[4]
bf [6]

:[5]
call.i steam_lobby_leave(argc=0)
popz.v

:[6]
popenv [1]
pushi.e -6
pushi.e 0
push.v [array]self.view_camera
call.i camera_destroy(argc=1)
popz.v
pushglb.v global.particlesSys
call.i part_system_exists(argc=1)
conv.v.b
bf [8]

:[7]
pushglb.v global.particlesSys
call.i part_emitter_destroy_all(argc=1)
popz.v
pushglb.v global.particlesSys
call.i part_system_destroy(argc=1)
popz.v

:[8]
pushglb.v global.fntLatinPixelart
call.i font_exists(argc=1)
conv.v.b
bf [10]

:[9]
pushglb.v global.fntLatinPixelart
call.i font_delete(argc=1)
popz.v

:[10]
pushglb.v global.fntJPixelart
call.i font_exists(argc=1)
conv.v.b
bf [12]

:[11]
pushglb.v global.fntJPixelart
call.i font_delete(argc=1)
popz.v

:[12]
pushglb.v global.fntCPixelart
call.i font_exists(argc=1)
conv.v.b
bf [14]

:[13]
pushglb.v global.fntCPixelart
call.i font_delete(argc=1)
popz.v

:[14]
pushglb.v global.fntLatin
call.i font_exists(argc=1)
conv.v.b
bf [16]

:[15]
pushglb.v global.fntLatin
call.i font_delete(argc=1)
popz.v

:[16]
pushglb.v global.fntCjk
call.i font_exists(argc=1)
conv.v.b
bf [18]

:[17]
pushglb.v global.fntCjk
call.i font_delete(argc=1)
popz.v

:[18]
call.i steam_shutdown(argc=0)
popz.v

:[end]