; WARNING: Missing code locals, possibly due to unsupported bytecode version or a brand new code entry.

:[0]
pushbltn.v builtin.undefined
pop.v.v builtin.state
push.l 0
pop.v.l builtin.stateNext
pushbltn.v builtin.undefined
pop.v.v builtin.statePrev
push.s ""@61
pop.v.s builtin.errorMessageLabel
push.l 0
pop.v.l builtin.errorCallbackState
call.i @@NewGMLArray@@(argc=0)
pop.v.v builtin.everyBtn
push.l 1
conv.l.v
b [2]

> gml_Script____struct___416@gml_Object_oMenu_Create_0 (locals=0, argc=0)
:[1]
call.i @@SetStatic@@(argc=0)
pushref.i 16777295
pop.v.v self.sprite_index
push.s "menu._createGame"@10293
pop.v.s self.label
pushi.e -15
pushi.e 0
push.v [array]self.argument
pop.v.v self.alignV
pushi.e 24
pop.v.i self.heightFixed
exit.i

:[2]
push.i [function]gml_Script____struct___416@gml_Object_oMenu_Create_0
conv.i.v
call.i @@NullObject@@(argc=0)
call.i method(argc=2)
dup.v 0
pop.v.v global.___struct___416
call.i @@NewGMLObject@@(argc=2)
pushref.i 33
push.v builtin.depth
pushi.e 1
sub.i.v
pushglb.v global.uiPos
pushi.e -9
pushi.e 0
push.v [array]self.menuBtn
pushi.e -9
push.v [stacktop]self.y
pushglb.v global.uiPos
pushi.e -9
pushi.e 0
push.v [array]self.menuBtn
pushi.e -9
push.v [stacktop]self.x
call.i instance_create_depth(argc=5)
pop.v.v builtin.btnCreateGame
push.v builtin.btnCreateGame
push.v builtin.everyBtn
call.i array_push(argc=2)
popz.v
push.l 1
conv.l.v
b [4]

> gml_Script____struct___417@gml_Object_oMenu_Create_0 (locals=0, argc=0)
:[3]
call.i @@SetStatic@@(argc=0)
pushref.i 16777295
pop.v.v self.sprite_index
push.s "menu._joinGame"@10297
pop.v.s self.label
pushi.e 24
pop.v.i self.heightFixed
pushi.e -15
pushi.e 0
push.v [array]self.argument
pop.v.v self.alignV
exit.i

:[4]
push.i [function]gml_Script____struct___417@gml_Object_oMenu_Create_0
conv.i.v
call.i @@NullObject@@(argc=0)
call.i method(argc=2)
dup.v 0
pop.v.v global.___struct___417
call.i @@NewGMLObject@@(argc=2)
pushref.i 33
push.v builtin.depth
pushi.e 1
sub.i.v
pushglb.v global.uiPos
pushi.e -9
pushi.e 1
push.v [array]self.menuBtn
pushi.e -9
push.v [stacktop]self.y
pushglb.v global.uiPos
pushi.e -9
pushi.e 0
push.v [array]self.menuBtn
pushi.e -9
push.v [stacktop]self.x
call.i instance_create_depth(argc=5)
pop.v.v builtin.btnJoinGame
push.v builtin.btnJoinGame
push.v builtin.everyBtn
call.i array_push(argc=2)
popz.v
push.l 1
conv.l.v
b [6]

> gml_Script____struct___418@gml_Object_oMenu_Create_0 (locals=0, argc=0)
:[5]
call.i @@SetStatic@@(argc=0)
pushref.i 16777295
pop.v.v self.sprite_index
push.s "menu._settings"@10301
pop.v.s self.label
pushi.e 24
pop.v.i self.heightFixed
pushi.e -15
pushi.e 0
push.v [array]self.argument
pop.v.v self.alignV
exit.i

:[6]
push.i [function]gml_Script____struct___418@gml_Object_oMenu_Create_0
conv.i.v
call.i @@NullObject@@(argc=0)
call.i method(argc=2)
dup.v 0
pop.v.v global.___struct___418
call.i @@NewGMLObject@@(argc=2)
pushref.i 33
push.v builtin.depth
pushi.e 1
sub.i.v
pushglb.v global.uiPos
pushi.e -9
pushi.e 2
push.v [array]self.menuBtn
pushi.e -9
push.v [stacktop]self.y
pushglb.v global.uiPos
pushi.e -9
pushi.e 0
push.v [array]self.menuBtn
pushi.e -9
push.v [stacktop]self.x
call.i instance_create_depth(argc=5)
pop.v.v builtin.btnSettings
push.v builtin.btnSettings
push.v builtin.everyBtn
call.i array_push(argc=2)
popz.v
push.l 1
conv.l.v
b [8]

> gml_Script____struct___419@gml_Object_oMenu_Create_0 (locals=0, argc=0)
:[7]
call.i @@SetStatic@@(argc=0)
pushref.i 16777295
pop.v.v self.sprite_index
push.s "menu._credits"@10305
pop.v.s self.label
pushi.e 24
pop.v.i self.heightFixed
pushi.e -15
pushi.e 0
push.v [array]self.argument
pop.v.v self.alignV
exit.i

:[8]
push.i [function]gml_Script____struct___419@gml_Object_oMenu_Create_0
conv.i.v
call.i @@NullObject@@(argc=0)
call.i method(argc=2)
dup.v 0
pop.v.v global.___struct___419
call.i @@NewGMLObject@@(argc=2)
pushref.i 33
push.v builtin.depth
pushi.e 1
sub.i.v
pushglb.v global.uiPos
pushi.e -9
pushi.e 3
push.v [array]self.menuBtn
pushi.e -9
push.v [stacktop]self.y
pushglb.v global.uiPos
pushi.e -9
pushi.e 0
push.v [array]self.menuBtn
pushi.e -9
push.v [stacktop]self.x
call.i instance_create_depth(argc=5)
pop.v.v builtin.btnCredits
push.v builtin.btnCredits
push.v builtin.everyBtn
call.i array_push(argc=2)
popz.v
push.l 1
conv.l.v
b [10]

> gml_Script____struct___420@gml_Object_oMenu_Create_0 (locals=0, argc=0)
:[9]
call.i @@SetStatic@@(argc=0)
pushref.i 16777295
pop.v.v self.sprite_index
push.s "menu._quit"@10309
pop.v.s self.label
pushi.e 24
pop.v.i self.heightFixed
pushi.e -15
pushi.e 0
push.v [array]self.argument
pop.v.v self.alignV
exit.i

:[10]
push.i [function]gml_Script____struct___420@gml_Object_oMenu_Create_0
conv.i.v
call.i @@NullObject@@(argc=0)
call.i method(argc=2)
dup.v 0
pop.v.v global.___struct___420
call.i @@NewGMLObject@@(argc=2)
pushref.i 33
push.v builtin.depth
pushi.e 1
sub.i.v
pushglb.v global.uiPos
pushi.e -9
pushi.e 4
push.v [array]self.menuBtn
pushi.e -9
push.v [stacktop]self.y
pushglb.v global.uiPos
pushi.e -9
pushi.e 0
push.v [array]self.menuBtn
pushi.e -9
push.v [stacktop]self.x
call.i instance_create_depth(argc=5)
pop.v.v builtin.btnQuit
push.v builtin.btnQuit
push.v builtin.everyBtn
call.i array_push(argc=2)
popz.v
push.l 1
conv.l.v
b [12]

> gml_Script____struct___421@gml_Object_oMenu_Create_0 (locals=0, argc=0)
:[11]
call.i @@SetStatic@@(argc=0)
pushref.i 16777295
pop.v.v self.sprite_index
push.s "menu._join"@10313
pop.v.s self.label
pushi.e 24
pop.v.i self.heightFixed
pushi.e -15
pushi.e 0
push.v [array]self.argument
pop.v.v self.alignV
exit.i

:[12]
push.i [function]gml_Script____struct___421@gml_Object_oMenu_Create_0
conv.i.v
call.i @@NullObject@@(argc=0)
call.i method(argc=2)
dup.v 0
pop.v.v global.___struct___421
call.i @@NewGMLObject@@(argc=2)
pushref.i 33
push.v builtin.depth
pushi.e 1
sub.i.v
pushglb.v global.uiPos
pushi.e -9
pushi.e 2
push.v [array]self.menuBtn
pushi.e -9
push.v [stacktop]self.y
pushglb.v global.uiPos
pushi.e -9
pushi.e 0
push.v [array]self.menuBtn
pushi.e -9
push.v [stacktop]self.x
call.i instance_create_depth(argc=5)
pop.v.v builtin.btnJoin
push.v builtin.btnJoin
push.v builtin.everyBtn
call.i array_push(argc=2)
popz.v
push.l 1
conv.l.v
b [14]

> gml_Script____struct___422@gml_Object_oMenu_Create_0 (locals=0, argc=0)
:[13]
call.i @@SetStatic@@(argc=0)
pushref.i 16777295
pop.v.v self.sprite_index
push.s "menu._host"@10317
pop.v.s self.label
pushi.e 24
pop.v.i self.heightFixed
pushi.e -15
pushi.e 0
push.v [array]self.argument
pop.v.v self.alignV
exit.i

:[14]
push.i [function]gml_Script____struct___422@gml_Object_oMenu_Create_0
conv.i.v
call.i @@NullObject@@(argc=0)
call.i method(argc=2)
dup.v 0
pop.v.v global.___struct___422
call.i @@NewGMLObject@@(argc=2)
pushref.i 33
push.v builtin.depth
pushi.e 1
sub.i.v
pushglb.v global.uiPos
pushi.e -9
pushi.e 3
push.v [array]self.menuBtn
pushi.e -9
push.v [stacktop]self.y
pushglb.v global.uiPos
pushi.e -9
pushi.e 0
push.v [array]self.menuBtn
pushi.e -9
push.v [stacktop]self.x
call.i instance_create_depth(argc=5)
pop.v.v builtin.btnHost
push.v builtin.btnHost
push.v builtin.everyBtn
call.i array_push(argc=2)
popz.v
push.l 1
conv.l.v
b [16]

> gml_Script____struct___423@gml_Object_oMenu_Create_0 (locals=0, argc=0)
:[15]
call.i @@SetStatic@@(argc=0)
pushref.i 16777295
pop.v.v self.sprite_index
push.s "menu._return"@10050
pop.v.s self.label
pushi.e 24
pop.v.i self.heightFixed
pushi.e -15
pushi.e 0
push.v [array]self.argument
pop.v.v self.alignV
exit.i

:[16]
push.i [function]gml_Script____struct___423@gml_Object_oMenu_Create_0
conv.i.v
call.i @@NullObject@@(argc=0)
call.i method(argc=2)
dup.v 0
pop.v.v global.___struct___423
call.i @@NewGMLObject@@(argc=2)
pushref.i 33
push.v builtin.depth
pushi.e 1
sub.i.v
pushglb.v global.uiPos
pushi.e -9
pushi.e 4
push.v [array]self.menuBtn
pushi.e -9
push.v [stacktop]self.y
pushglb.v global.uiPos
pushi.e -9
pushi.e 0
push.v [array]self.menuBtn
pushi.e -9
push.v [stacktop]self.x
call.i instance_create_depth(argc=5)
pop.v.v builtin.btnReturn
push.v builtin.btnReturn
push.v builtin.everyBtn
call.i array_push(argc=2)
popz.v
push.l 1
conv.l.v
b [18]

> gml_Script____struct___424@gml_Object_oMenu_Create_0 (locals=0, argc=0)
:[17]
call.i @@SetStatic@@(argc=0)
pushref.i 16777295
pop.v.v self.sprite_index
push.s "menu._inviteFriends"@10323
pop.v.s self.label
pushi.e 24
pop.v.i self.heightFixed
pushi.e -15
pushi.e 0
push.v [array]self.argument
pop.v.v self.alignV
exit.i

:[18]
push.i [function]gml_Script____struct___424@gml_Object_oMenu_Create_0
conv.i.v
call.i @@NullObject@@(argc=0)
call.i method(argc=2)
dup.v 0
pop.v.v global.___struct___424
call.i @@NewGMLObject@@(argc=2)
pushref.i 33
push.v builtin.depth
pushi.e 1
sub.i.v
pushglb.v global.uiPos
pushi.e -9
pushi.e 3
push.v [array]self.menuBtn
pushi.e -9
push.v [stacktop]self.y
pushglb.v global.uiPos
pushi.e -9
pushi.e 0
push.v [array]self.menuBtn
pushi.e -9
push.v [stacktop]self.x
call.i instance_create_depth(argc=5)
pop.v.v builtin.btnInviteFriends
push.v builtin.btnInviteFriends
push.v builtin.everyBtn
call.i array_push(argc=2)
popz.v
push.l 1
conv.l.v
b [20]

> gml_Script____struct___425@gml_Object_oMenu_Create_0 (locals=0, argc=0)
:[19]
call.i @@SetStatic@@(argc=0)
pushref.i 16777295
pop.v.v self.sprite_index
push.s "menu._onlineGame"@10327
pop.v.s self.label
pushi.e 24
pop.v.i self.heightFixed
pushi.e -15
pushi.e 0
push.v [array]self.argument
pop.v.v self.alignV
exit.i

:[20]
push.i [function]gml_Script____struct___425@gml_Object_oMenu_Create_0
conv.i.v
call.i @@NullObject@@(argc=0)
call.i method(argc=2)
dup.v 0
pop.v.v global.___struct___425
call.i @@NewGMLObject@@(argc=2)
pushref.i 33
push.v builtin.depth
pushi.e 1
sub.i.v
pushglb.v global.uiPos
pushi.e -9
pushi.e 2
push.v [array]self.menuBtn
pushi.e -9
push.v [stacktop]self.y
pushglb.v global.uiPos
pushi.e -9
pushi.e 0
push.v [array]self.menuBtn
pushi.e -9
push.v [stacktop]self.x
call.i instance_create_depth(argc=5)
pop.v.v builtin.btnChooseOnline
push.v builtin.btnChooseOnline
push.v builtin.everyBtn
call.i array_push(argc=2)
popz.v
push.l 1
conv.l.v
b [22]

> gml_Script____struct___426@gml_Object_oMenu_Create_0 (locals=0, argc=0)
:[21]
call.i @@SetStatic@@(argc=0)
pushref.i 16777295
pop.v.v self.sprite_index
push.s "menu._localGame"@10331
pop.v.s self.label
pushi.e 24
pop.v.i self.heightFixed
pushi.e -15
pushi.e 0
push.v [array]self.argument
pop.v.v self.alignV
exit.i

:[22]
push.i [function]gml_Script____struct___426@gml_Object_oMenu_Create_0
conv.i.v
call.i @@NullObject@@(argc=0)
call.i method(argc=2)
dup.v 0
pop.v.v global.___struct___426
call.i @@NewGMLObject@@(argc=2)
pushref.i 33
push.v builtin.depth
pushi.e 1
sub.i.v
pushglb.v global.uiPos
pushi.e -9
pushi.e 3
push.v [array]self.menuBtn
pushi.e -9
push.v [stacktop]self.y
pushglb.v global.uiPos
pushi.e -9
pushi.e 0
push.v [array]self.menuBtn
pushi.e -9
push.v [stacktop]self.x
call.i instance_create_depth(argc=5)
pop.v.v builtin.btnChooseLocal
push.v builtin.btnChooseLocal
push.v builtin.everyBtn
call.i array_push(argc=2)
popz.v
push.l 1
conv.l.v
b [24]

> gml_Script____struct___427@gml_Object_oMenu_Create_0 (locals=0, argc=0)
:[23]
call.i @@SetStatic@@(argc=0)
pushref.i 16777295
pop.v.v self.sprite_index
push.s "menu._launchGame"@10335
pop.v.s self.label
pushi.e 24
pop.v.i self.heightFixed
pushi.e -15
pushi.e 0
push.v [array]self.argument
pop.v.v self.alignV
exit.i

:[24]
push.i [function]gml_Script____struct___427@gml_Object_oMenu_Create_0
conv.i.v
call.i @@NullObject@@(argc=0)
call.i method(argc=2)
dup.v 0
pop.v.v global.___struct___427
call.i @@NewGMLObject@@(argc=2)
pushref.i 33
push.v builtin.depth
pushi.e 1
sub.i.v
pushglb.v global.uiPos
pushi.e -9
pushi.e 2
push.v [array]self.menuBtn
pushi.e -9
push.v [stacktop]self.y
pushglb.v global.uiPos
pushi.e -9
pushi.e 0
push.v [array]self.menuBtn
pushi.e -9
push.v [stacktop]self.x
call.i instance_create_depth(argc=5)
pop.v.v builtin.btnLaunchGame
push.v builtin.btnLaunchGame
push.v builtin.everyBtn
call.i array_push(argc=2)
popz.v
pushglb.v global.playersCount
pushi.e 1
cmp.i.v LTE
bf [26]

:[25]
push.v builtin.btnLaunchGame
pushi.e 1
conv.b.v
dup.v 1 8
dup.v 0
push.v stacktop.set_disabled
callv.v 1
popz.v

:[26]
push.l 1
conv.l.v
b [28]

> gml_Script____struct___428@gml_Object_oMenu_Create_0 (locals=0, argc=0)
:[27]
call.i @@SetStatic@@(argc=0)
pushref.i 16777295
pop.v.v self.sprite_index
push.s "Refresh"@10338
pop.v.s self.label
pushi.e 24
pop.v.i self.heightFixed
pushi.e -15
pushi.e 0
push.v [array]self.argument
pop.v.v self.alignV
exit.i

:[28]
push.i [function]gml_Script____struct___428@gml_Object_oMenu_Create_0
conv.i.v
call.i @@NullObject@@(argc=0)
call.i method(argc=2)
dup.v 0
pop.v.v global.___struct___428
call.i @@NewGMLObject@@(argc=2)
pushref.i 33
push.v builtin.depth
pushi.e 1
sub.i.v
pushglb.v global.uiPos
pushi.e -9
pushi.e 2
push.v [array]self.menuBtn
pushi.e -9
push.v [stacktop]self.y
pushglb.v global.uiPos
pushi.e -9
pushi.e 0
push.v [array]self.menuBtn
pushi.e -9
push.v [stacktop]self.x
call.i instance_create_depth(argc=5)
pop.v.v builtin.btnRefreshLobby
push.v builtin.btnRefreshLobby
push.v builtin.everyBtn
call.i array_push(argc=2)
popz.v
b [33]

> gml_Script_anon@3933@gml_Object_oMenu_Create_0 (locals=1, argc=0)
:[29]
pushi.e 0
pop.v.i local.i

:[30]
pushloc.v local.i
push.v builtin.everyBtn
call.i array_length(argc=1)
cmp.v.v LT
bf [32]

:[31]
pushi.e -1
pushloc.v local.i
conv.v.i
push.v [array]self.everyBtn
dup.v 0 8
dup.v 0
push.v stacktop.hide
callv.v 0
popz.v
push.v local.i
push.e 1
add.i.v
pop.v.v local.i
b [30]

:[32]
push.v builtin.btnReturn
push.l 0
conv.l.v
dup.v 1 8
dup.v 0
push.v stacktop.set_align_h
callv.v 1
popz.v
exit.i

:[33]
push.i [function]gml_Script_anon@3933@gml_Object_oMenu_Create_0
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
pop.v.v builtin.hide_btn
call.i @@This@@(argc=0)
push.v builtin.hide_btn
callv.v 0
popz.v
push.l 1
conv.l.v
push.l 1
conv.l.v
b [35]

> gml_Script____struct___429@gml_Object_oMenu_Create_0 (locals=0, argc=0)
:[34]
call.i @@SetStatic@@(argc=0)
pushref.i 16777381
pop.v.v self.sprite_index
pushi.e -15
pushi.e 0
push.v [array]self.argument
pop.v.v self.alignH
pushi.e -15
pushi.e 1
push.v [array]self.argument
pop.v.v self.alignV
exit.i

:[35]
push.i [function]gml_Script____struct___429@gml_Object_oMenu_Create_0
conv.i.v
call.i @@NullObject@@(argc=0)
call.i method(argc=2)
dup.v 0
pop.v.v global.___struct___429
call.i @@NewGMLObject@@(argc=3)
pushref.i 33
push.v builtin.depth
pushi.e 1
sub.i.v
pushbltn.v builtin.room_height
pushi.e 32
sub.i.v
pushbltn.v builtin.room_width
pushi.e 32
sub.i.v
call.i instance_create_depth(argc=5)
pop.v.v builtin.btnDiscord
push.l 1
conv.l.v
push.l 1
conv.l.v
b [37]

> gml_Script____struct___430@gml_Object_oMenu_Create_0 (locals=0, argc=0)
:[36]
call.i @@SetStatic@@(argc=0)
pushref.i 16777835
pop.v.v self.sprite_index
pushi.e -15
pushi.e 0
push.v [array]self.argument
pop.v.v self.alignH
pushi.e -15
pushi.e 1
push.v [array]self.argument
pop.v.v self.alignV
exit.i

:[37]
push.i [function]gml_Script____struct___430@gml_Object_oMenu_Create_0
conv.i.v
call.i @@NullObject@@(argc=0)
call.i method(argc=2)
dup.v 0
pop.v.v global.___struct___430
call.i @@NewGMLObject@@(argc=3)
pushref.i 33
push.v builtin.depth
pushi.e 1
sub.i.v
pushbltn.v builtin.room_height
pushi.e 32
sub.i.v
pushbltn.v builtin.room_width
pushi.e 32
push.v builtin.btnDiscord
dup.v 0 8
dup.v 0
push.v stacktop.get_width
callv.v 0
add.v.i
pushi.e 8
add.i.v
sub.v.v
call.i instance_create_depth(argc=5)
pop.v.v builtin.btnWihslist
b [57]

> gml_Script_anon@4489@gml_Object_oMenu_Create_0 (locals=1, argc=2)
:[38]
pushbltn.v builtin.argument0
pushbltn.v builtin.undefined
cmp.v.v EQ
bf [40]

:[39]
pushglb.v global.isTutorialDone
pop.v.v builtin.argument0

:[40]
pushbltn.v builtin.argument1
pushbltn.v builtin.undefined
cmp.v.v EQ
bf [42]

:[41]
pushglb.v global.seed_number
pop.v.v builtin.argument1

:[42]
pushglb.v global.networkingManager
pushi.e -9
push.v [stacktop]self.isNetworkGame
conv.v.b
bf [44]

:[43]
pushglb.v global.isHost
conv.v.b
b [45]

:[44]
push.e 0

:[45]
bf [47]

:[46]
pushglb.v global.networkingManager
push.v arg.argument1
push.v arg.argument0
dup.v 2 8
dup.v 0
push.v stacktop.launch_game
callv.v 2
popz.v

:[47]
push.v arg.argument0
pop.v.v global.isTutorialDone
push.v arg.argument1
pushglb.v global.rng
call.i gml_Script_minstd_set_seed(argc=2)
popz.v
pushi.e 1
pop.v.b global.isGameLaunched
pushglb.v global.networkingManager
pushi.e -9
push.v [stacktop]self.isNetworkGame
conv.v.b
not.b
bf [49]

:[48]
pushi.e 0
conv.b.v
call.i gml_Script_InputPartySetJoin(argc=1)
popz.v
b [56]

:[49]
pushi.e 0
conv.b.v
call.i steam_lobby_set_joinable(argc=1)
popz.v
pushref.i 48
pushi.e -9
pushenv [55]

:[50]
pushi.e 0
pop.v.i local._s

:[51]
pushloc.v local._s
push.v builtin.socketList
call.i array_length(argc=1)
cmp.v.v LT
bf [55]

:[52]
push.v builtin.mySteamId
pushi.e -6
pushloc.v local._s
conv.v.i
push.v [array]self.socketList
cmp.v.v NEQ
bf [54]

:[53]
pushi.e -6
pushloc.v local._s
conv.v.i
push.v [array]self.socketList
call.i steam_user_set_played_with(argc=1)
popz.v

:[54]
push.v local._s
push.e 1
add.i.v
pop.v.v local._s
b [51]

:[55]
popenv [50]

:[56]
pushglb.v global.networkingManager
dup.v 0 8
dup.v 0
push.v stacktop.reset_turn
callv.v 0
popz.v
pushglb.v global.monsterList
dup.v 0 8
dup.v 0
push.v stacktop.generate_data
callv.v 0
popz.v
call.i gml_Script_set_display_controller_asset(argc=0)
popz.v
push.s "roomIntroduction"@10354
conv.s.v
call.i gml_Script_g_apply_go_to_room(argc=1)
popz.v
exit.i

:[57]
push.i [function]gml_Script_anon@4489@gml_Object_oMenu_Create_0
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
pop.v.v builtin.launch_game
pushi.e 0
pop.v.b builtin.clickToJoinTxtShow
push.s "menu._clickToJoin"@10357
conv.s.v
call.i gml_Script_scribble(argc=1)
dup.v 0
pushi.e -9
push.v [stacktop]self.align
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
dup.e 2 16
callv.v 2
pop.v.v builtin.clickToJoinTxt
b [80]

> gml_Script_anon@5618@gml_Object_oMenu_Create_0 (locals=1, argc=0)
:[58]
push.v builtin.state
push.l 4
cmp.l.v EQ
bt [60]

:[59]
push.v builtin.state
push.l 2
cmp.l.v EQ
b [61]

:[60]
push.e 1

:[61]
bf [78]

:[62]
pushi.e 0
pop.v.i local._TvToActivate
pushglb.v global.networkingManager
pushi.e -9
push.v [stacktop]self.isNetworkGame
conv.v.b
bf [64]

:[63]
pushglb.v global.networkingManager
dup.v 0 8
dup.v 0
push.v stacktop.is_steam_init
callv.v 0
conv.v.b
b [65]

:[64]
push.e 0

:[65]
bf [67]

:[66]
call.i steam_lobby_get_member_count(argc=0)
pop.v.v local._TvToActivate
b [68]

:[67]
pushglb.v global.playersCount
pop.v.v local._TvToActivate

:[68]
pushglb.v global.tvState
dup.v 0 8
dup.v 0
push.v stacktop.turn_off
callv.v 0
popz.v
pushloc.v local._TvToActivate
dup.v 0
pushi.e 1
cmp.i.v EQ
bt [73]

:[69]
dup.v 0
pushi.e 2
cmp.i.v EQ
bt [74]

:[70]
dup.v 0
pushi.e 3
cmp.i.v EQ
bt [75]

:[71]
dup.v 0
pushi.e 4
cmp.i.v EQ
bt [76]

:[72]
b [77]

:[73]
pushglb.v global.tvState
dup.v 0 8
dup.v 0
push.v stacktop.lobbyP1
callv.v 0
popz.v
b [77]

:[74]
pushglb.v global.tvState
dup.v 0 8
dup.v 0
push.v stacktop.lobbyP1
callv.v 0
popz.v
pushglb.v global.tvState
dup.v 0 8
dup.v 0
push.v stacktop.lobbyP2
callv.v 0
popz.v
b [77]

:[75]
pushglb.v global.tvState
dup.v 0 8
dup.v 0
push.v stacktop.lobbyP1
callv.v 0
popz.v
pushglb.v global.tvState
dup.v 0 8
dup.v 0
push.v stacktop.lobbyP2
callv.v 0
popz.v
pushglb.v global.tvState
dup.v 0 8
dup.v 0
push.v stacktop.lobbyP3
callv.v 0
popz.v
b [77]

:[76]
pushglb.v global.tvState
dup.v 0 8
dup.v 0
push.v stacktop.lobbyP1
callv.v 0
popz.v
pushglb.v global.tvState
dup.v 0 8
dup.v 0
push.v stacktop.lobbyP2
callv.v 0
popz.v
pushglb.v global.tvState
dup.v 0 8
dup.v 0
push.v stacktop.lobbyP3
callv.v 0
popz.v
pushglb.v global.tvState
dup.v 0 8
dup.v 0
push.v stacktop.lobbyP4
callv.v 0
popz.v
b [77]

:[77]
popz.v
b [79]

:[78]
push.l 4
pop.v.l builtin.stateNext

:[79]
exit.i

:[80]
push.i [function]gml_Script_anon@5618@gml_Object_oMenu_Create_0
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
pop.v.v builtin.update_screen_players
pushglb.v global.firstInit
pushi.e 1
cmp.b.v EQ
bf [82]

:[81]
push.v builtin.btnCreateGame
dup.v 0 8
dup.v 0
push.v stacktop.show
callv.v 0
popz.v
push.v builtin.btnJoinGame
dup.v 0 8
dup.v 0
push.v stacktop.show
callv.v 0
popz.v
push.v builtin.btnSettings
dup.v 0 8
dup.v 0
push.v stacktop.show
callv.v 0
popz.v
push.v builtin.btnCredits
dup.v 0 8
dup.v 0
push.v stacktop.show
callv.v 0
popz.v
push.v builtin.btnQuit
dup.v 0 8
dup.v 0
push.v stacktop.show
callv.v 0
popz.v
b [96]

:[82]
pushglb.v global.gameEndReason
dup.v 0
push.l 0
cmp.l.v EQ
bt [89]

:[83]
dup.v 0
push.l 1
cmp.l.v EQ
bt [92]

:[84]
dup.v 0
push.l 4
cmp.l.v EQ
bt [92]

:[85]
dup.v 0
push.l 2
cmp.l.v EQ
bt [93]

:[86]
dup.v 0
push.l 3
cmp.l.v EQ
bt [94]

:[87]
dup.v 0
push.l 5
cmp.l.v EQ
bt [94]

:[88]
b [95]

:[89]
pushref.i 11
pushi.e -9
pushenv [91]

:[90]
pushi.e 1
conv.b.v
call.i @@This@@(argc=0)
push.v builtin.set_cursor_visibility_forced
callv.v 1
popz.v

:[91]
popenv [90]
push.l 4
pop.v.l builtin.stateNext
b [95]

:[92]
push.l 2
pop.v.l builtin.stateNext
b [95]

:[93]
push.l 8
pop.v.l builtin.stateNext
push.s "lobby._hostLeftGame"@10362
pop.v.s builtin.errorMessageLabel
push.l 0
pop.v.l builtin.errorCallbackState
b [95]

:[94]
push.l 0
pop.v.l builtin.stateNext
b [95]

:[95]
popz.v
push.l 5
pop.v.l global.gameEndReason

:[96]
pushi.e 0
pop.v.i builtin.creditClickHidden
pushi.e 0
pop.v.i builtin.creditTokenCounter
pushi.e 0
pop.v.i builtin.offsetCredit
push.s "credits._text"@10366
conv.s.v
call.i gml_Script_scribble(argc=1)
pop.v.v builtin.creditTxt
b [130]

> gml_Script_anon@7613@gml_Object_oMenu_Create_0 (locals=2, argc=0)
:[97]
pushref.i 60
pushi.e -9
pushenv [129]

:[98]
push.v other.creditTokenCounter
pushi.e 13
cmp.i.v GT
bf [100]

:[99]
popenv <drop>
exit.i

:[100]
push.v builtin.x
pop.v.v builtin.xThrowInit
push.v builtin.y
pop.v.v builtin.yThrowInit
push.v other.creditTokenCounter
pushi.e 13
cmp.i.v EQ
bf [102]

:[101]
pushbltn.v builtin.room_width
pushi.e 80
add.i.v
pop.v.v builtin.xToLinkToCard
pushbltn.v builtin.room_height
pushi.e 2
conv.i.d
div.d.v
pop.v.v builtin.yToLinkToCard
b [128]

:[102]
pushbltn.v builtin.room_width
pushi.e 64
sub.i.v
pushbltn.v builtin.room_width
pushi.e 2
conv.i.d
div.d.v
call.i irandom_range(argc=2)
pop.v.v builtin.xToLinkToCard
pushbltn.v builtin.room_height
pushi.e 64
sub.i.v
pushi.e 64
conv.i.v
call.i irandom_range(argc=2)
pop.v.v builtin.yToLinkToCard
push.v other.creditTokenCounter
pushi.e 0
cmp.i.v NEQ
bf [128]

:[103]
push.l 21
conv.l.v
b [105]

> gml_Script____struct___442@anon@7613@gml_Object_oMenu_Create_0 (locals=0, argc=0)
:[104]
call.i @@SetStatic@@(argc=0)
pushi.e -15
pushi.e 0
push.v [array]self.argument
pop.v.v self.type
pushref.i 16777900
pop.v.v self.sprite
exit.i

:[105]
push.i [function]gml_Script____struct___442@anon@7613@gml_Object_oMenu_Create_0
conv.i.v
call.i @@NullObject@@(argc=0)
call.i method(argc=2)
dup.v 0
pop.v.v global.___struct___442
call.i @@NewGMLObject@@(argc=2)
push.l 19
conv.l.v
b [107]

> gml_Script____struct___441@anon@7613@gml_Object_oMenu_Create_0 (locals=0, argc=0)
:[106]
call.i @@SetStatic@@(argc=0)
pushi.e -15
pushi.e 0
push.v [array]self.argument
pop.v.v self.type
pushref.i 16777874
pop.v.v self.sprite
exit.i

:[107]
push.i [function]gml_Script____struct___441@anon@7613@gml_Object_oMenu_Create_0
conv.i.v
call.i @@NullObject@@(argc=0)
call.i method(argc=2)
dup.v 0
pop.v.v global.___struct___441
call.i @@NewGMLObject@@(argc=2)
push.l 15
conv.l.v
b [109]

> gml_Script____struct___440@anon@7613@gml_Object_oMenu_Create_0 (locals=0, argc=0)
:[108]
call.i @@SetStatic@@(argc=0)
pushi.e -15
pushi.e 0
push.v [array]self.argument
pop.v.v self.type
pushref.i 16777892
pop.v.v self.sprite
exit.i

:[109]
push.i [function]gml_Script____struct___440@anon@7613@gml_Object_oMenu_Create_0
conv.i.v
call.i @@NullObject@@(argc=0)
call.i method(argc=2)
dup.v 0
pop.v.v global.___struct___440
call.i @@NewGMLObject@@(argc=2)
push.l 13
conv.l.v
b [111]

> gml_Script____struct___439@anon@7613@gml_Object_oMenu_Create_0 (locals=0, argc=0)
:[110]
call.i @@SetStatic@@(argc=0)
pushi.e -15
pushi.e 0
push.v [array]self.argument
pop.v.v self.type
pushref.i 16777884
pop.v.v self.sprite
exit.i

:[111]
push.i [function]gml_Script____struct___439@anon@7613@gml_Object_oMenu_Create_0
conv.i.v
call.i @@NullObject@@(argc=0)
call.i method(argc=2)
dup.v 0
pop.v.v global.___struct___439
call.i @@NewGMLObject@@(argc=2)
push.l 12
conv.l.v
b [113]

> gml_Script____struct___438@anon@7613@gml_Object_oMenu_Create_0 (locals=0, argc=0)
:[112]
call.i @@SetStatic@@(argc=0)
pushi.e -15
pushi.e 0
push.v [array]self.argument
pop.v.v self.type
pushref.i 16777862
pop.v.v self.sprite
exit.i

:[113]
push.i [function]gml_Script____struct___438@anon@7613@gml_Object_oMenu_Create_0
conv.i.v
call.i @@NullObject@@(argc=0)
call.i method(argc=2)
dup.v 0
pop.v.v global.___struct___438
call.i @@NewGMLObject@@(argc=2)
push.l 11
conv.l.v
b [115]

> gml_Script____struct___437@anon@7613@gml_Object_oMenu_Create_0 (locals=0, argc=0)
:[114]
call.i @@SetStatic@@(argc=0)
pushi.e -15
pushi.e 0
push.v [array]self.argument
pop.v.v self.type
pushref.i 16777896
pop.v.v self.sprite
exit.i

:[115]
push.i [function]gml_Script____struct___437@anon@7613@gml_Object_oMenu_Create_0
conv.i.v
call.i @@NullObject@@(argc=0)
call.i method(argc=2)
dup.v 0
pop.v.v global.___struct___437
call.i @@NewGMLObject@@(argc=2)
push.l 20
conv.l.v
b [117]

> gml_Script____struct___436@anon@7613@gml_Object_oMenu_Create_0 (locals=0, argc=0)
:[116]
call.i @@SetStatic@@(argc=0)
pushi.e -15
pushi.e 0
push.v [array]self.argument
pop.v.v self.type
pushref.i 16777866
pop.v.v self.sprite
exit.i

:[117]
push.i [function]gml_Script____struct___436@anon@7613@gml_Object_oMenu_Create_0
conv.i.v
call.i @@NullObject@@(argc=0)
call.i method(argc=2)
dup.v 0
pop.v.v global.___struct___436
call.i @@NewGMLObject@@(argc=2)
push.l 18
conv.l.v
b [119]

> gml_Script____struct___435@anon@7613@gml_Object_oMenu_Create_0 (locals=0, argc=0)
:[118]
call.i @@SetStatic@@(argc=0)
pushi.e -15
pushi.e 0
push.v [array]self.argument
pop.v.v self.type
pushref.i 16777898
pop.v.v self.sprite
exit.i

:[119]
push.i [function]gml_Script____struct___435@anon@7613@gml_Object_oMenu_Create_0
conv.i.v
call.i @@NullObject@@(argc=0)
call.i method(argc=2)
dup.v 0
pop.v.v global.___struct___435
call.i @@NewGMLObject@@(argc=2)
push.l 9
conv.l.v
b [121]

> gml_Script____struct___434@anon@7613@gml_Object_oMenu_Create_0 (locals=0, argc=0)
:[120]
call.i @@SetStatic@@(argc=0)
pushi.e -15
pushi.e 0
push.v [array]self.argument
pop.v.v self.type
pushref.i 16777860
pop.v.v self.sprite
exit.i

:[121]
push.i [function]gml_Script____struct___434@anon@7613@gml_Object_oMenu_Create_0
conv.i.v
call.i @@NullObject@@(argc=0)
call.i method(argc=2)
dup.v 0
pop.v.v global.___struct___434
call.i @@NewGMLObject@@(argc=2)
push.l 10
conv.l.v
b [123]

> gml_Script____struct___433@anon@7613@gml_Object_oMenu_Create_0 (locals=0, argc=0)
:[122]
call.i @@SetStatic@@(argc=0)
pushi.e -15
pushi.e 0
push.v [array]self.argument
pop.v.v self.type
pushref.i 16777864
pop.v.v self.sprite
exit.i

:[123]
push.i [function]gml_Script____struct___433@anon@7613@gml_Object_oMenu_Create_0
conv.i.v
call.i @@NullObject@@(argc=0)
call.i method(argc=2)
dup.v 0
pop.v.v global.___struct___433
call.i @@NewGMLObject@@(argc=2)
push.l 4
conv.l.v
b [125]

> gml_Script____struct___432@anon@7613@gml_Object_oMenu_Create_0 (locals=0, argc=0)
:[124]
call.i @@SetStatic@@(argc=0)
pushi.e -15
pushi.e 0
push.v [array]self.argument
pop.v.v self.type
pushref.i 16777878
pop.v.v self.sprite
exit.i

:[125]
push.i [function]gml_Script____struct___432@anon@7613@gml_Object_oMenu_Create_0
conv.i.v
call.i @@NullObject@@(argc=0)
call.i method(argc=2)
dup.v 0
pop.v.v global.___struct___432
call.i @@NewGMLObject@@(argc=2)
push.l 3
conv.l.v
b [127]

> gml_Script____struct___431@anon@7613@gml_Object_oMenu_Create_0 (locals=0, argc=0)
:[126]
call.i @@SetStatic@@(argc=0)
pushi.e -15
pushi.e 0
push.v [array]self.argument
pop.v.v self.type
pushref.i 16777886
pop.v.v self.sprite
exit.i

:[127]
push.i [function]gml_Script____struct___431@anon@7613@gml_Object_oMenu_Create_0
conv.i.v
call.i @@NullObject@@(argc=0)
call.i method(argc=2)
dup.v 0
pop.v.v global.___struct___431
call.i @@NewGMLObject@@(argc=2)
call.i @@NewGMLArray@@(argc=12)
pop.v.v local._tokens
pushi.e -7
pushloc.v local._tokens
call.i array_length(argc=1)
pushi.e 1
sub.i.v
call.i irandom(argc=1)
conv.v.i
push.v [array]self._tokens
pop.v.v local._newToken
pushloc.v local._newToken
pushi.e -9
push.v [stacktop]self.sprite
pop.v.v builtin.sprite_index
pushloc.v local._newToken
pushi.e -9
push.v [stacktop]self.sprite
pop.v.v builtin.sprIdle
pushloc.v local._newToken
pushi.e -9
push.v [stacktop]self.sprite
call.i sprite_get_name(argc=1)
push.s "{0}Throw"@10399
conv.s.v
call.i @@string@@(argc=2)
call.i asset_get_index(argc=1)
pop.v.v builtin.sprThrow

:[128]
push.l 1
pop.v.l builtin.stateNext

:[129]
popenv [98]
exit.i

:[130]
push.i [function]gml_Script_anon@7613@gml_Object_oMenu_Create_0
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
pop.v.v builtin.throw_token
push.s "demo._wishlist2"@10403
conv.s.v
push.s "demo._wishlist2"@10403
conv.s.v
call.i choose(argc=2)
call.i gml_Script_scribble(argc=1)
pop.v.v builtin.demoWishlistTxt
pushglb.v global.firstInit
conv.v.b
bf [135]

:[131]
pushi.e 0
pop.v.i builtin.counterLobbyJoinParam
pushi.e 60
conv.i.v
pushi.e -6
pushi.e 0
pop.v.v [array]self.alarm
call.i @@NewGMLArray@@(argc=0)
pop.v.v global.parameters
call.i parameter_count(argc=0)
pop.v.v local._p_num
pushloc.v local._p_num
pushi.e 0
cmp.i.v GT
bf [135]

:[132]
pushi.e 0
pop.v.i local.i

:[133]
pushloc.v local.i
pushloc.v local._p_num
cmp.v.v LT
bf [135]

:[134]
pushloc.v local.i
pushi.e 1
add.i.v
call.i parameter_string(argc=1)
call.i @@Global@@(argc=0)
pushi.e -9
pushloc.v local.i
conv.v.i
pop.v.v [array]self.parameters
push.v local.i
push.e 1
add.i.v
pop.v.v local.i
b [133]

:[135]
pushi.e 0
pop.v.b global.firstInit
pushref.i 53
pushi.e -9
pushenv [137]

:[136]
call.i @@This@@(argc=0)
push.v builtin.open
callv.v 0
popz.v

:[137]
popenv [136]

:[end]