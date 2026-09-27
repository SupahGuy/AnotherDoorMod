; WARNING: Missing code locals, possibly due to unsupported bytecode version or a brand new code entry.

:[0]
push.v builtin.btnConfirmLobby
call.i instance_exists(argc=1)
conv.v.b
bf [6]

:[1]
push.v builtin.btnConfirmLobby
dup.v 0 8
dup.v 0
push.v stacktop.is_released
callv.v 0
conv.v.b
bf [6]

:[2]
pushi.e 1
pop.v.b global.lobbyNameChanged
push.v builtin.lobbyNameInput
dup.v 0 8
dup.v 0
push.v stacktop.get_value
callv.v 0
pop.v.v global.lobbyNameDefault
push.v builtin.radioFriend
dup.v 0 8
dup.v 0
push.v stacktop.get_group_value
callv.v 0
pop.v.v global.lobbyTypeDefault
push.v builtin.radio2Players
dup.v 0 8
dup.v 0
push.v stacktop.get_group_value
callv.v 0
pop.v.v global.lobbyNbrPlayersDefault
push.s "settings.ini"@4517
conv.s.v
call.i ini_open(argc=1)
popz.v
pushi.e 1
conv.b.v
push.s "nameChanged"@7276
conv.s.v
push.s "lobby"@7277
conv.s.v
call.i ini_write_real(argc=3)
popz.v
pushglb.v global.lobbyNameDefault
push.s "name"@2212
conv.s.v
push.s "lobby"@7277
conv.s.v
call.i ini_write_string(argc=3)
popz.v
pushglb.v global.lobbyTypeDefault
push.s "type"@5379
conv.s.v
push.s "lobby"@7277
conv.s.v
call.i ini_write_real(argc=3)
popz.v
pushglb.v global.lobbyNbrPlayersDefault
push.s "nbrPlayers"@7282
conv.s.v
push.s "lobby"@7277
conv.s.v
call.i ini_write_real(argc=3)
popz.v
call.i ini_close(argc=0)
popz.v
pushglb.v global.networkingManager
dup.v 0 8
dup.v 0
push.v stacktop.create_host
callv.v 0
popz.v
pushi.e 0
pop.v.i local._i

:[3]
pushloc.v local._i
push.v builtin.buttonList
call.i array_length(argc=1)
cmp.v.v LT
bf [5]

:[4]
pushi.e -6
pushloc.v local._i
conv.v.i
push.v [array]self.buttonList
call.i instance_destroy(argc=1)
popz.v
push.v local._i
push.e 1
add.i.v
pop.v.v local._i
b [3]

:[5]
call.i instance_destroy(argc=0)
popz.v

:[6]
push.v builtin.btnCloseMenu
call.i instance_exists(argc=1)
conv.v.b
bf [end]

:[7]
push.v builtin.btnCloseMenu
dup.v 0 8
dup.v 0
push.v stacktop.is_released
callv.v 0
conv.v.b
bf [end]

:[8]
pushi.e 0
pop.v.i local._i

:[9]
pushloc.v local._i
push.v builtin.buttonList
call.i array_length(argc=1)
cmp.v.v LT
bf [11]

:[10]
pushi.e -6
pushloc.v local._i
conv.v.i
push.v [array]self.buttonList
call.i instance_destroy(argc=1)
popz.v
push.v local._i
push.e 1
add.i.v
pop.v.v local._i
b [9]

:[11]
call.i instance_destroy(argc=0)
popz.v
pushref.i 45
pushi.e -9
pushenv [13]

:[12]
push.l 1
pop.v.l builtin.stateNext

:[13]
popenv [12]

:[end]