; WARNING: Missing code locals, possibly due to unsupported bytecode version or a brand new code entry.

:[0]
pushglb.v global.shake
dup.v 0 8
dup.v 0
push.v stacktop.step
callv.v 0
popz.v
pushref.i 45
call.i instance_exists(argc=1)
conv.v.b
bf [13]

:[1]
pushref.i 45
pushi.e -9
push.v [stacktop]self.state
push.l 2
cmp.l.v EQ
bf [13]

:[2]
pushi.e 0
pop.v.i local._i

:[3]
pushloc.v local._i
pushi.e 4
cmp.i.v LT
bf [13]

:[4]
pushloc.v local._i
call.i gml_Script_InputPlayerGetStatus(argc=1)
pop.v.v local._state
pushloc.v local._state
push.l 2
cmp.l.v EQ
bf [8]

:[5]
pushglb.v global.playersManager
pushloc.v local._i
dup.v 1 8
dup.v 0
push.v stacktop.create_player
callv.v 1
popz.v
pushref.i 45
pushi.e -9
pushenv [7]

:[6]
call.i @@This@@(argc=0)
push.v builtin.update_screen_players
callv.v 0
popz.v

:[7]
popenv [6]
b [12]

:[8]
pushloc.v local._state
push.l 1
cmp.l.v EQ
bf [12]

:[9]
pushglb.v global.playersManager
pushglb.v global.playersCount
pushi.e 1
sub.i.v
dup.v 1 8
dup.v 0
push.v stacktop.remove
callv.v 1
popz.v
pushref.i 45
pushi.e -9
pushenv [11]

:[10]
call.i @@This@@(argc=0)
push.v builtin.update_screen_players
callv.v 0
popz.v

:[11]
popenv [10]

:[12]
push.v local._i
push.e 1
add.i.v
pop.v.v local._i
b [3]

:[13]
pushglb.v global.networkingManager
pushi.e -9
push.v [stacktop]self.isSteamInit
conv.v.b
bf [15]

:[14]
call.i steam_is_screenshot_requested(argc=0)
conv.v.b
b [16]

:[15]
push.e 0

:[16]
bf [end]

:[17]
pushbltn.v builtin.current_second
pushbltn.v builtin.current_minute
pushbltn.v builtin.current_hour
pushbltn.v builtin.current_day
pushbltn.v builtin.current_month
pushbltn.v builtin.current_year
push.s "Screens\\Another_Door_{0}-{1}-{2}_{3}-{4}-{5}.png"@9612
conv.s.v
call.i @@string@@(argc=7)
pop.v.v local._file
pushloc.v local._file
call.i screen_save(argc=1)
popz.v
call.i window_get_height(argc=0)
call.i window_get_width(argc=0)
pushloc.v local._file
call.i steam_send_screenshot(argc=3)
popz.v

:[end]