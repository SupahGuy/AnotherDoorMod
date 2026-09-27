:[0]
pushi.e 0
pop.v.b builtin.isSteamInit
call.i steam_initialised(argc=0)
conv.v.b
bf [3]

:[1]
call.i steam_stats_ready(argc=0)
conv.v.b
bf [3]

:[2]
pushi.e 1
pop.v.b builtin.isSteamInit
call.i steam_net_sockets_init_authentication(argc=0)
popz.v

:[3]
b [6]

> gml_Script_anon@321@gml_Object_oNetworking_Create_0 (locals=0, argc=0)
:[4]
push.v builtin.isSteamInit
ret.v

:[5]
exit.i

:[6]
push.i [function]gml_Script_anon@321@gml_Object_oNetworking_Create_0
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
pop.v.v builtin.is_steam_init
b [9]

> gml_Script_anon@400@gml_Object_oNetworking_Create_0 (locals=0, argc=0)
:[7]
push.v builtin.isSteamInit
ret.v

:[8]
exit.i

:[9]
push.i [function]gml_Script_anon@400@gml_Object_oNetworking_Create_0
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
pop.v.v builtin.is_steam_tracking_on
call.i @@This@@(argc=0)
pop.v.v global.networkingManager
pushi.e 0
pop.v.b builtin.isNetworkGame
call.i @@This@@(argc=0)
push.v builtin.is_steam_init
callv.v 0
conv.v.b
bf [11]

:[10]
call.i steam_get_user_steam_id(argc=0)
b [12]

:[11]
pushi.e -1
conv.i.v

:[12]
pop.v.v builtin.mySteamId
pushi.e 0
conv.i.v
call.i gml_Script_InputPlayerGetDevice(argc=1)
pop.v.v builtin.myDeviceType
b [19]

> gml_Script_anon@839@gml_Object_oNetworking_Create_0 (locals=0, argc=0)
:[13]
b [18]

> gml_Script_anon@946@anon@839@gml_Object_oNetworking_Create_0 (locals=0, argc=0)
:[14]
call.i gml_Script_InputGetHotswap(argc=0)
conv.v.b
bf [17]

:[15]
pushi.e 0
conv.i.v
call.i gml_Script_InputPlayerGetDevice(argc=1)
pushi.e -666
cmp.i.v NEQ
bf [17]

:[16]
pushi.e 0
conv.i.v
call.i gml_Script_InputPlayerGetDevice(argc=1)
pushref.i 48
pushi.e -9
pop.v.v [stacktop]self.myDeviceType

:[17]
exit.i

:[18]
push.i [function]gml_Script_anon@946@anon@839@gml_Object_oNetworking_Create_0
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
pushbltn.v builtin.undefined
push.l 4
conv.l.v
call.i gml_Script_InputPlugInRegisterCallback(argc=3)
popz.v
exit.i

:[19]
push.i [function]gml_Script_anon@839@gml_Object_oNetworking_Create_0
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
push.s "10.0"@466
conv.s.v
push.s "1.0"@467
conv.s.v
push.s "Mizar & Alcor"@10671
conv.s.v
push.s "Mizalcor.DeviceType"@10672
conv.s.v
call.i gml_Script_InputPlugInDefine(argc=5)
popz.v
pushi.e -1
pop.v.i builtin.myPositionInSocketList
call.i @@NewGMLArray@@(argc=0)
pop.v.v builtin.socketList
pushi.e 1
pop.v.b global.isHost
pushi.e 0
pop.v.b global.isClient
pushi.e -1
pop.v.i builtin.currentHostId
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
pushi.e 10
conv.i.v
push.v builtin.id
push.i [function]gml_Script_myTimer
conv.i.v
call.i @@NewGMLObject@@(argc=5)
pop.v.v builtin.timeOutCreateHost
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
pushi.e 10
conv.i.v
push.v builtin.id
push.i [function]gml_Script_myTimer
conv.i.v
call.i @@NewGMLObject@@(argc=5)
pop.v.v builtin.timeOutJoinHost
pushi.e 0
pop.v.i builtin.turnId
pushi.e 1
pop.v.b builtin.canSendReady
call.i @@NewGMLArray@@(argc=0)
pop.v.v builtin.clientTurnReady
pushi.e 0
pop.v.i builtin.pendingStateMachine
pushi.e 0
conv.i.v
call.i game_get_speed(argc=1)
pushi.e -6
pushi.e 1
pop.v.v [array]self.alarm
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
pushi.e 256
conv.i.v
call.i buffer_create(argc=3)
pop.v.v builtin.bufferImportant
push.l 8
conv.l.v
push.v builtin.bufferImportant
call.i gml_Script_add_to_clean_up(argc=2)
popz.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
pushi.e 256
conv.i.v
call.i buffer_create(argc=3)
pop.v.v builtin.bufferNotVital
push.l 8
conv.l.v
push.v builtin.bufferNotVital
call.i gml_Script_add_to_clean_up(argc=2)
popz.v
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
pushi.e 6
conv.i.v
call.i buffer_create(argc=3)
pop.v.v builtin.bufferCursor
push.l 8
conv.l.v
push.v builtin.bufferCursor
call.i gml_Script_add_to_clean_up(argc=2)
popz.v
b [28]

> gml_Script_anon@2553@gml_Object_oNetworking_Create_0 (locals=1, argc=3)
:[20]
pushbltn.v builtin.argument0
pushbltn.v builtin.undefined
cmp.v.v EQ
bf [22]

:[21]
pushi.e 256
pop.v.i builtin.argument0

:[22]
pushbltn.v builtin.argument1
pushbltn.v builtin.undefined
cmp.v.v EQ
bf [24]

:[23]
pushi.e 1
pop.v.i builtin.argument1

:[24]
pushbltn.v builtin.argument2
pushbltn.v builtin.undefined
cmp.v.v EQ
bf [26]

:[25]
pushi.e 1
pop.v.i builtin.argument2

:[26]
push.v arg.argument2
push.v arg.argument1
push.v arg.argument0
call.i buffer_create(argc=3)
pop.v.v local._buffer
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushloc.v local._buffer
call.i buffer_seek(argc=3)
popz.v
pushloc.v local._buffer
ret.v

:[27]
exit.i

:[28]
push.i [function]gml_Script_anon@2553@gml_Object_oNetworking_Create_0
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
pop.v.v builtin.network_init_package
b [70]

> gml_Script_anon@2833@gml_Object_oNetworking_Create_0 (locals=2, argc=6)
:[29]
pushbltn.v builtin.argument1
pushbltn.v builtin.undefined
cmp.v.v EQ
bf [31]

:[30]
push.l 0
pop.v.l builtin.argument1

:[31]
pushbltn.v builtin.argument2
pushbltn.v builtin.undefined
cmp.v.v EQ
bf [33]

:[32]
pushi.e -1
pop.v.i builtin.argument2

:[33]
pushbltn.v builtin.argument3
pushbltn.v builtin.undefined
cmp.v.v EQ
bf [35]

:[34]
pushi.e -1
pop.v.i builtin.argument3

:[35]
pushbltn.v builtin.argument4
pushbltn.v builtin.undefined
cmp.v.v EQ
bf [37]

:[36]
push.l 0
pop.v.l builtin.argument4

:[37]
pushbltn.v builtin.argument5
pushbltn.v builtin.undefined
cmp.v.v EQ
bf [39]

:[38]
pushi.e 1
pop.v.b builtin.argument5

:[39]
push.v arg.argument4
push.l 0
cmp.l.v EQ
bf [41]

:[40]
pushi.e 8
pop.v.i local._packetType
b [42]

:[41]
pushi.e 0
pop.v.i local._packetType

:[42]
push.v arg.argument1
push.l 0
cmp.l.v EQ
bf [44]

:[43]
pushloc.v local._packetType
push.v arg.argument0
call.i buffer_tell(argc=1)
push.v arg.argument0
push.v arg.argument4
push.v builtin.currentHostId
call.i steam_net_messages_send(argc=5)
popz.v
b [67]

:[44]
push.v arg.argument1
push.l 1
cmp.l.v EQ
bf [52]

:[45]
pushi.e 1
pop.v.i local._i

:[46]
pushloc.v local._i
push.v builtin.socketList
call.i array_length(argc=1)
cmp.v.v LT
bf [51]

:[47]
push.v arg.argument2
pushi.e -6
pushloc.v local._i
conv.v.i
push.v [array]self.socketList
cmp.v.v EQ
bf [49]

:[48]
b [50]

:[49]
pushloc.v local._packetType
push.v arg.argument0
call.i buffer_tell(argc=1)
push.v arg.argument0
push.v arg.argument4
pushi.e -6
pushloc.v local._i
conv.v.i
push.v [array]self.socketList
call.i steam_net_messages_send(argc=5)
popz.v

:[50]
push.v local._i
push.e 1
add.i.v
pop.v.v local._i
b [46]

:[51]
b [67]

:[52]
push.v arg.argument1
push.l 3
cmp.l.v EQ
bf [54]

:[53]
push.v arg.argument3
pushi.e -1
cmp.i.v NEQ
b [55]

:[54]
push.e 0

:[55]
bf [57]

:[56]
pushloc.v local._packetType
push.v arg.argument0
call.i buffer_tell(argc=1)
push.v arg.argument0
push.v arg.argument4
push.v arg.argument3
call.i steam_net_messages_send(argc=5)
popz.v
b [67]

:[57]
push.v arg.argument1
push.l 2
cmp.l.v EQ
bf [67]

:[58]
pushi.e 0
pop.v.i local._i

:[59]
pushloc.v local._i
push.v builtin.socketList
call.i array_length(argc=1)
cmp.v.v LT
bf [67]

:[60]
pushi.e -6
pushloc.v local._i
conv.v.i
push.v [array]self.socketList
push.v builtin.mySteamId
cmp.v.v EQ
bt [62]

:[61]
pushi.e -6
pushloc.v local._i
conv.v.i
push.v [array]self.socketList
push.v arg.argument2
cmp.v.v EQ
b [63]

:[62]
push.e 1

:[63]
bf [65]

:[64]
b [66]

:[65]
pushloc.v local._packetType
push.v arg.argument0
call.i buffer_tell(argc=1)
push.v arg.argument0
push.v arg.argument4
pushi.e -6
pushloc.v local._i
conv.v.i
push.v [array]self.socketList
call.i steam_net_messages_send(argc=5)
popz.v

:[66]
push.v local._i
push.e 1
add.i.v
pop.v.v local._i
b [59]

:[67]
push.v arg.argument5
conv.v.b
bf [69]

:[68]
push.v arg.argument0
call.i buffer_delete(argc=1)
popz.v

:[69]
exit.i

:[70]
push.i [function]gml_Script_anon@2833@gml_Object_oNetworking_Create_0
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
pop.v.v builtin.network_end_package
b [83]

> gml_Script_anon@4896@gml_Object_oNetworking_Create_0 (locals=1, argc=1)
:[71]
push.v builtin.socketList
call.i array_length(argc=1)
pushi.e 1
sub.i.v
pop.v.v local._p

:[72]
pushloc.v local._p
pushi.e 0
cmp.i.v GTE
bf [76]

:[73]
pushi.e -6
pushloc.v local._p
conv.v.i
push.v [array]self.socketList
push.v arg.argument0
cmp.v.v EQ
bf [75]

:[74]
pushglb.v global.playersManager
pushloc.v local._p
dup.v 1 8
dup.v 0
push.v stacktop.remove
callv.v 1
popz.v
pushi.e 1
conv.i.v
pushloc.v local._p
push.v builtin.socketList
call.i array_delete(argc=3)
popz.v
pushi.e 1
conv.i.v
pushloc.v local._p
push.v builtin.clientTurnReady
call.i array_delete(argc=3)
popz.v

:[75]
push.v local._p
push.e 1
sub.i.v
pop.v.v local._p
b [72]

:[76]
call.i @@This@@(argc=0)
push.v builtin.define_position_in_socket_list
callv.v 0
popz.v
call.i @@This@@(argc=0)
push.v builtin.recalculate_ghost
callv.v 0
popz.v
pushglb.v global.isHost
conv.v.b
bf [80]

:[77]
pushref.i 14
pushi.e -9
pushenv [79]

:[78]
call.i @@This@@(argc=0)
push.v builtin.check_if_destroyable
callv.v 0
popz.v

:[79]
popenv [78]

:[80]
pushref.i 45
pushi.e -9
pushenv [82]

:[81]
call.i @@This@@(argc=0)
push.v builtin.update_screen_players
callv.v 0
popz.v

:[82]
popenv [81]
exit.i

:[83]
push.i [function]gml_Script_anon@4896@gml_Object_oNetworking_Create_0
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
pop.v.v builtin.clean_disconnected_players
b [85]

> gml_Script_anon@5790@gml_Object_oNetworking_Create_0 (locals=1, argc=0)
:[84]
pushi.e 1
conv.i.v
pushi.e 256
conv.i.v
call.i @@This@@(argc=0)
push.v builtin.network_init_package
callv.v 2
pop.v.v local._buffer
push.l 0
conv.l.v
pushi.e 1
conv.i.v
pushloc.v local._buffer
call.i buffer_write(argc=3)
popz.v
push.v builtin.mySteamId
pushi.e 12
conv.i.v
pushloc.v local._buffer
call.i buffer_write(argc=3)
popz.v
push.l 0
conv.l.v
pushloc.v local._buffer
call.i @@This@@(argc=0)
push.v builtin.network_end_package
callv.v 2
popz.v
exit.i

:[85]
push.i [function]gml_Script_anon@5790@gml_Object_oNetworking_Create_0
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
pop.v.v builtin.hello
b [87]

> gml_Script_anon@6164@gml_Object_oNetworking_Create_0 (locals=1, argc=1)
:[86]
pushi.e 1
conv.i.v
pushi.e 256
conv.i.v
call.i @@This@@(argc=0)
push.v builtin.network_init_package
callv.v 2
pop.v.v local._buffer
push.l 1
conv.l.v
pushi.e 1
conv.i.v
pushloc.v local._buffer
call.i buffer_write(argc=3)
popz.v
push.v arg.argument0
pushbltn.v builtin.undefined
push.l 3
conv.l.v
pushloc.v local._buffer
call.i @@This@@(argc=0)
push.v builtin.network_end_package
callv.v 4
popz.v
exit.i

:[87]
push.i [function]gml_Script_anon@6164@gml_Object_oNetworking_Create_0
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
pop.v.v builtin.hello_back
b [89]

> gml_Script_anon@6509@gml_Object_oNetworking_Create_0 (locals=1, argc=0)
:[88]
pushi.e 1
conv.i.v
pushi.e 256
conv.i.v
call.i @@This@@(argc=0)
push.v builtin.network_init_package
callv.v 2
pop.v.v local._buffer
push.l 4
conv.l.v
pushi.e 1
conv.i.v
pushloc.v local._buffer
call.i buffer_write(argc=3)
popz.v
push.l 0
conv.l.v
pushloc.v local._buffer
call.i @@This@@(argc=0)
push.v builtin.network_end_package
callv.v 2
popz.v
exit.i

:[89]
push.i [function]gml_Script_anon@6509@gml_Object_oNetworking_Create_0
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
pop.v.v builtin.ask_for_socket_list
b [99]

> gml_Script_anon@7028@gml_Object_oNetworking_Create_0 (locals=1, argc=0)
:[90]
push.v builtin.socketList
call.i array_length(argc=1)
pushi.e 0
cmp.i.v GT
bf [97]

:[91]
pushi.e 0
pop.v.i local._j

:[92]
pushloc.v local._j
push.v builtin.socketList
call.i array_length(argc=1)
cmp.v.v LT
bf [96]

:[93]
pushi.e -6
pushloc.v local._j
conv.v.i
push.v [array]self.socketList
push.v builtin.mySteamId
cmp.v.v EQ
bf [95]

:[94]
pushloc.v local._j
pop.v.v builtin.myPositionInSocketList

:[95]
push.v local._j
push.e 1
add.i.v
pop.v.v local._j
b [92]

:[96]
b [98]

:[97]
pushi.e -1
pop.v.i builtin.myPositionInSocketList

:[98]
exit.i

:[99]
push.i [function]gml_Script_anon@7028@gml_Object_oNetworking_Create_0
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
pop.v.v builtin.define_position_in_socket_list
b [118]

> gml_Script_anon@7500@gml_Object_oNetworking_Create_0 (locals=1, argc=1)
:[100]
pushbltn.v builtin.argument0
pushbltn.v builtin.undefined
cmp.v.v EQ
bf [102]

:[101]
call.i @@NewGMLArray@@(argc=0)
pop.v.v builtin.argument0

:[102]
push.v builtin.socketList
call.i array_length(argc=1)
pushi.e 0
cmp.i.v GT
bf [104]

:[103]
push.v builtin.socketList
push.v arg.argument0
call.i array_equals(argc=2)
conv.v.b
b [105]

:[104]
push.e 0

:[105]
bf [107]

:[106]
exit.i

:[107]
call.i @@This@@(argc=0)
push.v builtin.delete_everyone
callv.v 0
popz.v
call.i @@NewGMLArray@@(argc=0)
pop.v.v builtin.socketList
call.i @@NewGMLArray@@(argc=0)
pop.v.v builtin.clientTurnReady
pushglb.v global.isHost
conv.v.b
bf [112]

:[108]
pushi.e 0
pop.v.i local._i

:[109]
pushloc.v local._i
call.i steam_lobby_get_member_count(argc=0)
cmp.v.v LT
bf [111]

:[110]
pushloc.v local._i
call.i steam_lobby_get_member_id(argc=1)
pushi.e -6
pushloc.v local._i
conv.v.i
pop.v.v [array]self.socketList
pushi.e 0
conv.i.v
pushi.e -6
pushloc.v local._i
conv.v.i
pop.v.v [array]self.clientTurnReady
pushglb.v global.playersManager
pushloc.v local._i
dup.v 1 8
dup.v 0
push.v stacktop.create_player
callv.v 1
popz.v
push.v local._i
push.e 1
add.i.v
pop.v.v local._i
b [109]

:[111]
call.i @@This@@(argc=0)
push.v builtin.send_socket_list
callv.v 0
popz.v
b [115]

:[112]
pushi.e 0
pop.v.i local._i

:[113]
pushloc.v local._i
push.v arg.argument0
call.i array_length(argc=1)
cmp.v.v LT
bf [115]

:[114]
pushi.e -15
pushloc.v local._i
conv.v.i
push.v [array]self.argument0
pushi.e -6
pushloc.v local._i
conv.v.i
pop.v.v [array]self.socketList
pushi.e 0
conv.i.v
pushi.e -6
pushloc.v local._i
conv.v.i
pop.v.v [array]self.clientTurnReady
pushglb.v global.playersManager
pushloc.v local._i
dup.v 1 8
dup.v 0
push.v stacktop.create_player
callv.v 1
popz.v
push.v local._i
push.e 1
add.i.v
pop.v.v local._i
b [113]

:[115]
call.i @@This@@(argc=0)
push.v builtin.recalculate_ghost
callv.v 0
popz.v
call.i @@This@@(argc=0)
push.v builtin.define_position_in_socket_list
callv.v 0
popz.v
pushref.i 45
pushi.e -9
pushenv [117]

:[116]
call.i @@This@@(argc=0)
push.v builtin.update_screen_players
callv.v 0
popz.v

:[117]
popenv [116]
exit.i

:[118]
push.i [function]gml_Script_anon@7500@gml_Object_oNetworking_Create_0
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
pop.v.v builtin.initialize_socket_list
b [123]

> gml_Script_anon@8935@gml_Object_oNetworking_Create_0 (locals=3, argc=0)
:[119]
call.i @@This@@(argc=0)
push.v builtin.network_init_package
callv.v 0
pop.v.v local._buffer
push.l 7
conv.l.v
pushi.e 1
conv.i.v
pushloc.v local._buffer
call.i buffer_write(argc=3)
popz.v
push.v builtin.socketList
call.i array_length(argc=1)
pop.v.v local._socketLength
pushloc.v local._socketLength
pushi.e 1
conv.i.v
pushloc.v local._buffer
call.i buffer_write(argc=3)
popz.v
pushi.e 0
pop.v.i local._s

:[120]
pushloc.v local._s
pushloc.v local._socketLength
cmp.v.v LT
bf [122]

:[121]
pushi.e -6
pushloc.v local._s
conv.v.i
push.v [array]self.socketList
pushi.e 12
conv.i.v
pushloc.v local._buffer
call.i buffer_write(argc=3)
popz.v
push.v local._s
push.e 1
add.i.v
pop.v.v local._s
b [120]

:[122]
push.l 1
conv.l.v
pushloc.v local._buffer
call.i @@This@@(argc=0)
push.v builtin.network_end_package
callv.v 2
popz.v
exit.i

:[123]
push.i [function]gml_Script_anon@8935@gml_Object_oNetworking_Create_0
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
pop.v.v builtin.send_socket_list
b [132]

> gml_Script_anon@9513@gml_Object_oNetworking_Create_0 (locals=2, argc=0)
:[124]
call.i @@This@@(argc=0)
push.v builtin.is_steam_init
callv.v 0
conv.v.b
bf [130]

:[125]
push.v builtin.timeOutCreateHost
dup.v 0 8
dup.v 0
push.v stacktop.run
callv.v 0
popz.v
pushi.e 0
pop.v.i local._steamLobbyType
pushglb.v global.lobbyTypeDefault
push.l 1
cmp.l.v EQ
bf [127]

:[126]
pushi.e 1
pop.v.i local._steamLobbyType
b [129]

:[127]
pushglb.v global.lobbyTypeDefault
push.l 2
cmp.l.v EQ
bf [129]

:[128]
pushi.e 2
pop.v.i local._steamLobbyType

:[129]
push.v builtin.mySteamId
call.i steam_get_user_persona_name_sync(argc=1)
pop.v.v local._user_name
pushglb.v global.lobbyNbrPlayersDefault
pushloc.v local._steamLobbyType
call.i steam_lobby_create(argc=2)
popz.v
pushi.e 0
conv.b.v
call.i gml_Script_InputPartySetJoin(argc=1)
popz.v
pushi.e 0
conv.b.v
call.i gml_Script_InputSetHotswap(argc=1)
popz.v
b [131]

:[130]
call.i @@This@@(argc=0)
push.v builtin.host_create_failed
callv.v 0
popz.v

:[131]
exit.i

:[132]
push.i [function]gml_Script_anon@9513@gml_Object_oNetworking_Create_0
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
pop.v.v builtin.create_host
b [136]

> gml_Script_anon@10331@gml_Object_oNetworking_Create_0 (locals=0, argc=0)
:[133]
pushi.e 1
pop.v.b builtin.isNetworkGame
pushi.e 1
pop.v.b global.isHost
pushi.e 0
pop.v.b global.isClient
call.i steam_lobby_get_owner_id(argc=0)
pop.v.v builtin.currentHostId
push.v builtin.currentHostId
pushi.e -6
pushi.e 0
pop.v.v [array]self.socketList
call.i @@This@@(argc=0)
push.v builtin.define_position_in_socket_list
callv.v 0
popz.v
pushglb.v global.lobbyNameDefault
push.s "LobbyName"@10082
conv.s.v
call.i steam_lobby_set_data(argc=2)
popz.v
pushglb.v global.lobbyNbrPlayersDefault
push.s "LobbyPlayerMax"@10079
conv.s.v
call.i steam_lobby_set_data(argc=2)
popz.v
pushglb.v global.gameVersion
push.s "Version"@10189
conv.s.v
call.i steam_lobby_set_data(argc=2)
popz.v
push.v builtin.timeOutCreateHost
dup.v 0 8
dup.v 0
push.v stacktop.stop
callv.v 0
popz.v
push.v builtin.timeOutCreateHost
dup.v 0 8
dup.v 0
push.v stacktop.reset
callv.v 0
popz.v
call.i steam_net_messages_register_callbacks(argc=0)
popz.v
pushref.i 45
pushi.e -9
pushenv [135]

:[134]
push.l 4
pop.v.l builtin.stateNext

:[135]
popenv [134]
exit.i

:[136]
push.i [function]gml_Script_anon@10331@gml_Object_oNetworking_Create_0
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
pop.v.v builtin.host_create_success
b [142]

> gml_Script_anon@11210@gml_Object_oNetworking_Create_0 (locals=0, argc=0)
:[137]
call.i @@This@@(argc=0)
push.v builtin.reset
callv.v 0
popz.v
pushref.i 45
pushi.e -9
pushenv [139]

:[138]
push.l 8
pop.v.l builtin.stateNext
push.s "lobby._steamDisconnected"@10086
pop.v.s builtin.errorMessageLabel
push.l 1
pop.v.l builtin.errorCallbackState

:[139]
popenv [138]
call.i @@This@@(argc=0)
push.v builtin.is_steam_init
callv.v 0
conv.v.b
bf [141]

:[140]
call.i steam_lobby_leave(argc=0)
popz.v

:[141]
exit.i

:[142]
push.i [function]gml_Script_anon@11210@gml_Object_oNetworking_Create_0
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
pop.v.v builtin.host_create_failed
b [144]

> gml_Script_anon@11643@gml_Object_oNetworking_Create_0 (locals=0, argc=0)
:[143]
pushi.e 0
conv.b.v
call.i gml_Script_InputPartySetJoin(argc=1)
popz.v
pushi.e 0
conv.b.v
call.i gml_Script_InputSetHotswap(argc=1)
popz.v
pushi.e 1
pop.v.b builtin.isNetworkGame
pushi.e 0
pop.v.b global.isHost
pushi.e 1
pop.v.b global.isClient
call.i steam_lobby_get_owner_id(argc=0)
pop.v.v builtin.currentHostId
pushi.e 10
conv.i.v
pushi.e -6
pushi.e 0
pop.v.v [array]self.alarm
push.v builtin.timeOutJoinHost
dup.v 0 8
dup.v 0
push.v stacktop.reset
callv.v 0
popz.v
push.v builtin.timeOutJoinHost
dup.v 0 8
dup.v 0
push.v stacktop.run
callv.v 0
popz.v
call.i steam_net_messages_register_callbacks(argc=0)
popz.v
exit.i

:[144]
push.i [function]gml_Script_anon@11643@gml_Object_oNetworking_Create_0
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
pop.v.v builtin.join_host_success
b [157]

> gml_Script_anon@12198@gml_Object_oNetworking_Create_0 (locals=0, argc=2)
:[145]
pushbltn.v builtin.argument0
pushbltn.v builtin.undefined
cmp.v.v EQ
bf [147]

:[146]
pushi.e 1
pop.v.b builtin.argument0

:[147]
pushbltn.v builtin.argument1
pushbltn.v builtin.undefined
cmp.v.v EQ
bf [149]

:[148]
push.s "-1"@10720
pop.v.s builtin.argument1

:[149]
push.v builtin.timeOutJoinHost
dup.v 0 8
dup.v 0
push.v stacktop.stop
callv.v 0
popz.v
push.v builtin.timeOutJoinHost
dup.v 0 8
dup.v 0
push.v stacktop.reset
callv.v 0
popz.v
call.i steam_lobby_leave(argc=0)
popz.v
pushi.e -1
conv.i.v
pushi.e -6
pushi.e 0
pop.v.v [array]self.alarm
push.v arg.argument0
conv.v.b
bf [153]

:[150]
pushref.i 45
pushi.e -9
pushenv [152]

:[151]
push.l 5
pop.v.l builtin.stateNext

:[152]
popenv [151]
b [156]

:[153]
pushref.i 45
pushi.e -9
pushenv [155]

:[154]
push.l 8
pop.v.l builtin.stateNext
push.v arg.argument1
pushglb.v global.gameVersion
push.s "lobby._differentVersion#{0}#{1}"@10721
conv.s.v
call.i @@string@@(argc=3)
pop.v.v builtin.errorMessageLabel
push.l 5
pop.v.l builtin.errorCallbackState

:[155]
popenv [154]

:[156]
exit.i

:[157]
push.i [function]gml_Script_anon@12198@gml_Object_oNetworking_Create_0
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
pop.v.v builtin.join_host_failed
b [171]

> gml_Script_anon@12921@gml_Object_oNetworking_Create_0 (locals=1, argc=0)
:[158]
pushglb.v global.playersCount
pushi.e 1
cmp.i.v EQ
bf [163]

:[159]
pushi.e 0
conv.i.v
pushi.e 0
conv.b.v
call.i gml_Script_InputPlayerSetGhost(argc=2)
popz.v
push.v builtin.myDeviceType
pushi.e -1
cmp.i.v EQ
bf [161]

:[160]
pushi.e 0
conv.i.v
pushi.e -1
conv.i.v
call.i gml_Script_InputPlayerSetDevice(argc=2)
popz.v
b [162]

:[161]
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_InputPlayerSetDevice(argc=2)
popz.v

:[162]
b [170]

:[163]
pushi.e 0
pop.v.i local._i

:[164]
pushloc.v local._i
push.v builtin.socketList
call.i array_length(argc=1)
cmp.v.v LT
bf [170]

:[165]
pushloc.v local._i
pushi.e 1
conv.b.v
call.i gml_Script_InputPlayerSetGhost(argc=2)
popz.v
pushi.e -6
pushloc.v local._i
conv.v.i
push.v [array]self.socketList
push.v builtin.mySteamId
cmp.v.v EQ
bf [169]

:[166]
pushloc.v local._i
pushi.e 0
conv.b.v
call.i gml_Script_InputPlayerSetGhost(argc=2)
popz.v
push.v builtin.myDeviceType
pushi.e -1
cmp.i.v EQ
bf [168]

:[167]
pushloc.v local._i
pushi.e -1
conv.i.v
call.i gml_Script_InputPlayerSetDevice(argc=2)
popz.v
b [169]

:[168]
pushloc.v local._i
pushi.e 0
conv.i.v
call.i gml_Script_InputPlayerSetDevice(argc=2)
popz.v

:[169]
push.v local._i
push.e 1
add.i.v
pop.v.v local._i
b [164]

:[170]
exit.i

:[171]
push.i [function]gml_Script_anon@12921@gml_Object_oNetworking_Create_0
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
pop.v.v builtin.recalculate_ghost
b [176]

> gml_Script_anon@13896@gml_Object_oNetworking_Create_0 (locals=1, argc=0)
:[172]
pushglb.v global.playersCount
pushi.e 1
sub.i.v
pop.v.v local._p

:[173]
pushloc.v local._p
pushi.e 0
cmp.i.v GTE
bf [175]

:[174]
pushglb.v global.playersManager
pushloc.v local._p
dup.v 1 8
dup.v 0
push.v stacktop.remove
callv.v 1
popz.v
push.v local._p
push.e 1
sub.i.v
pop.v.v local._p
b [173]

:[175]
exit.i

:[176]
push.i [function]gml_Script_anon@13896@gml_Object_oNetworking_Create_0
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
pop.v.v builtin.delete_everyone
b [186]

> gml_Script_anon@14289@gml_Object_oNetworking_Create_0 (locals=1, argc=0)
:[177]
pushi.e 0
pop.v.i local._i

:[178]
pushloc.v local._i
push.v builtin.clientTurnReady
call.i array_length(argc=1)
cmp.v.v LT
bf [184]

:[179]
pushloc.v local._i
pushi.e 0
cmp.i.v EQ
bf [181]

:[180]
b [183]

:[181]
pushi.e -6
pushloc.v local._i
conv.v.i
push.v [array]self.clientTurnReady
push.v builtin.turnId
cmp.v.v NEQ
bf [183]

:[182]
pushi.e 0
conv.b.v
ret.v

:[183]
push.v local._i
push.e 1
add.i.v
pop.v.v local._i
b [178]

:[184]
pushi.e 1
conv.b.v
ret.v

:[185]
exit.i

:[186]
push.i [function]gml_Script_anon@14289@gml_Object_oNetworking_Create_0
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
pop.v.v builtin.check_client_turn
b [192]

> gml_Script_anon@14574@gml_Object_oNetworking_Create_0 (locals=0, argc=0)
:[187]
call.i @@This@@(argc=0)
push.v builtin.is_steam_init
callv.v 0
conv.v.b
bf [191]

:[188]
pushglb.v global.isHost
conv.v.b
bf [190]

:[189]
pushi.e 0
conv.b.v
call.i steam_lobby_set_joinable(argc=1)
popz.v

:[190]
call.i steam_lobby_leave(argc=0)
popz.v

:[191]
pushi.e 0
pop.v.b builtin.isNetworkGame
call.i steam_net_messages_unregister_callbacks(argc=0)
popz.v
call.i @@This@@(argc=0)
push.v builtin.delete_everyone
callv.v 0
popz.v
call.i @@NewGMLArray@@(argc=0)
pop.v.v builtin.socketList
pushi.e 1
pop.v.b global.isHost
pushi.e 0
pop.v.b global.isClient
pushglb.v global.playersManager
pushi.e 0
conv.i.v
dup.v 1 8
dup.v 0
push.v stacktop.create_player
callv.v 1
popz.v
call.i @@This@@(argc=0)
push.v builtin.recalculate_ghost
callv.v 0
popz.v
call.i @@This@@(argc=0)
push.v builtin.define_position_in_socket_list
callv.v 0
popz.v
pushi.e 1
conv.b.v
call.i gml_Script_InputSetHotswap(argc=1)
popz.v
pushi.e 0
conv.b.v
call.i gml_Script_InputPartySetJoin(argc=1)
popz.v
pushglb.v global.tvState
dup.v 0 8
dup.v 0
push.v stacktop.turn_off
callv.v 0
popz.v
pushi.e -1
conv.i.v
pushi.e -6
pushi.e 0
pop.v.v [array]self.alarm
exit.i

:[192]
push.i [function]gml_Script_anon@14574@gml_Object_oNetworking_Create_0
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
pop.v.v builtin.reset
b [197]

> gml_Script_anon@15300@gml_Object_oNetworking_Create_0 (locals=1, argc=0)
:[193]
pushi.e 0
pop.v.i builtin.turnId
pushi.e 0
pop.v.i local._i

:[194]
pushloc.v local._i
push.v builtin.clientTurnReady
call.i array_length(argc=1)
cmp.v.v LT
bf [196]

:[195]
pushi.e 0
conv.i.v
pushi.e -6
pushloc.v local._i
conv.v.i
pop.v.v [array]self.clientTurnReady
push.v local._i
push.e 1
add.i.v
pop.v.v local._i
b [194]

:[196]
exit.i

:[197]
push.i [function]gml_Script_anon@15300@gml_Object_oNetworking_Create_0
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
pop.v.v builtin.reset_turn
b [199]

> gml_Script_anon@15496@gml_Object_oNetworking_Create_0 (locals=0, argc=0)
:[198]
exit.i

:[199]
push.i [function]gml_Script_anon@15496@gml_Object_oNetworking_Create_0
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
pop.v.v builtin.send_game_state
b [201]

> gml_Script_anon@15527@gml_Object_oNetworking_Create_0 (locals=1, argc=2)
:[200]
call.i @@This@@(argc=0)
push.v builtin.network_init_package
callv.v 0
pop.v.v local._buffer
push.l 6
conv.l.v
pushi.e 1
conv.i.v
pushloc.v local._buffer
call.i buffer_write(argc=3)
popz.v
push.v arg.argument0
pushi.e 10
conv.i.v
pushloc.v local._buffer
call.i buffer_write(argc=3)
popz.v
push.v arg.argument1
pushi.e 5
conv.i.v
pushloc.v local._buffer
call.i buffer_write(argc=3)
popz.v
push.l 2
conv.l.v
pushloc.v local._buffer
call.i @@This@@(argc=0)
push.v builtin.network_end_package
callv.v 2
popz.v
exit.i

:[201]
push.i [function]gml_Script_anon@15527@gml_Object_oNetworking_Create_0
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
pop.v.v builtin.launch_game
b [205]

> gml_Script_anon@15855@gml_Object_oNetworking_Create_0 (locals=0, argc=5)
:[202]
pushbltn.v builtin.argument4
pushbltn.v builtin.undefined
cmp.v.v EQ
bf [204]

:[203]
push.l 1
pop.v.l builtin.argument4

:[204]
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
push.v builtin.bufferCursor
call.i buffer_seek(argc=3)
popz.v
push.l 9
conv.l.v
pushi.e 1
conv.i.v
push.v builtin.bufferCursor
call.i buffer_write(argc=3)
popz.v
push.v arg.argument0
pushi.e 1
conv.i.v
push.v builtin.bufferCursor
call.i buffer_write(argc=3)
popz.v
push.v arg.argument1
pushi.e 7
conv.i.v
push.v builtin.bufferCursor
call.i buffer_write(argc=3)
popz.v
push.v arg.argument2
pushi.e 7
conv.i.v
push.v builtin.bufferCursor
call.i buffer_write(argc=3)
popz.v
pushi.e 0
conv.b.v
push.v arg.argument4
pushbltn.v builtin.undefined
pushbltn.v builtin.undefined
push.v arg.argument3
push.v builtin.bufferCursor
call.i @@This@@(argc=0)
push.v builtin.network_end_package
callv.v 6
popz.v
exit.i

:[205]
push.i [function]gml_Script_anon@15855@gml_Object_oNetworking_Create_0
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
pop.v.v builtin.mouse_coordinate
b [213]

> gml_Script_anon@16323@gml_Object_oNetworking_Create_0 (locals=2, argc=7)
:[206]
pushbltn.v builtin.argument5
pushbltn.v builtin.undefined
cmp.v.v EQ
bf [208]

:[207]
pushi.e -1
pop.v.i builtin.argument5

:[208]
pushbltn.v builtin.argument6
pushbltn.v builtin.undefined
cmp.v.v EQ
bf [210]

:[209]
pushi.e -1
pop.v.i builtin.argument6

:[210]
call.i @@This@@(argc=0)
push.v builtin.network_init_package
callv.v 0
pop.v.v local._buffer
push.l 10
conv.l.v
pushi.e 1
conv.i.v
pushloc.v local._buffer
call.i buffer_write(argc=3)
popz.v
push.v arg.argument0
pushi.e 1
conv.i.v
pushloc.v local._buffer
call.i buffer_write(argc=3)
popz.v
push.v arg.argument1
pushi.e 7
conv.i.v
pushloc.v local._buffer
call.i buffer_write(argc=3)
popz.v
push.v arg.argument2
pushi.e 7
conv.i.v
pushloc.v local._buffer
call.i buffer_write(argc=3)
popz.v
push.v arg.argument3
pushi.e 11
conv.i.v
pushloc.v local._buffer
call.i buffer_write(argc=3)
popz.v
push.v arg.argument6
pushi.e 12
conv.i.v
pushloc.v local._buffer
call.i buffer_write(argc=3)
popz.v
pushi.e -1
pop.v.i local._customIdSocket
push.v arg.argument6
pushi.e -1
cmp.i.v NEQ
bf [212]

:[211]
pushi.e -6
push.v arg.argument6
conv.v.i
push.v [array]self.socketList
pop.v.v local._customIdSocket

:[212]
pushloc.v local._customIdSocket
push.v arg.argument5
push.v arg.argument4
pushloc.v local._buffer
call.i @@This@@(argc=0)
push.v builtin.network_end_package
callv.v 4
popz.v
exit.i

:[213]
push.i [function]gml_Script_anon@16323@gml_Object_oNetworking_Create_0
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
pop.v.v builtin.networking_generate_chatbox_tooltip
b [215]

> gml_Script_anon@16994@gml_Object_oNetworking_Create_0 (locals=1, argc=0)
:[214]
call.i @@This@@(argc=0)
push.v builtin.network_init_package
callv.v 0
pop.v.v local._buffer
push.l 16
conv.l.v
pushi.e 1
conv.i.v
pushloc.v local._buffer
call.i buffer_write(argc=3)
popz.v
push.v builtin.myPositionInSocketList
pushi.e 1
conv.i.v
pushloc.v local._buffer
call.i buffer_write(argc=3)
popz.v
push.v builtin.turnId
pushi.e 5
conv.i.v
pushloc.v local._buffer
call.i buffer_write(argc=3)
popz.v
push.l 0
conv.l.v
pushloc.v local._buffer
call.i @@This@@(argc=0)
push.v builtin.network_end_package
callv.v 2
popz.v
exit.i

:[215]
push.i [function]gml_Script_anon@16994@gml_Object_oNetworking_Create_0
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
pop.v.v builtin.step_finished
b [219]

> gml_Script_anon@17477@gml_Object_oNetworking_Create_0 (locals=0, argc=0)
:[216]
pushi.e 0
conv.i.v
push.v builtin.pendingStateMachine
pushi.e 1
sub.i.v
call.i max(argc=2)
pop.v.v builtin.pendingStateMachine
push.v builtin.pendingStateMachine
pushi.e 0
cmp.i.v EQ
bf [218]

:[217]
push.v builtin.turnId
push.e 1
add.i.v
pop.v.v builtin.turnId
pushi.e 1
pop.v.b builtin.canSendReady
pushi.e -1
conv.i.v
pushi.e -6
pushi.e 2
pop.v.v [array]self.alarm

:[218]
exit.i

:[219]
push.i [function]gml_Script_anon@17477@gml_Object_oNetworking_Create_0
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
pop.v.v builtin.state_switched
b [221]

> gml_Script_anon@17857@gml_Object_oNetworking_Create_0 (locals=0, argc=0)
:[220]
pushi.e 0
pop.v.b builtin.canSendReady
pushi.e 0
conv.i.v
call.i game_get_speed(argc=1)
pushi.e -6
pushi.e 2
pop.v.v [array]self.alarm
exit.i

:[221]
push.i [function]gml_Script_anon@17857@gml_Object_oNetworking_Create_0
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
pop.v.v builtin.send_ready
b [223]

> gml_Script_anon@17964@gml_Object_oNetworking_Create_0 (locals=1, argc=1)
:[222]
call.i @@This@@(argc=0)
push.v builtin.network_init_package
callv.v 0
pop.v.v local._buffer
push.l 11
conv.l.v
pushi.e 1
conv.i.v
pushloc.v local._buffer
call.i buffer_write(argc=3)
popz.v
push.v arg.argument0
pushi.e 11
conv.i.v
pushloc.v local._buffer
call.i buffer_write(argc=3)
popz.v
push.l 1
conv.l.v
pushloc.v local._buffer
call.i @@This@@(argc=0)
push.v builtin.network_end_package
callv.v 2
popz.v
exit.i

:[223]
push.i [function]gml_Script_anon@17964@gml_Object_oNetworking_Create_0
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
pop.v.v builtin.go_to_room
b [225]

> gml_Script_anon@18226@gml_Object_oNetworking_Create_0 (locals=1, argc=4)
:[224]
call.i @@This@@(argc=0)
push.v builtin.network_init_package
callv.v 0
pop.v.v local._buffer
push.l 12
conv.l.v
pushi.e 1
conv.i.v
pushloc.v local._buffer
call.i buffer_write(argc=3)
popz.v
push.v arg.argument0
pushi.e 1
conv.i.v
pushloc.v local._buffer
call.i buffer_write(argc=3)
popz.v
push.v arg.argument1
pushi.e 1
conv.i.v
pushloc.v local._buffer
call.i buffer_write(argc=3)
popz.v
push.v arg.argument2
pushi.e 2
conv.i.v
pushloc.v local._buffer
call.i buffer_write(argc=3)
popz.v
push.v arg.argument3
pushi.e 2
conv.i.v
pushloc.v local._buffer
call.i buffer_write(argc=3)
popz.v
push.l 1
conv.l.v
pushloc.v local._buffer
call.i @@This@@(argc=0)
push.v builtin.network_end_package
callv.v 2
popz.v
exit.i

:[225]
push.i [function]gml_Script_anon@18226@gml_Object_oNetworking_Create_0
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
pop.v.v builtin.go_to_step
b [230]

> gml_Script_anon@18755@gml_Object_oNetworking_Create_0 (locals=1, argc=3)
:[226]
pushglb.v global.isHost
conv.v.b
bf [228]

:[227]
push.v arg.argument2
push.v arg.argument1
push.v arg.argument0
call.i @@This@@(argc=0)
push.v builtin.apply_action
callv.v 3
popz.v
b [229]

:[228]
call.i @@This@@(argc=0)
push.v builtin.network_init_package
callv.v 0
pop.v.v local._buffer
push.l 13
conv.l.v
pushi.e 1
conv.i.v
pushloc.v local._buffer
call.i buffer_write(argc=3)
popz.v
push.v arg.argument0
pushi.e 1
conv.i.v
pushloc.v local._buffer
call.i buffer_write(argc=3)
popz.v
push.v arg.argument1
pushi.e 1
conv.i.v
pushloc.v local._buffer
call.i buffer_write(argc=3)
popz.v
push.v arg.argument2
pushi.e 10
conv.i.v
pushloc.v local._buffer
call.i buffer_write(argc=3)
popz.v
push.l 0
conv.l.v
pushloc.v local._buffer
call.i @@This@@(argc=0)
push.v builtin.network_end_package
callv.v 2
popz.v

:[229]
exit.i

:[230]
push.i [function]gml_Script_anon@18755@gml_Object_oNetworking_Create_0
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
pop.v.v builtin.send_action
b [232]

> gml_Script_anon@19353@gml_Object_oNetworking_Create_0 (locals=2, argc=3)
:[231]
pushbltn.v builtin.current_time
pop.v.v local._newTime
call.i @@This@@(argc=0)
push.v builtin.network_init_package
callv.v 0
pop.v.v local._buffer
push.l 14
conv.l.v
pushi.e 1
conv.i.v
pushloc.v local._buffer
call.i buffer_write(argc=3)
popz.v
push.v arg.argument0
pushi.e 1
conv.i.v
pushloc.v local._buffer
call.i buffer_write(argc=3)
popz.v
push.v arg.argument1
pushi.e 1
conv.i.v
pushloc.v local._buffer
call.i buffer_write(argc=3)
popz.v
push.v arg.argument2
pushi.e 10
conv.i.v
pushloc.v local._buffer
call.i buffer_write(argc=3)
popz.v
pushloc.v local._newTime
pushi.e 12
conv.i.v
pushloc.v local._buffer
call.i buffer_write(argc=3)
popz.v
push.l 1
conv.l.v
pushloc.v local._buffer
call.i @@This@@(argc=0)
push.v builtin.network_end_package
callv.v 2
popz.v
pushglb.v global.playersManager
pushloc.v local._newTime
push.v arg.argument2
push.v arg.argument1
push.v arg.argument0
dup.v 4 8
dup.v 0
push.v stacktop.apply_action
callv.v 4
popz.v
exit.i

:[232]
push.i [function]gml_Script_anon@19353@gml_Object_oNetworking_Create_0
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
pop.v.v builtin.apply_action
b [234]

> gml_Script_anon@19906@gml_Object_oNetworking_Create_0 (locals=1, argc=1)
:[233]
call.i @@This@@(argc=0)
push.v builtin.network_init_package
callv.v 0
pop.v.v local._buffer
push.l 15
conv.l.v
pushi.e 1
conv.i.v
pushloc.v local._buffer
call.i buffer_write(argc=3)
popz.v
push.v arg.argument0
pushi.e 7
conv.i.v
pushloc.v local._buffer
call.i buffer_write(argc=3)
popz.v
push.l 1
conv.l.v
pushloc.v local._buffer
call.i @@This@@(argc=0)
push.v builtin.network_end_package
callv.v 2
popz.v
exit.i

:[234]
push.i [function]gml_Script_anon@19906@gml_Object_oNetworking_Create_0
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
pop.v.v builtin.update_position_book
b [238]

> gml_Script_anon@20174@gml_Object_oNetworking_Create_0 (locals=1, argc=2)
:[235]
pushbltn.v builtin.argument1
pushbltn.v builtin.undefined
cmp.v.v EQ
bf [237]

:[236]
pushi.e -1
pop.v.i builtin.argument1

:[237]
call.i @@This@@(argc=0)
push.v builtin.network_init_package
callv.v 0
pop.v.v local._buffer
push.l 5
conv.l.v
pushi.e 1
conv.i.v
pushloc.v local._buffer
call.i buffer_write(argc=3)
popz.v
push.v arg.argument0
pushi.e 10
conv.i.v
pushloc.v local._buffer
call.i buffer_write(argc=3)
popz.v
push.v arg.argument1
pushi.e 1
conv.i.v
pushloc.v local._buffer
call.i buffer_write(argc=3)
popz.v
push.l 2
conv.l.v
pushloc.v local._buffer
call.i @@This@@(argc=0)
push.v builtin.network_end_package
callv.v 2
popz.v
exit.i

:[238]
push.i [function]gml_Script_anon@20174@gml_Object_oNetworking_Create_0
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
pop.v.v builtin.show_cursor
b [240]

> gml_Script_anon@20504@gml_Object_oNetworking_Create_0 (locals=1, argc=1)
:[239]
call.i @@This@@(argc=0)
push.v builtin.network_init_package
callv.v 0
pop.v.v local._buffer
push.l 2
conv.l.v
pushi.e 1
conv.i.v
pushloc.v local._buffer
call.i buffer_write(argc=3)
popz.v
push.v arg.argument0
pushi.e 7
conv.i.v
pushloc.v local._buffer
call.i buffer_write(argc=3)
popz.v
push.l 1
conv.l.v
pushloc.v local._buffer
call.i @@This@@(argc=0)
push.v builtin.network_end_package
callv.v 2
popz.v
exit.i

:[240]
push.i [function]gml_Script_anon@20504@gml_Object_oNetworking_Create_0
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
pop.v.v builtin.set_angle_pendulum
b [245]

> gml_Script_anon@20787@gml_Object_oNetworking_Create_0 (locals=1, argc=4)
:[241]
pushglb.v global.isHost
conv.v.b
bf [243]

:[242]
push.v arg.argument3
push.v arg.argument2
push.v arg.argument1
push.v arg.argument0
call.i @@This@@(argc=0)
push.v builtin.add_stamp
callv.v 4
popz.v
b [244]

:[243]
call.i @@This@@(argc=0)
push.v builtin.network_init_package
callv.v 0
pop.v.v local._buffer
push.l 17
conv.l.v
pushi.e 1
conv.i.v
pushloc.v local._buffer
call.i buffer_write(argc=3)
popz.v
push.v arg.argument0
pushi.e 7
conv.i.v
pushloc.v local._buffer
call.i buffer_write(argc=3)
popz.v
push.v arg.argument1
pushi.e 7
conv.i.v
pushloc.v local._buffer
call.i buffer_write(argc=3)
popz.v
push.v arg.argument2
pushi.e 1
conv.i.v
pushloc.v local._buffer
call.i buffer_write(argc=3)
popz.v
push.v arg.argument3
pushi.e 1
conv.i.v
pushloc.v local._buffer
call.i buffer_write(argc=3)
popz.v
push.l 0
conv.l.v
pushloc.v local._buffer
call.i @@This@@(argc=0)
push.v builtin.network_end_package
callv.v 2
popz.v

:[244]
exit.i

:[245]
push.i [function]gml_Script_anon@20787@gml_Object_oNetworking_Create_0
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
pop.v.v builtin.send_stamp
b [249]

> gml_Script_anon@21310@gml_Object_oNetworking_Create_0 (locals=1, argc=4)
:[246]
pushref.i 40
pushi.e -9
pushenv [248]

:[247]
push.v arg.argument3
push.v arg.argument2
push.v arg.argument1
push.v arg.argument0
call.i @@This@@(argc=0)
push.v builtin.add_stamp
callv.v 4
popz.v

:[248]
popenv [247]
call.i @@This@@(argc=0)
push.v builtin.network_init_package
callv.v 0
pop.v.v local._buffer
push.l 18
conv.l.v
pushi.e 1
conv.i.v
pushloc.v local._buffer
call.i buffer_write(argc=3)
popz.v
push.v arg.argument0
pushi.e 7
conv.i.v
pushloc.v local._buffer
call.i buffer_write(argc=3)
popz.v
push.v arg.argument1
pushi.e 7
conv.i.v
pushloc.v local._buffer
call.i buffer_write(argc=3)
popz.v
push.v arg.argument2
pushi.e 1
conv.i.v
pushloc.v local._buffer
call.i buffer_write(argc=3)
popz.v
push.v arg.argument3
pushi.e 1
conv.i.v
pushloc.v local._buffer
call.i buffer_write(argc=3)
popz.v
push.l 1
conv.l.v
pushloc.v local._buffer
call.i @@This@@(argc=0)
push.v builtin.network_end_package
callv.v 2
popz.v
exit.i

:[249]
push.i [function]gml_Script_anon@21310@gml_Object_oNetworking_Create_0
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
pop.v.v builtin.add_stamp
b [251]

> gml_Script_anon@21794@gml_Object_oNetworking_Create_0 (locals=1, argc=0)
:[250]
call.i @@This@@(argc=0)
push.v builtin.network_init_package
callv.v 0
pop.v.v local._buffer
push.l 19
conv.l.v
pushi.e 1
conv.i.v
pushloc.v local._buffer
call.i buffer_write(argc=3)
popz.v
push.l 2
conv.l.v
pushloc.v local._buffer
call.i @@This@@(argc=0)
push.v builtin.network_end_package
callv.v 2
popz.v
exit.i

:[251]
push.i [function]gml_Script_anon@21794@gml_Object_oNetworking_Create_0
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
pop.v.v builtin.destroy_dialogue
b [253]

> gml_Script_anon@22014@gml_Object_oNetworking_Create_0 (locals=1, argc=1)
:[252]
call.i @@This@@(argc=0)
push.v builtin.network_init_package
callv.v 0
pop.v.v local._buffer
push.l 20
conv.l.v
pushi.e 1
conv.i.v
pushloc.v local._buffer
call.i buffer_write(argc=3)
popz.v
push.v arg.argument0
pushi.e 5
conv.i.v
pushloc.v local._buffer
call.i buffer_write(argc=3)
popz.v
push.l 2
conv.l.v
pushloc.v local._buffer
call.i @@This@@(argc=0)
push.v builtin.network_end_package
callv.v 2
popz.v
exit.i

:[253]
push.i [function]gml_Script_anon@22014@gml_Object_oNetworking_Create_0
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
pop.v.v builtin.ask_dialogue_status
b [262]

> gml_Script_anon@22307@gml_Object_oNetworking_Create_0 (locals=1, argc=4)
:[254]
pushbltn.v builtin.argument2
pushbltn.v builtin.undefined
cmp.v.v EQ
bf [256]

:[255]
pushi.e -1
pop.v.i builtin.argument2

:[256]
pushbltn.v builtin.argument3
pushbltn.v builtin.undefined
cmp.v.v EQ
bf [258]

:[257]
push.l 1
pop.v.l builtin.argument3

:[258]
call.i @@This@@(argc=0)
push.v builtin.network_init_package
callv.v 0
pop.v.v local._buffer
push.l 21
conv.l.v
pushi.e 1
conv.i.v
pushloc.v local._buffer
call.i buffer_write(argc=3)
popz.v
push.v arg.argument0
pushi.e 1
conv.i.v
pushloc.v local._buffer
call.i buffer_write(argc=3)
popz.v
push.v arg.argument1
pushi.e 10
conv.i.v
pushloc.v local._buffer
call.i buffer_write(argc=3)
popz.v
push.v arg.argument2
pushi.e -1
cmp.i.v EQ
bf [260]

:[259]
push.v arg.argument3
pushbltn.v builtin.undefined
pushbltn.v builtin.undefined
push.l 2
conv.l.v
pushloc.v local._buffer
call.i @@This@@(argc=0)
push.v builtin.network_end_package
callv.v 5
popz.v
b [261]

:[260]
push.v arg.argument3
push.v arg.argument2
pushbltn.v builtin.undefined
push.l 3
conv.l.v
pushloc.v local._buffer
call.i @@This@@(argc=0)
push.v builtin.network_end_package
callv.v 5
popz.v

:[261]
exit.i

:[262]
push.i [function]gml_Script_anon@22307@gml_Object_oNetworking_Create_0
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
pop.v.v builtin.update_counter_dialogue
b [264]

> gml_Script_anon@22833@gml_Object_oNetworking_Create_0 (locals=1, argc=0)
:[263]
call.i @@This@@(argc=0)
push.v builtin.network_init_package
callv.v 0
pop.v.v local._buffer
push.l 22
conv.l.v
pushi.e 1
conv.i.v
pushloc.v local._buffer
call.i buffer_write(argc=3)
popz.v
push.l 1
conv.l.v
pushloc.v local._buffer
call.i @@This@@(argc=0)
push.v builtin.network_end_package
callv.v 2
popz.v
exit.i

:[264]
push.i [function]gml_Script_anon@22833@gml_Object_oNetworking_Create_0
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
pop.v.v builtin.yule
b [266]

> gml_Script_anon@23025@gml_Object_oNetworking_Create_0 (locals=1, argc=0)
:[265]
call.i @@This@@(argc=0)
push.v builtin.network_init_package
callv.v 0
pop.v.v local._buffer
push.l 23
conv.l.v
pushi.e 1
conv.i.v
pushloc.v local._buffer
call.i buffer_write(argc=3)
popz.v
push.l 1
conv.l.v
pushloc.v local._buffer
call.i @@This@@(argc=0)
push.v builtin.network_end_package
callv.v 2
popz.v
exit.i

:[266]
push.i [function]gml_Script_anon@23025@gml_Object_oNetworking_Create_0
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
pop.v.v builtin.babayaga
b [270]

> gml_Script_anon@23216@gml_Object_oNetworking_Create_0 (locals=1, argc=0)
:[267]
push.v builtin.isNetworkGame
conv.v.b
bf [269]

:[268]
call.i @@This@@(argc=0)
push.v builtin.network_init_package
callv.v 0
pop.v.v local._buffer
push.l 24
conv.l.v
pushi.e 1
conv.i.v
pushloc.v local._buffer
call.i buffer_write(argc=3)
popz.v
pushbltn.v builtin.current_time
pushi.e 12
conv.i.v
pushloc.v local._buffer
call.i buffer_write(argc=3)
popz.v
push.l 1
conv.l.v
pushloc.v local._buffer
call.i @@This@@(argc=0)
push.v builtin.network_end_package
callv.v 2
popz.v

:[269]
exit.i

:[270]
push.i [function]gml_Script_anon@23216@gml_Object_oNetworking_Create_0
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
pop.v.v builtin.ping
b [272]

> gml_Script_anon@23505@gml_Object_oNetworking_Create_0 (locals=1, argc=1)
:[271]
call.i @@This@@(argc=0)
push.v builtin.network_init_package
callv.v 0
pop.v.v local._buffer
push.l 25
conv.l.v
pushi.e 1
conv.i.v
pushloc.v local._buffer
call.i buffer_write(argc=3)
popz.v
push.v arg.argument0
pushi.e 12
conv.i.v
pushloc.v local._buffer
call.i buffer_write(argc=3)
popz.v
push.l 0
conv.l.v
pushloc.v local._buffer
call.i @@This@@(argc=0)
push.v builtin.network_end_package
callv.v 2
popz.v
exit.i

:[272]
push.i [function]gml_Script_anon@23505@gml_Object_oNetworking_Create_0
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
pop.v.v builtin.pong
b [274]

> gml_Script_anon@23766@gml_Object_oNetworking_Create_0 (locals=1, argc=2)
:[273]
call.i @@This@@(argc=0)
push.v builtin.network_init_package
callv.v 0
pop.v.v local._buffer
push.l 26
conv.l.v
pushi.e 1
conv.i.v
pushloc.v local._buffer
call.i buffer_write(argc=3)
popz.v
push.v arg.argument0
pushi.e 1
conv.i.v
pushloc.v local._buffer
call.i buffer_write(argc=3)
popz.v
push.v arg.argument1
pushi.e 6
conv.i.v
pushloc.v local._buffer
call.i buffer_write(argc=3)
popz.v
push.l 2
conv.l.v
pushloc.v local._buffer
call.i @@This@@(argc=0)
push.v builtin.network_end_package
callv.v 2
popz.v
exit.i

:[274]
push.i [function]gml_Script_anon@23766@gml_Object_oNetworking_Create_0
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
pop.v.v builtin.funfair_send_angle
b [362]

> gml_Script_anon@24180@gml_Object_oNetworking_Create_0 (locals=25, argc=1)
:[275]
pushi.e 1
conv.i.v
push.v arg.argument0
call.i buffer_read(argc=2)
pop.v.v local._theEventType
pushloc.v local._theEventType
dup.v 0
push.l 0
cmp.l.v EQ
bt [300]

:[276]
dup.v 0
push.l 1
cmp.l.v EQ
bt [301]

:[277]
dup.v 0
push.l 4
cmp.l.v EQ
bt [302]

:[278]
dup.v 0
push.l 7
cmp.l.v EQ
bt [303]

:[279]
dup.v 0
push.l 5
cmp.l.v EQ
bt [312]

:[280]
dup.v 0
push.l 6
cmp.l.v EQ
bt [313]

:[281]
dup.v 0
push.l 9
cmp.l.v EQ
bt [316]

:[282]
dup.v 0
push.l 13
cmp.l.v EQ
bt [319]

:[283]
dup.v 0
push.l 14
cmp.l.v EQ
bt [320]

:[284]
dup.v 0
push.l 16
cmp.l.v EQ
bt [321]

:[285]
dup.v 0
push.l 17
cmp.l.v EQ
bt [324]

:[286]
dup.v 0
push.l 18
cmp.l.v EQ
bt [325]

:[287]
dup.v 0
push.l 20
cmp.l.v EQ
bt [328]

:[288]
dup.v 0
push.l 19
cmp.l.v EQ
bt [335]

:[289]
dup.v 0
push.l 21
cmp.l.v EQ
bt [338]

:[290]
dup.v 0
push.l 2
cmp.l.v EQ
bt [341]

:[291]
dup.v 0
push.l 15
cmp.l.v EQ
bt [342]

:[292]
dup.v 0
push.l 11
cmp.l.v EQ
bt [345]

:[293]
dup.v 0
push.l 12
cmp.l.v EQ
bt [346]

:[294]
dup.v 0
push.l 22
cmp.l.v EQ
bt [347]

:[295]
dup.v 0
push.l 23
cmp.l.v EQ
bt [350]

:[296]
dup.v 0
push.l 24
cmp.l.v EQ
bt [353]

:[297]
dup.v 0
push.l 25
cmp.l.v EQ
bt [354]

:[298]
dup.v 0
push.l 26
cmp.l.v EQ
bt [355]

:[299]
b [361]

:[300]
pushi.e 12
conv.i.v
push.v arg.argument0
call.i buffer_read(argc=2)
pop.v.v local._id
pushloc.v local._id
call.i @@This@@(argc=0)
push.v builtin.hello_back
callv.v 1
popz.v
b [361]

:[301]
call.i @@This@@(argc=0)
push.v builtin.ask_for_socket_list
callv.v 0
popz.v
push.v builtin.timeOutJoinHost
dup.v 0 8
dup.v 0
push.v stacktop.stop
callv.v 0
popz.v
push.v builtin.timeOutJoinHost
dup.v 0 8
dup.v 0
push.v stacktop.reset
callv.v 0
popz.v
pushi.e -1
conv.i.v
pushi.e -6
pushi.e 0
pop.v.v [array]self.alarm
b [361]

:[302]
call.i @@This@@(argc=0)
push.v builtin.initialize_socket_list
callv.v 0
popz.v
b [361]

:[303]
pushi.e 1
conv.i.v
push.v arg.argument0
call.i buffer_read(argc=2)
pop.v.v local._socketLength
call.i @@NewGMLArray@@(argc=0)
pop.v.v local._socketList
pushi.e 0
pop.v.i local._s

:[304]
pushloc.v local._s
pushloc.v local._socketLength
cmp.v.v LT
bf [306]

:[305]
pushi.e 12
conv.i.v
push.v arg.argument0
call.i buffer_read(argc=2)
pushloc.v local._socketList
call.i array_push(argc=2)
popz.v
push.v local._s
push.e 1
add.i.v
pop.v.v local._s
b [304]

:[306]
push.v builtin.isNetworkGame
conv.v.b
not.b
bt [308]

:[307]
pushi.e -7
pushi.e 0
push.v [array]self._socketList
call.i steam_lobby_get_owner_id(argc=0)
cmp.v.v NEQ
b [309]

:[308]
push.e 1

:[309]
bf [311]

:[310]
popz.v
exit.i

:[311]
pushloc.v local._socketList
call.i @@This@@(argc=0)
push.v builtin.initialize_socket_list
callv.v 1
popz.v
b [361]

:[312]
pushi.e 10
conv.i.v
push.v arg.argument0
call.i buffer_read(argc=2)
pop.v.v local._bool
pushi.e 1
conv.i.v
push.v arg.argument0
call.i buffer_read(argc=2)
pop.v.v local._number
pushglb.v global.playersManager
pushloc.v local._number
dup.v 1 8
dup.v 0
push.v stacktop.get_cursor
callv.v 1
pushi.e 0
conv.b.v
pushloc.v local._bool
dup.v 2 8
dup.v 0
push.v stacktop.show_cursor
callv.v 2
popz.v
b [361]

:[313]
pushi.e 10
conv.i.v
push.v arg.argument0
call.i buffer_read(argc=2)
pop.v.v local._tutorial
pushi.e 5
conv.i.v
push.v arg.argument0
call.i buffer_read(argc=2)
pop.v.v local._seed
pushref.i 45
pushi.e -9
pushenv [315]

:[314]
pushloc.v local._seed
pushloc.v local._tutorial
call.i @@This@@(argc=0)
push.v builtin.launch_game
callv.v 2
popz.v

:[315]
popenv [314]
b [361]

:[316]
pushi.e 1
conv.i.v
push.v arg.argument0
call.i buffer_read(argc=2)
pop.v.v local._number
pushi.e 7
conv.i.v
push.v arg.argument0
call.i buffer_read(argc=2)
pop.v.v local._x
pushi.e 7
conv.i.v
push.v arg.argument0
call.i buffer_read(argc=2)
pop.v.v local._y
pushglb.v global.playersManager
pushloc.v local._number
dup.v 1 8
dup.v 0
push.v stacktop.get_cursor
callv.v 1
pop.v.v local._cursor
pushloc.v local._cursor
pushi.e -4
cmp.i.v NEQ
bf [318]

:[317]
pushloc.v local._x
pushloc.v local._cursor
pushi.e -9
pop.v.v [stacktop]self.networkTargetX
pushloc.v local._y
pushloc.v local._cursor
pushi.e -9
pop.v.v [stacktop]self.networkTargetY

:[318]
b [361]

:[319]
pushi.e 1
conv.i.v
push.v arg.argument0
call.i buffer_read(argc=2)
pop.v.v local._nbr
pushi.e 1
conv.i.v
push.v arg.argument0
call.i buffer_read(argc=2)
pop.v.v local._type
pushi.e 10
conv.i.v
push.v arg.argument0
call.i buffer_read(argc=2)
pop.v.v local._triggerVfx
pushloc.v local._triggerVfx
pushloc.v local._type
pushloc.v local._nbr
call.i @@This@@(argc=0)
push.v builtin.apply_action
callv.v 3
popz.v
b [361]

:[320]
pushi.e 1
conv.i.v
push.v arg.argument0
call.i buffer_read(argc=2)
pop.v.v local._number
pushi.e 1
conv.i.v
push.v arg.argument0
call.i buffer_read(argc=2)
pop.v.v local._type
pushi.e 10
conv.i.v
push.v arg.argument0
call.i buffer_read(argc=2)
pop.v.v local._triggerVfx
pushi.e 12
conv.i.v
push.v arg.argument0
call.i buffer_read(argc=2)
pop.v.v local._newTime
pushglb.v global.playersManager
pushloc.v local._newTime
pushloc.v local._triggerVfx
pushloc.v local._type
pushloc.v local._number
dup.v 4 8
dup.v 0
push.v stacktop.apply_action
callv.v 4
popz.v
b [361]

:[321]
pushi.e 1
conv.i.v
push.v arg.argument0
call.i buffer_read(argc=2)
pop.v.v local._positionSocket
pushi.e 5
conv.i.v
push.v arg.argument0
call.i buffer_read(argc=2)
pop.v.v local._turnId
pushi.e -6
pushloc.v local._positionSocket
conv.v.i
push.v [array]self.clientTurnReady
pushloc.v local._turnId
cmp.v.v LT
bf [323]

:[322]
pushloc.v local._turnId
pushi.e -6
pushloc.v local._positionSocket
conv.v.i
pop.v.v [array]self.clientTurnReady

:[323]
b [361]

:[324]
pushi.e 7
conv.i.v
push.v arg.argument0
call.i buffer_read(argc=2)
pop.v.v local._x
pushi.e 7
conv.i.v
push.v arg.argument0
call.i buffer_read(argc=2)
pop.v.v local._y
pushi.e 1
conv.i.v
push.v arg.argument0
call.i buffer_read(argc=2)
pop.v.v local._nbr
pushi.e 1
conv.i.v
push.v arg.argument0
call.i buffer_read(argc=2)
pop.v.v local._box
pushloc.v local._box
pushloc.v local._nbr
pushloc.v local._y
pushloc.v local._x
call.i @@This@@(argc=0)
push.v builtin.add_stamp
callv.v 4
popz.v
b [361]

:[325]
pushref.i 40
pushi.e -9
pushenv [327]

:[326]
pushi.e 7
conv.i.v
push.v arg.argument0
call.i buffer_read(argc=2)
pop.v.v local._x
pushi.e 7
conv.i.v
push.v arg.argument0
call.i buffer_read(argc=2)
pop.v.v local._y
pushi.e 1
conv.i.v
push.v arg.argument0
call.i buffer_read(argc=2)
pop.v.v local._nbr
pushi.e 1
conv.i.v
push.v arg.argument0
call.i buffer_read(argc=2)
pop.v.v local._box
pushloc.v local._box
pushloc.v local._nbr
pushloc.v local._y
pushloc.v local._x
call.i @@This@@(argc=0)
push.v builtin.add_stamp
callv.v 4
popz.v

:[327]
popenv [326]
b [361]

:[328]
pushglb.v global.dialogueCounter
pushi.e 5
conv.i.v
push.v arg.argument0
call.i buffer_read(argc=2)
cmp.v.v EQ
bf [334]

:[329]
pushi.e 0
pop.v.i local._i

:[330]
pushloc.v local._i
push.v builtin.socketList
call.i array_length(argc=1)
cmp.v.v LT
bf [334]

:[331]
pushi.e -6
pushloc.v local._i
conv.v.i
push.v [array]self.socketList
push.v builtin.mySteamId
cmp.v.v EQ
bf [333]

:[332]
call.i @@Global@@(argc=0)
pushi.e -9
pushloc.v local._i
conv.v.i
push.v [array]self.dialogueValidated
pushloc.v local._i
call.i @@This@@(argc=0)
push.v builtin.update_counter_dialogue
callv.v 2
popz.v
b [334]

:[333]
push.v local._i
push.e 1
add.i.v
pop.v.v local._i
b [330]

:[334]
b [361]

:[335]
pushref.i 14
pushi.e -9
pushenv [337]

:[336]
pushi.e 0
conv.b.v
pushglb.v global.playersCount
call.i array_create(argc=2)
pop.v.v global.dialogueValidated
call.i instance_destroy(argc=0)
popz.v

:[337]
popenv [336]
b [361]

:[338]
pushref.i 14
pushi.e -9
pushenv [340]

:[339]
pushi.e 1
conv.i.v
push.v arg.argument0
call.i buffer_read(argc=2)
pop.v.v local._number
pushi.e 10
conv.i.v
push.v arg.argument0
call.i buffer_read(argc=2)
pop.v.v local._bool
pushloc.v local._bool
pushloc.v local._number
call.i @@This@@(argc=0)
push.v builtin.update_counter_dialogue
callv.v 2
popz.v

:[340]
popenv [339]
b [361]

:[341]
b [361]

:[342]
pushref.i 40
call.i instance_exists(argc=1)
conv.v.b
bf [344]

:[343]
pushi.e 7
conv.i.v
push.v arg.argument0
call.i buffer_read(argc=2)
pushref.i 40
pushi.e -9
pop.v.v [stacktop]self.bookOffsetY

:[344]
b [361]

:[345]
pushi.e 11
conv.i.v
push.v arg.argument0
call.i buffer_read(argc=2)
call.i gml_Script_g_apply_go_to_room(argc=1)
popz.v
b [361]

:[346]
pushi.e 1
conv.i.v
push.v arg.argument0
call.i buffer_read(argc=2)
pop.v.v local._enumStep
pushi.e 1
conv.i.v
push.v arg.argument0
call.i buffer_read(argc=2)
pop.v.v local._enumType
pushi.e 2
conv.i.v
push.v arg.argument0
call.i buffer_read(argc=2)
pop.v.v local._enumStepForce
pushi.e 2
conv.i.v
push.v arg.argument0
call.i buffer_read(argc=2)
pop.v.v local._enumTypeForce
pushloc.v local._enumTypeForce
pushloc.v local._enumStepForce
pushloc.v local._enumType
pushloc.v local._enumStep
call.i gml_Script_g_apply_go_to_step(argc=4)
popz.v
b [361]

:[347]
pushref.i 12
pushi.e -9
pushenv [349]

:[348]
call.i @@This@@(argc=0)
push.v builtin.apply_yule
callv.v 0
popz.v

:[349]
popenv [348]
b [361]

:[350]
pushref.i 47
pushi.e -9
pushenv [352]

:[351]
call.i @@This@@(argc=0)
push.v builtin.apply_babayaga
callv.v 0
popz.v

:[352]
popenv [351]
b [361]

:[353]
pushi.e 12
conv.i.v
push.v arg.argument0
call.i buffer_read(argc=2)
pop.v.v local._timePing
pushloc.v local._timePing
call.i @@This@@(argc=0)
push.v builtin.pong
callv.v 1
popz.v
b [361]

:[354]
pushi.e 12
conv.i.v
push.v arg.argument0
call.i buffer_read(argc=2)
pop.v.v local._timePing
b [361]

:[355]
pushglb.v global.playersManager
pushi.e 1
conv.i.v
push.v arg.argument0
call.i buffer_read(argc=2)
dup.v 1 8
dup.v 0
push.v stacktop.get_cursor
callv.v 1
pop.v.v local._cursor
pushloc.v local._cursor
pushi.e -4
cmp.i.v NEQ
bf [357]

:[356]
pushloc.v local._cursor
call.i instance_exists(argc=1)
conv.v.b
b [358]

:[357]
push.e 0

:[358]
bf [360]

:[359]
pushloc.v local._cursor
pushi.e 6
conv.i.v
push.v arg.argument0
call.i buffer_read(argc=2)
dup.v 1 8
dup.v 0
push.v stacktop.funfair_apply_angle
callv.v 1
popz.v

:[360]
b [361]

:[361]
popz.v
exit.i

:[362]
push.i [function]gml_Script_anon@24180@gml_Object_oNetworking_Create_0
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
pop.v.v builtin.event_handler

:[end]