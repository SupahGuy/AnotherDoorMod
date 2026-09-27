:[0]
b [36]

> gml_Script___InputInitializeSteam (locals=7, argc=0)
:[1]
call.i gml_Script___InputSystem(argc=0)
pushi.e -9
pushenv [35]

:[2]
pushi.e 0
pop.v.b builtin.__usingSteam
pushi.e 0
pop.v.b builtin.__usingSteamworks
pushi.e 0
pop.v.b builtin.__onSteamDeck
pushi.e 0
pop.v.b builtin.__onWINE
call.i @@NewGMLArray@@(argc=0)
pop.v.v builtin.__steamHandlesArray
pushi.e 0
pop.v.b builtin.__steamSwitchLabels
call.i ds_map_create(argc=0)
pop.v.v builtin.__steamTypeToInputTypeMap
call.i ds_map_create(argc=0)
pop.v.v builtin.__steamTypeToDescriptionMap
call.i ds_map_create(argc=0)
pop.v.v builtin.__steamInputTypeIgnoreMap
push.s "SteamEnv"@1538
conv.s.v
call.i environment_get_variable(argc=1)
pop.v.v local._steamEnviron
pushloc.v local._steamEnviron
push.s ""@61
cmp.s.v NEQ
bf [4]

:[3]
pushloc.v local._steamEnviron
push.s "1"@1481
cmp.s.v EQ
b [5]

:[4]
push.e 0

:[5]
bf [7]

:[6]
pushi.e 1
pop.v.b builtin.__usingSteam

:[7]
push.i 380
conv.i.v
push.i 320
conv.i.v
call.i @@try_hook@@(argc=2)
popz.v
pushi.e 1
conv.b.v
call.i steam_input_init(argc=1)
pop.v.v builtin.__usingSteamworks
call.i steam_utils_is_steam_running_on_steam_deck(argc=0)
pop.v.v builtin.__onSteamDeck
b [9]

:[8]
pop.v.v local._error
call.i @@try_unhook@@(argc=0)
popz.v
push.s "Steamworks extension unavailable"@1543
conv.s.v
call.i gml_Script___InputTrace(argc=1)
popz.v
call.i @@finish_catch@@(argc=0)
popz.v
b [10]

:[9]
call.i @@try_unhook@@(argc=0)
popz.v

:[10]
push.v builtin.__usingSteamworks
conv.v.b
bf [12]

:[11]
call.i steam_get_app_id(argc=0)
call.i string(argc=1)
push.s "480"@1545
cmp.s.v EQ
b [13]

:[12]
push.e 0

:[13]
bf [15]

:[14]
push.s "Steam application ID 480 is not supported.\nPlease change to your game's actual Steam application ID.\n \nIf you need a testing ID you should:\n1. Use ID 378090\n2. Set Debug to Enabled\n3. Install the game itself (Rebel Wings) on Steam."@1546
conv.s.v
call.i gml_Script___InputError(argc=1)
popz.v

:[15]
push.v builtin.__onSteamDeck
conv.v.b
not.b
bf [25]

:[16]
push.s "SteamDeck"@1547
conv.s.v
call.i environment_get_variable(argc=1)
pop.v.v local._deck_envar
pushloc.v local._deck_envar
push.s ""@61
cmp.s.v NEQ
bf [18]

:[17]
pushloc.v local._deck_envar
push.s "1"@1481
cmp.s.v EQ
pop.v.b builtin.__onSteamDeck
b [25]

:[18]
call.i os_get_info(argc=0)
pop.v.v local._map
pushi.e 1
conv.i.v
pushloc.v local._map
call.i ds_exists(argc=2)
conv.v.b
bf [25]

:[19]
pushbltn.v builtin.undefined
pop.v.v local._identifier
push.s "video_adapter_description"@1552
conv.s.v
pushloc.v local._map
call.i ds_map_find_value(argc=2)
pop.v.v local._identifier
pushloc.v local._identifier
pushbltn.v builtin.undefined
cmp.v.v NEQ
bf [21]

:[20]
push.s "AMD Custom GPU 0"@1553
conv.s.v
pushloc.v local._identifier
call.i gml_Script___InputStringContains(argc=2)
conv.v.b
b [22]

:[21]
push.e 0

:[22]
bf [24]

:[23]
pushi.e 1
pop.v.b builtin.__onSteamDeck

:[24]
pushloc.v local._map
call.i ds_map_destroy(argc=1)
popz.v

:[25]
push.s "SDL_GAMECONTROLLER_USE_BUTTON_LABELS"@1555
conv.s.v
call.i environment_get_variable(argc=1)
pop.v.v local._switchLabels
pushloc.v local._switchLabels
push.s ""@61
cmp.s.v NEQ
bf [27]

:[26]
pushloc.v local._switchLabels
push.s "1"@1481
cmp.s.v EQ
pop.v.b builtin.__steamSwitchLabels
b [28]

:[27]
push.v builtin.__onSteamDeck
pop.v.v builtin.__steamSwitchLabels

:[28]
push.v builtin.__usingSteamworks
conv.v.b
bf [35]

:[29]
push.s "WINEDLLPATH"@1557
conv.s.v
call.i environment_get_variable(argc=1)
push.s ""@61
cmp.s.v NEQ
pop.v.b builtin.__onWINE
b [31]

> gml_Script_anon@3425@__InputInitializeSteam@__InputInitializeSteam (locals=0, argc=3)
:[30]
push.v arg.argument1
push.v arg.argument0
push.v builtin.__steamTypeToInputTypeMap
call.i ds_map_set(argc=3)
popz.v
push.v arg.argument2
push.v arg.argument0
push.v builtin.__steamTypeToDescriptionMap
call.i ds_map_set(argc=3)
popz.v
exit.i

:[31]
push.i [function]gml_Script_anon@3425@__InputInitializeSteam@__InputInitializeSteam
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
pop.v.v local._funcAddType
push.s "Xbox 360 Controller"@1560
conv.s.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
call.i @@This@@(argc=0)
pushloc.v local._funcAddType
callv.v 3
popz.v
push.s "Xbox One Controller"@1561
conv.s.v
pushi.e 2
conv.i.v
pushi.e 3
conv.i.v
call.i @@This@@(argc=0)
pushloc.v local._funcAddType
callv.v 3
popz.v
push.s "PS3 Controller"@1562
conv.s.v
pushi.e 3
conv.i.v
pushi.e 12
conv.i.v
call.i @@This@@(argc=0)
pushloc.v local._funcAddType
callv.v 3
popz.v
push.s "PS4 Controller"@1563
conv.s.v
pushi.e 3
conv.i.v
pushi.e 5
conv.i.v
call.i @@This@@(argc=0)
pushloc.v local._funcAddType
callv.v 3
popz.v
push.s "PS5 Controller"@1564
conv.s.v
pushi.e 4
conv.i.v
pushi.e 13
conv.i.v
call.i @@This@@(argc=0)
pushloc.v local._funcAddType
callv.v 3
popz.v
push.s "Steam Controller"@1565
conv.s.v
pushi.e 2
conv.i.v
pushi.e 1
conv.i.v
call.i @@This@@(argc=0)
pushloc.v local._funcAddType
callv.v 3
popz.v
push.s "Steam Deck Controller"@1566
conv.s.v
pushi.e 2
conv.i.v
pushi.e 14
conv.i.v
call.i @@This@@(argc=0)
pushloc.v local._funcAddType
callv.v 3
popz.v
push.s "Steam Link"@1567
conv.s.v
pushi.e 2
conv.i.v
pushi.e 11
conv.i.v
call.i @@This@@(argc=0)
pushloc.v local._funcAddType
callv.v 3
popz.v
push.v builtin.__steamSwitchLabels
conv.v.b
bf [33]

:[32]
push.s "Switch Pro Controller"@1568
conv.s.v
pushi.e 2
conv.i.v
pushi.e 10
conv.i.v
call.i @@This@@(argc=0)
pushloc.v local._funcAddType
callv.v 3
popz.v
push.s "Joy-Con"@1259
conv.s.v
pushi.e 2
conv.i.v
pushi.e 9
conv.i.v
call.i @@This@@(argc=0)
pushloc.v local._funcAddType
callv.v 3
popz.v
push.s "Joy-Con Pair"@1569
conv.s.v
pushi.e 2
conv.i.v
pushi.e 8
conv.i.v
call.i @@This@@(argc=0)
pushloc.v local._funcAddType
callv.v 3
popz.v
b [34]

:[33]
push.s "Switch Pro Controller"@1568
conv.s.v
pushi.e 5
conv.i.v
pushi.e 10
conv.i.v
call.i @@This@@(argc=0)
pushloc.v local._funcAddType
callv.v 3
popz.v
push.s "Joy-Con"@1259
conv.s.v
pushi.e 7
conv.i.v
pushi.e 9
conv.i.v
call.i @@This@@(argc=0)
pushloc.v local._funcAddType
callv.v 3
popz.v
push.s "Joy-Con Pair"@1569
conv.s.v
pushi.e 5
conv.i.v
pushi.e 8
conv.i.v
call.i @@This@@(argc=0)
pushloc.v local._funcAddType
callv.v 3
popz.v

:[34]
push.s "Controller"@1570
conv.s.v
pushi.e 1
conv.i.v
push.s "unknown"@1571
conv.s.v
call.i @@This@@(argc=0)
pushloc.v local._funcAddType
callv.v 3
popz.v

:[35]
popenv [2]
exit.i

:[36]
push.i [function]gml_Script___InputInitializeSteam
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pop.v.v self.__InputInitializeSteam
popz.v

:[end]