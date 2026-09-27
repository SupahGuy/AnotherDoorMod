:[0]
b [16]

> gml_Script_pause_game (locals=0, argc=1)
:[1]
push.v arg.argument0
conv.v.b
bf [5]

:[2]
pushglb.v global.__ElementController
dup.v 0 8
dup.v 0
push.v stacktop.reset
callv.v 0
popz.v
pushi.e 1
pop.v.b global.pause
pushref.i 35
pushi.e -9
pushenv [4]

:[3]
pushi.e 1
conv.b.v
call.i @@This@@(argc=0)
push.v builtin.set_paused
callv.v 1
popz.v

:[4]
popenv [3]
b [15]

:[5]
call.i gml_Script_is_paused_controller(argc=0)
conv.v.b
not.b
bf [8]

:[6]
call.i gml_Script_is_paused_settings(argc=0)
conv.v.b
not.b
bf [8]

:[7]
call.i gml_Script_is_paused_settings(argc=0)
conv.v.b
not.b
b [9]

:[8]
push.e 0

:[9]
bf [15]

:[10]
pushglb.v global.__ElementController
dup.v 0 8
dup.v 0
push.v stacktop.reset
callv.v 0
popz.v
pushi.e 0
pop.v.b global.pause
pushref.i 35
pushi.e -9
pushenv [12]

:[11]
pushi.e 0
conv.b.v
call.i @@This@@(argc=0)
push.v builtin.set_paused
callv.v 1
popz.v

:[12]
popenv [11]
pushref.i 11
pushi.e -9
pushenv [14]

:[13]
call.i @@This@@(argc=0)
push.v builtin.check_hover
callv.v 0
popz.v

:[14]
popenv [13]

:[15]
exit.i

:[16]
push.i [function]gml_Script_pause_game
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pop.v.v self.pause_game
popz.v
b [18]

> gml_Script_pause_chatbox (locals=0, argc=1)
:[17]
push.v arg.argument0
pop.v.v global.pauseChatbox
push.v arg.argument0
call.i gml_Script_pause_game(argc=1)
popz.v
exit.i

:[18]
push.i [function]gml_Script_pause_chatbox
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pop.v.v self.pause_chatbox
popz.v
b [20]

> gml_Script_pause_controller (locals=0, argc=1)
:[19]
push.v arg.argument0
pop.v.v global.pauseController
push.v arg.argument0
call.i gml_Script_pause_game(argc=1)
popz.v
exit.i

:[20]
push.i [function]gml_Script_pause_controller
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pop.v.v self.pause_controller
popz.v
b [23]

> gml_Script_is_paused_controller (locals=0, argc=0)
:[21]
pushglb.v global.pauseController
ret.v

:[22]
exit.i

:[23]
push.i [function]gml_Script_is_paused_controller
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pop.v.v self.is_paused_controller
popz.v
b [25]

> gml_Script_pause_settings (locals=0, argc=1)
:[24]
push.v arg.argument0
pop.v.v global.pauseSettings
push.v arg.argument0
call.i gml_Script_pause_game(argc=1)
popz.v
exit.i

:[25]
push.i [function]gml_Script_pause_settings
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pop.v.v self.pause_settings
popz.v
b [28]

> gml_Script_is_paused_settings (locals=0, argc=0)
:[26]
pushglb.v global.pauseSettings
ret.v

:[27]
exit.i

:[28]
push.i [function]gml_Script_is_paused_settings
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pop.v.v self.is_paused_settings
popz.v
b [31]

> gml_Script_game_is_paused (locals=0, argc=0)
:[29]
pushglb.v global.pause
ret.v

:[30]
exit.i

:[31]
push.i [function]gml_Script_game_is_paused
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pop.v.v self.game_is_paused
popz.v

:[end]