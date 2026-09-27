:[0]
push.v builtin.btnPageLeft
call.i instance_exists(argc=1)
conv.v.b
bf [3]

:[1]
push.v builtin.btnPageLeft
dup.v 0 8
dup.v 0
push.v stacktop.is_released
callv.v 0
conv.v.b
bf [3]

:[2]
push.v builtin.firstPage
push.v builtin.currentPage
pushi.e 1
sub.i.v
call.i max(argc=2)
pop.v.v builtin.currentPage
push.l 1
conv.l.v
call.i @@This@@(argc=0)
push.v builtin.refreshLobbyList
callv.v 1
popz.v

:[3]
push.v builtin.btnPageRight
call.i instance_exists(argc=1)
conv.v.b
bf [6]

:[4]
push.v builtin.btnPageRight
dup.v 0 8
dup.v 0
push.v stacktop.is_released
callv.v 0
conv.v.b
bf [6]

:[5]
push.v builtin.lastPage
push.v builtin.currentPage
pushi.e 1
add.i.v
call.i min(argc=2)
pop.v.v builtin.currentPage
push.l 1
conv.l.v
call.i @@This@@(argc=0)
push.v builtin.refreshLobbyList
callv.v 1
popz.v

:[6]
push.v builtin.btnRefreshLobbyList
call.i instance_exists(argc=1)
conv.v.b
bf [end]

:[7]
push.v builtin.btnRefreshLobbyList
dup.v 0 8
dup.v 0
push.v stacktop.is_released
callv.v 0
conv.v.b
bf [end]

:[8]
pushglb.v global.networkingManager
pushi.e -9
push.v [stacktop]self.mySteamId
pushi.e -1
cmp.i.v EQ
bf [10]

:[9]
push.l 3
conv.l.v
call.i @@This@@(argc=0)
push.v builtin.refreshLobbyList
callv.v 1
popz.v
b [end]

:[10]
pushi.e 1
pop.v.i builtin.currentPage
pushi.e 0
conv.i.v
pushglb.v global.gameVersion
push.s "Version"@10189
conv.s.v
call.i steam_lobby_list_add_string_filter(argc=3)
popz.v
pushi.e 3
conv.i.v
call.i steam_lobby_list_add_distance_filter(argc=1)
popz.v
call.i steam_lobby_list_request(argc=0)
popz.v
push.l 2
conv.l.v
call.i @@This@@(argc=0)
push.v builtin.refreshLobbyList
callv.v 1
popz.v

:[end]