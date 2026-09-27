; WARNING: Missing code locals, possibly due to unsupported bytecode version or a brand new code entry.

:[0]
push.s "event_type"@10784
conv.s.v
pushbltn.v builtin.async_load
call.i ds_map_find_value(argc=2)
pop.v.v local._eventType
push.s "result"@5025
conv.s.v
pushbltn.v builtin.async_load
call.i ds_map_find_value(argc=2)
pop.v.v local._result
pushloc.v local._eventType
dup.v 0
push.s "steam_net_message_on_session_request"@10786
cmp.s.v EQ
bt [8]

:[1]
dup.v 0
push.s "steam_net_message_on_session_failed"@10787
cmp.s.v EQ
bt [14]

:[2]
dup.v 0
push.s "lobby_created"@10788
cmp.s.v EQ
bt [15]

:[3]
dup.v 0
push.s "lobby_join_requested"@10789
cmp.s.v EQ
bt [19]

:[4]
dup.v 0
push.s "lobby_joined"@10790
cmp.s.v EQ
bt [23]

:[5]
dup.v 0
push.s "lobby_chat_update"@10791
cmp.s.v EQ
bt [34]

:[6]
dup.v 0
push.s "lobby_list"@10792
cmp.s.v EQ
bt [53]

:[7]
b [58]

:[8]
push.s "steamid"@10793
conv.s.v
pushbltn.v builtin.async_load
call.i ds_map_find_value(argc=2)
pop.v.v local._steamId
pushi.e 0
pop.v.i local._i

:[9]
pushloc.v local._i
call.i steam_lobby_get_member_count(argc=0)
cmp.v.v LT
bf [13]

:[10]
pushloc.v local._i
call.i steam_lobby_get_member_id(argc=1)
pushloc.v local._steamId
cmp.v.v EQ
bf [12]

:[11]
pushloc.v local._steamId
call.i steam_net_messages_accept_session(argc=1)
popz.v
call.i @@This@@(argc=0)
push.v builtin.send_game_state
callv.v 0
popz.v
b [13]

:[12]
push.v local._i
push.e 1
add.i.v
pop.v.v local._i
b [9]

:[13]
b [58]

:[14]
b [58]

:[15]
pushloc.v local._result
pushi.e 1
cmp.i.v EQ
bf [17]

:[16]
call.i @@This@@(argc=0)
push.v builtin.host_create_success
callv.v 0
popz.v
b [18]

:[17]
call.i @@This@@(argc=0)
push.v builtin.host_create_failed
callv.v 0
popz.v

:[18]
b [58]

:[19]
push.s "lobby_id"@10796
conv.s.v
pushbltn.v builtin.async_load
call.i ds_map_find_value(argc=2)
pop.v.v local._lobby_id
call.i steam_get_user_steam_id(argc=0)
pushloc.v local._lobby_id
cmp.v.v NEQ
bf [21]

:[20]
pushloc.v local._lobby_id
call.i steam_lobby_join_id(argc=1)
popz.v
b [22]

:[21]
call.i @@This@@(argc=0)
push.v builtin.join_host_failed
callv.v 0
popz.v

:[22]
b [58]

:[23]
push.s "success"@10797
conv.s.v
pushbltn.v builtin.async_load
call.i ds_map_find_value(argc=2)
pop.v.v local._success
pushloc.v local._success
conv.v.b
bf [26]

:[24]
call.i steam_lobby_get_owner_id(argc=0)
pushi.e 0
cmp.i.v NEQ
bf [26]

:[25]
call.i steam_lobby_get_owner_id(argc=0)
call.i steam_get_user_steam_id(argc=0)
cmp.v.v NEQ
b [27]

:[26]
push.e 0

:[27]
bf [32]

:[28]
pushglb.v global.gameVersion
push.s "Version"@10189
conv.s.v
call.i steam_lobby_get_data(argc=1)
cmp.v.v NEQ
bf [30]

:[29]
push.s "Version"@10189
conv.s.v
call.i steam_lobby_get_data(argc=1)
pushi.e 0
conv.b.v
call.i @@This@@(argc=0)
push.v builtin.join_host_failed
callv.v 2
popz.v
b [31]

:[30]
call.i @@This@@(argc=0)
push.v builtin.join_host_success
callv.v 0
popz.v

:[31]
b [33]

:[32]
call.i @@This@@(argc=0)
push.v builtin.join_host_failed
callv.v 0
popz.v

:[33]
b [58]

:[34]
push.s "change_flags"@10800
conv.s.v
pushbltn.v builtin.async_load
call.i ds_map_find_value(argc=2)
pop.v.v local._changeFlags
push.s "user_id"@10802
conv.s.v
pushbltn.v builtin.async_load
call.i ds_map_find_value(argc=2)
pop.v.v local._idChanged
call.i steam_lobby_get_lobby_id(argc=0)
pushi.e 0
cmp.i.v EQ
bf [36]

:[35]
popz.v
exit.i

:[36]
pushloc.v local._changeFlags
dup.v 0
pushi.e 1
cmp.i.v EQ
bt [42]

:[37]
dup.v 0
pushi.e 2
cmp.i.v EQ
bt [43]

:[38]
dup.v 0
pushi.e 4
cmp.i.v EQ
bt [43]

:[39]
dup.v 0
pushi.e 8
cmp.i.v EQ
bt [43]

:[40]
dup.v 0
pushi.e 16
cmp.i.v EQ
bt [43]

:[41]
b [52]

:[42]
b [52]

:[43]
push.v builtin.currentHostId
pushloc.v local._idChanged
cmp.v.v EQ
bf [50]

:[44]
call.i steam_lobby_leave(argc=0)
popz.v
pushglb.v global.networkingManager
dup.v 0 8
dup.v 0
push.v stacktop.reset
callv.v 0
popz.v
pushglb.v global.isGameLaunched
conv.v.b
not.b
bf [48]

:[45]
pushref.i 45
pushi.e -9
pushenv [47]

:[46]
push.l 5
pop.v.l builtin.stateNext

:[47]
popenv [46]
b [49]

:[48]
push.l 2
pop.v.l global.gameEndReason
pushref.i 50331650
call.i room_goto(argc=1)
popz.v

:[49]
b [51]

:[50]
pushloc.v local._idChanged
call.i @@This@@(argc=0)
push.v builtin.clean_disconnected_players
callv.v 1
popz.v

:[51]
b [52]

:[52]
popz.v
b [58]

:[53]
pushref.i 41
pushi.e -9
pushenv [57]

:[54]
call.i @@This@@(argc=0)
push.v builtin.setup_lobby_list_data
callv.v 0
popz.v
push.v builtin.lobbyListData
call.i array_length(argc=1)
pushi.e 0
cmp.i.v GT
bf [56]

:[55]
push.l 1
conv.l.v
call.i @@This@@(argc=0)
push.v builtin.refreshLobbyList
callv.v 1
popz.v
b [57]

:[56]
push.l 0
conv.l.v
call.i @@This@@(argc=0)
push.v builtin.refreshLobbyList
callv.v 1
popz.v

:[57]
popenv [54]
b [58]

:[58]
popz.v

:[end]