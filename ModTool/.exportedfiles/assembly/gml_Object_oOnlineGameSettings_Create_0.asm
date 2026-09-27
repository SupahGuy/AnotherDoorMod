; WARNING: Missing code locals, possibly due to unsupported bytecode version or a brand new code entry.

:[0]
pushglb.v global.depthManager
push.s "settings"@4990
conv.s.v
dup.v 1 8
dup.v 0
push.v stacktop.get_depth
callv.v 1
pop.v.v builtin.depth
pushglb.v global.lobbyNameChanged
conv.v.b
not.b
bf [2]

:[1]
call.i steam_initialised(argc=0)
conv.v.b
b [3]

:[2]
push.e 0

:[3]
bf [5]

:[4]
call.i steam_get_persona_name(argc=0)
pop.v.v local._name
push.s "[["@7691
conv.s.v
push.s "["@572
conv.s.v
pushloc.v local._name
call.i string_replace_all(argc=3)
pop.v.v local._name
call.i steam_get_persona_name(argc=0)
push.s "lobby._defaultName#{0}"@10806
conv.s.v
call.i @@string@@(argc=2)
call.i gml_Script_LocPreprocessor(argc=1)
pop.v.v global.lobbyNameDefault

:[5]
call.i @@NewGMLArray@@(argc=0)
pop.v.v builtin.buttonList
pushglb.v global.lobbyNameDefault
b [7]

> gml_Script____struct___456@gml_Object_oOnlineGameSettings_Create_0 (locals=0, argc=0)
:[6]
call.i @@SetStatic@@(argc=0)
pushref.i 16777295
pop.v.v self.sprite_index
pushi.e 50
pop.v.i self.charLimit
pushi.e -15
pushi.e 0
push.v [array]self.argument
pop.v.v self.value
pushi.e 160
pop.v.i self.widthFixed
pushi.e 24
pop.v.i self.heightFixed
exit.i

:[7]
push.i [function]gml_Script____struct___456@gml_Object_oOnlineGameSettings_Create_0
conv.i.v
call.i @@NullObject@@(argc=0)
call.i method(argc=2)
dup.v 0
pop.v.v global.___struct___456
call.i @@NewGMLObject@@(argc=2)
pushref.i 37
push.v builtin.depth
pushi.e 1
sub.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create_depth(argc=5)
pop.v.v builtin.lobbyNameInput
push.v builtin.lobbyNameInput
pushi.e 10
conv.i.v
pushi.e 12
conv.i.v
pushi.e 10
conv.i.v
pushi.e 12
conv.i.v
dup.v 4 8
dup.v 0
push.v stacktop.set_padding
callv.v 4
popz.v
push.v builtin.lobbyNameInput
push.v builtin.buttonList
call.i array_push(argc=2)
popz.v
push.l 1
conv.l.v
b [9]

> gml_Script____struct___457@gml_Object_oOnlineGameSettings_Create_0 (locals=0, argc=0)
:[8]
call.i @@SetStatic@@(argc=0)
pushref.i 16777306
pop.v.v self.sprite_index
push.s "menu._onlineGamePrivate"@10811
pop.v.s self.label
pushi.e -15
pushi.e 0
push.v [array]self.argument
pop.v.v self.value
pushi.e 0
pop.v.i self.labelAlignH
exit.i

:[9]
push.i [function]gml_Script____struct___457@gml_Object_oOnlineGameSettings_Create_0
conv.i.v
call.i @@NullObject@@(argc=0)
call.i method(argc=2)
dup.v 0
pop.v.v global.___struct___457
call.i @@NewGMLObject@@(argc=2)
pushref.i 38
push.v builtin.depth
pushi.e 1
sub.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create_depth(argc=5)
pop.v.v builtin.radioFriend
push.v builtin.radioFriend
push.v builtin.buttonList
call.i array_push(argc=2)
popz.v
push.l 2
conv.l.v
b [11]

> gml_Script____struct___458@gml_Object_oOnlineGameSettings_Create_0 (locals=0, argc=0)
:[10]
call.i @@SetStatic@@(argc=0)
pushref.i 16777310
pop.v.v self.sprite_index
push.s "menu._onlineGamePublic"@10815
pop.v.s self.label
pushi.e -15
pushi.e 0
push.v [array]self.argument
pop.v.v self.value
pushi.e 0
pop.v.i self.labelAlignH
exit.i

:[11]
push.i [function]gml_Script____struct___458@gml_Object_oOnlineGameSettings_Create_0
conv.i.v
call.i @@NullObject@@(argc=0)
call.i method(argc=2)
dup.v 0
pop.v.v global.___struct___458
call.i @@NewGMLObject@@(argc=2)
pushref.i 38
push.v builtin.depth
pushi.e 1
sub.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create_depth(argc=5)
pop.v.v builtin.radioPublic
push.v builtin.radioPublic
push.v builtin.buttonList
call.i array_push(argc=2)
popz.v
pushglb.v global.lobbyTypeDefault
push.l 1
cmp.l.v EQ
bf [13]

:[12]
push.v builtin.radioFriend
dup.v 0 8
dup.v 0
push.v stacktop.set_radio_checked
callv.v 0
popz.v
b [15]

:[13]
pushglb.v global.lobbyTypeDefault
push.l 2
cmp.l.v EQ
bf [15]

:[14]
push.v builtin.radioPublic
dup.v 0 8
dup.v 0
push.v stacktop.set_radio_checked
callv.v 0
popz.v

:[15]
push.v builtin.radioFriend
push.v builtin.radioPublic
call.i @@NewGMLArray@@(argc=1)
dup.v 1 8
dup.v 0
push.v stacktop.set_radio_linked
callv.v 1
popz.v
push.v builtin.radioPublic
push.v builtin.radioFriend
call.i @@NewGMLArray@@(argc=1)
dup.v 1 8
dup.v 0
push.v stacktop.set_radio_linked
callv.v 1
popz.v
b [17]

> gml_Script____struct___459@gml_Object_oOnlineGameSettings_Create_0 (locals=0, argc=0)
:[16]
call.i @@SetStatic@@(argc=0)
pushref.i 16777306
pop.v.v self.sprite_index
push.s "2"@1482
pop.v.s self.label
pushi.e 2
pop.v.i self.value
pushi.e 0
pop.v.i self.labelAlignH
exit.i

:[17]
push.i [function]gml_Script____struct___459@gml_Object_oOnlineGameSettings_Create_0
conv.i.v
call.i @@NullObject@@(argc=0)
call.i method(argc=2)
dup.v 0
pop.v.v global.___struct___459
call.i @@NewGMLObject@@(argc=1)
pushref.i 38
push.v builtin.depth
pushi.e 1
sub.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create_depth(argc=5)
pop.v.v builtin.radio2Players
push.v builtin.radio2Players
push.v builtin.buttonList
call.i array_push(argc=2)
popz.v
b [19]

> gml_Script____struct___460@gml_Object_oOnlineGameSettings_Create_0 (locals=0, argc=0)
:[18]
call.i @@SetStatic@@(argc=0)
pushref.i 16777300
pop.v.v self.sprite_index
push.s "3"@1483
pop.v.s self.label
pushi.e 3
pop.v.i self.value
pushi.e 0
pop.v.i self.labelAlignH
exit.i

:[19]
push.i [function]gml_Script____struct___460@gml_Object_oOnlineGameSettings_Create_0
conv.i.v
call.i @@NullObject@@(argc=0)
call.i method(argc=2)
dup.v 0
pop.v.v global.___struct___460
call.i @@NewGMLObject@@(argc=1)
pushref.i 38
push.v builtin.depth
pushi.e 1
sub.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create_depth(argc=5)
pop.v.v builtin.radio3Players
push.v builtin.radio3Players
push.v builtin.buttonList
call.i array_push(argc=2)
popz.v
b [21]

> gml_Script____struct___461@gml_Object_oOnlineGameSettings_Create_0 (locals=0, argc=0)
:[20]
call.i @@SetStatic@@(argc=0)
pushref.i 16777310
pop.v.v self.sprite_index
push.s "4"@1484
pop.v.s self.label
pushi.e 4
pop.v.i self.value
pushi.e 0
pop.v.i self.labelAlignH
exit.i

:[21]
push.i [function]gml_Script____struct___461@gml_Object_oOnlineGameSettings_Create_0
conv.i.v
call.i @@NullObject@@(argc=0)
call.i method(argc=2)
dup.v 0
pop.v.v global.___struct___461
call.i @@NewGMLObject@@(argc=1)
pushref.i 38
push.v builtin.depth
pushi.e 1
sub.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create_depth(argc=5)
pop.v.v builtin.radio4Players
push.v builtin.radio4Players
push.v builtin.buttonList
call.i array_push(argc=2)
popz.v
pushglb.v global.lobbyNbrPlayersDefault
pushi.e 2
cmp.i.v EQ
bf [23]

:[22]
push.v builtin.radio2Players
dup.v 0 8
dup.v 0
push.v stacktop.set_radio_checked
callv.v 0
popz.v
b [27]

:[23]
pushglb.v global.lobbyNbrPlayersDefault
pushi.e 3
cmp.i.v EQ
bf [25]

:[24]
push.v builtin.radio3Players
dup.v 0 8
dup.v 0
push.v stacktop.set_radio_checked
callv.v 0
popz.v
b [27]

:[25]
pushglb.v global.lobbyNbrPlayersDefault
pushi.e 4
cmp.i.v EQ
bf [27]

:[26]
push.v builtin.radio4Players
dup.v 0 8
dup.v 0
push.v stacktop.set_radio_checked
callv.v 0
popz.v

:[27]
push.v builtin.radio2Players
push.v builtin.radio4Players
push.v builtin.radio3Players
call.i @@NewGMLArray@@(argc=2)
dup.v 1 8
dup.v 0
push.v stacktop.set_radio_linked
callv.v 1
popz.v
push.v builtin.radio3Players
push.v builtin.radio4Players
push.v builtin.radio2Players
call.i @@NewGMLArray@@(argc=2)
dup.v 1 8
dup.v 0
push.v stacktop.set_radio_linked
callv.v 1
popz.v
push.v builtin.radio4Players
push.v builtin.radio3Players
push.v builtin.radio2Players
call.i @@NewGMLArray@@(argc=2)
dup.v 1 8
dup.v 0
push.v stacktop.set_radio_linked
callv.v 1
popz.v
push.l 0
conv.l.v
push.l 0
conv.l.v
b [29]

> gml_Script____struct___462@gml_Object_oOnlineGameSettings_Create_0 (locals=0, argc=0)
:[28]
call.i @@SetStatic@@(argc=0)
pushref.i 16777295
pop.v.v self.sprite_index
push.s "menu._host"@10317
pop.v.s self.label
pushi.e -15
pushi.e 0
push.v [array]self.argument
pop.v.v self.alignH
pushi.e -15
pushi.e 1
push.v [array]self.argument
pop.v.v self.alignV
pushi.e 24
pop.v.i self.heightFixed
exit.i

:[29]
push.i [function]gml_Script____struct___462@gml_Object_oOnlineGameSettings_Create_0
conv.i.v
call.i @@NullObject@@(argc=0)
call.i method(argc=2)
dup.v 0
pop.v.v global.___struct___462
call.i @@NewGMLObject@@(argc=3)
pushref.i 33
push.v builtin.depth
pushi.e 1
sub.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create_depth(argc=5)
pop.v.v builtin.btnConfirmLobby
push.v builtin.btnConfirmLobby
push.v builtin.buttonList
call.i array_push(argc=2)
popz.v
push.l 0
conv.l.v
push.l 0
conv.l.v
b [31]

> gml_Script____struct___463@gml_Object_oOnlineGameSettings_Create_0 (locals=0, argc=0)
:[30]
call.i @@SetStatic@@(argc=0)
pushref.i 16777295
pop.v.v self.sprite_index
push.s "global._cancel"@9421
pop.v.s self.label
pushi.e -15
pushi.e 0
push.v [array]self.argument
pop.v.v self.alignH
pushi.e -15
pushi.e 1
push.v [array]self.argument
pop.v.v self.alignV
pushi.e 24
pop.v.i self.heightFixed
exit.i

:[31]
push.i [function]gml_Script____struct___463@gml_Object_oOnlineGameSettings_Create_0
conv.i.v
call.i @@NullObject@@(argc=0)
call.i method(argc=2)
dup.v 0
pop.v.v global.___struct___463
call.i @@NewGMLObject@@(argc=3)
pushref.i 33
push.v builtin.depth
pushi.e 1
sub.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create_depth(argc=5)
pop.v.v builtin.btnCloseMenu
push.v builtin.btnCloseMenu
push.v builtin.buttonList
call.i array_push(argc=2)
popz.v
push.s "menu._gameSettingsTitle"@10834
conv.s.v
call.i gml_Script_scribble(argc=1)
dup.v 0
pushi.e -9
push.v [stacktop]self.scale
pushglb.v global.fontScaleTitle
dup.e 2 8
callv.v 1
dup.v 0
pushi.e -9
push.v [stacktop]self.starting_format
pushglb.v global.color
pushi.e -9
push.v [stacktop]self.grey1
push.s "ftAlkhemikalSh"@5419
conv.s.v
dup.e 2 16
callv.v 2
pop.v.v local._modalTitle
push.s "lobby._name"@10056
conv.s.v
call.i gml_Script_scribble(argc=1)
pop.v.v local._lobbyName
push.s "lobby._type"@10836
conv.s.v
call.i gml_Script_scribble(argc=1)
pop.v.v local._lobbyType
push.s "menu._numberOfPlayers"@10838
conv.s.v
call.i gml_Script_scribble(argc=1)
pop.v.v local._numberOfPlayersTitle
pushloc.v local._lobbyType
dup.v 0 8
dup.v 0
push.v stacktop.get_height
callv.v 0
pushglb.v global.zoom
div.v.v
call.i round(argc=1)
pop.v.v local._titleHeight
pushloc.v local._lobbyType
dup.v 0 8
dup.v 0
push.v stacktop.get_height
callv.v 0
pushglb.v global.zoom
div.v.v
call.i round(argc=1)
pop.v.v local._textHeight
push.v builtin.btnCloseMenu
dup.v 0 8
dup.v 0
push.v stacktop.get_width
callv.v 0
push.v builtin.btnCloseMenu
dup.v 0 8
dup.v 0
push.v stacktop.get_height
callv.v 0
push.v builtin.btnCloseMenu
push.l 3
conv.l.v
push.s "closeMenuButton"@10842
conv.s.v
push.i [function]gml_Script_cFlexStruct
conv.i.v
call.i @@NewGMLObject@@(argc=6)
push.v builtin.btnConfirmLobby
dup.v 0 8
dup.v 0
push.v stacktop.get_width
callv.v 0
push.v builtin.btnConfirmLobby
dup.v 0 8
dup.v 0
push.v stacktop.get_height
callv.v 0
push.v builtin.btnConfirmLobby
push.l 3
conv.l.v
push.s "confirmLobbyButton"@10843
conv.s.v
push.i [function]gml_Script_cFlexStruct
conv.i.v
call.i @@NewGMLObject@@(argc=6)
push.v builtin.radio4Players
dup.v 0 8
dup.v 0
push.v stacktop.get_width
callv.v 0
push.v builtin.radio4Players
dup.v 0 8
dup.v 0
push.v stacktop.get_height
callv.v 0
push.v builtin.radio4Players
push.l 3
conv.l.v
push.s "radio4Players"@10827
conv.s.v
push.i [function]gml_Script_cFlexStruct
conv.i.v
call.i @@NewGMLObject@@(argc=6)
push.v builtin.radio3Players
dup.v 0 8
dup.v 0
push.v stacktop.get_width
callv.v 0
push.v builtin.radio3Players
dup.v 0 8
dup.v 0
push.v stacktop.get_height
callv.v 0
push.v builtin.radio3Players
push.l 3
conv.l.v
push.s "radio3Players"@10824
conv.s.v
push.i [function]gml_Script_cFlexStruct
conv.i.v
call.i @@NewGMLObject@@(argc=6)
push.v builtin.radio2Players
dup.v 0 8
dup.v 0
push.v stacktop.get_width
callv.v 0
push.v builtin.radio2Players
dup.v 0 8
dup.v 0
push.v stacktop.get_height
callv.v 0
push.v builtin.radio2Players
push.l 3
conv.l.v
push.s "radio2Players"@10821
conv.s.v
push.i [function]gml_Script_cFlexStruct
conv.i.v
call.i @@NewGMLObject@@(argc=6)
pushloc.v local._textHeight
pushloc.v local._numberOfPlayersTitle
push.l 1
conv.l.v
push.s "numberOfPlayersTitle"@10844
conv.s.v
push.i [function]gml_Script_cFlexStruct
conv.i.v
call.i @@NewGMLObject@@(argc=5)
push.v builtin.radioPublic
dup.v 0 8
dup.v 0
push.v stacktop.get_width
callv.v 0
push.v builtin.radioPublic
dup.v 0 8
dup.v 0
push.v stacktop.get_height
callv.v 0
push.v builtin.radioPublic
push.l 3
conv.l.v
push.s "radioPublic"@10818
conv.s.v
push.i [function]gml_Script_cFlexStruct
conv.i.v
call.i @@NewGMLObject@@(argc=6)
push.v builtin.radioFriend
dup.v 0 8
dup.v 0
push.v stacktop.get_width
callv.v 0
push.v builtin.radioFriend
dup.v 0 8
dup.v 0
push.v stacktop.get_height
callv.v 0
push.v builtin.radioFriend
push.l 3
conv.l.v
push.s "radioFriend"@10814
conv.s.v
push.i [function]gml_Script_cFlexStruct
conv.i.v
call.i @@NewGMLObject@@(argc=6)
pushloc.v local._textHeight
pushloc.v local._lobbyType
push.l 1
conv.l.v
push.s "lobbyType"@10845
conv.s.v
push.i [function]gml_Script_cFlexStruct
conv.i.v
call.i @@NewGMLObject@@(argc=5)
push.v builtin.lobbyNameInput
push.l 3
conv.l.v
push.s "lobbyNameInput"@10810
conv.s.v
push.i [function]gml_Script_cFlexStruct
conv.i.v
call.i @@NewGMLObject@@(argc=4)
pushloc.v local._textHeight
pushloc.v local._lobbyName
push.l 1
conv.l.v
push.s "lobbyName"@10846
conv.s.v
push.i [function]gml_Script_cFlexStruct
conv.i.v
call.i @@NewGMLObject@@(argc=5)
pushloc.v local._titleHeight
pushloc.v local._modalTitle
push.l 1
conv.l.v
push.s "modalTitle"@9431
conv.s.v
push.i [function]gml_Script_cFlexStruct
conv.i.v
call.i @@NewGMLObject@@(argc=5)
b [33]

> gml_Script____struct___464@gml_Object_oOnlineGameSettings_Create_0 (locals=0, argc=0)
:[32]
call.i @@SetStatic@@(argc=0)
pushi.e -15
pushi.e 0
push.v [array]self.argument
pop.v.v self.modalTitle
pushi.e -15
pushi.e 1
push.v [array]self.argument
pop.v.v self.lobbyName
pushi.e -15
pushi.e 2
push.v [array]self.argument
pop.v.v self.lobbyNameInput
pushi.e -15
pushi.e 3
push.v [array]self.argument
pop.v.v self.lobbyType
pushi.e -15
pushi.e 4
push.v [array]self.argument
pop.v.v self.radioFriend
pushi.e -15
pushi.e 5
push.v [array]self.argument
pop.v.v self.radioPublic
pushi.e -15
pushi.e 6
push.v [array]self.argument
pop.v.v self.numberOfPlayersTitle
pushi.e -15
pushi.e 7
push.v [array]self.argument
pop.v.v self.radio2Players
pushi.e -15
pushi.e 8
push.v [array]self.argument
pop.v.v self.radio3Players
pushi.e -15
pushi.e 9
push.v [array]self.argument
pop.v.v self.radio4Players
pushi.e -15
pushi.e 10
push.v [array]self.argument
pop.v.v self.confirmLobbyButton
pushi.e -15
pushi.e 11
push.v [array]self.argument
pop.v.v self.closeMenuButton
exit.i

:[33]
push.i [function]gml_Script____struct___464@gml_Object_oOnlineGameSettings_Create_0
conv.i.v
call.i @@NullObject@@(argc=0)
call.i method(argc=2)
dup.v 0
pop.v.v global.___struct___464
call.i @@NewGMLObject@@(argc=13)
pop.v.v builtin.arrayElements
push.v builtin.arrayElements
pushi.e -9
push.v [stacktop]self.closeMenuButton
push.v builtin.arrayElements
pushi.e -9
push.v [stacktop]self.confirmLobbyButton
call.i @@NewGMLArray@@(argc=2)
b [37]

> gml_Script____struct___483@gml_Object_oOnlineGameSettings_Create_0 (locals=0, argc=0)
:[34]
call.i @@SetStatic@@(argc=0)
push.s "row"@8881
pop.v.s self.flexDirection
b [36]

> gml_Script____struct___484@___struct___483@gml_Object_oOnlineGameSettings_Create_0 (locals=0, argc=0)
:[35]
call.i @@SetStatic@@(argc=0)
push.s "node"@8885
pop.v.s self.type
exit.i

:[36]
push.i [function]gml_Script____struct___484@___struct___483@gml_Object_oOnlineGameSettings_Create_0
conv.i.v
call.i @@NullObject@@(argc=0)
call.i method(argc=2)
dup.v 0
pop.v.v global.___struct___484
call.i @@NewGMLObject@@(argc=1)
pop.v.v self.data
pushi.e 24
pop.v.i self.marginTop
pushi.e 8
pop.v.i self.gap
pushi.e -15
pushi.e 0
push.v [array]self.argument
pop.v.v self.nodes
exit.i

:[37]
push.i [function]gml_Script____struct___483@gml_Object_oOnlineGameSettings_Create_0
conv.i.v
call.i @@NullObject@@(argc=0)
call.i method(argc=2)
dup.v 0
pop.v.v global.___struct___483
call.i @@NewGMLObject@@(argc=2)
push.v builtin.arrayElements
pushi.e -9
push.v [stacktop]self.radio4Players
push.v builtin.arrayElements
pushi.e -9
push.v [stacktop]self.radio3Players
push.v builtin.arrayElements
pushi.e -9
push.v [stacktop]self.radio2Players
call.i @@NewGMLArray@@(argc=3)
b [41]

> gml_Script____struct___481@gml_Object_oOnlineGameSettings_Create_0 (locals=0, argc=0)
:[38]
call.i @@SetStatic@@(argc=0)
push.s "row"@8881
pop.v.s self.flexDirection
b [40]

> gml_Script____struct___482@___struct___481@gml_Object_oOnlineGameSettings_Create_0 (locals=0, argc=0)
:[39]
call.i @@SetStatic@@(argc=0)
push.s "node"@8885
pop.v.s self.type
exit.i

:[40]
push.i [function]gml_Script____struct___482@___struct___481@gml_Object_oOnlineGameSettings_Create_0
conv.i.v
call.i @@NullObject@@(argc=0)
call.i method(argc=2)
dup.v 0
pop.v.v global.___struct___482
call.i @@NewGMLObject@@(argc=1)
pop.v.v self.data
pushi.e 0
pop.v.i self.gap
pushi.e -15
pushi.e 0
push.v [array]self.argument
pop.v.v self.nodes
exit.i

:[41]
push.i [function]gml_Script____struct___481@gml_Object_oOnlineGameSettings_Create_0
conv.i.v
call.i @@NullObject@@(argc=0)
call.i method(argc=2)
dup.v 0
pop.v.v global.___struct___481
call.i @@NewGMLObject@@(argc=2)
push.v builtin.arrayElements
pushi.e -9
push.v [stacktop]self.numberOfPlayersTitle
call.i @@NewGMLArray@@(argc=1)
b [45]

> gml_Script____struct___479@gml_Object_oOnlineGameSettings_Create_0 (locals=0, argc=0)
:[42]
call.i @@SetStatic@@(argc=0)
push.s "row"@8881
pop.v.s self.flexDirection
pushi.e 16
pop.v.i self.marginTop
pushi.e 4
pop.v.i self.marginBottom
b [44]

> gml_Script____struct___480@___struct___479@gml_Object_oOnlineGameSettings_Create_0 (locals=0, argc=0)
:[43]
call.i @@SetStatic@@(argc=0)
push.s "node"@8885
pop.v.s self.type
exit.i

:[44]
push.i [function]gml_Script____struct___480@___struct___479@gml_Object_oOnlineGameSettings_Create_0
conv.i.v
call.i @@NullObject@@(argc=0)
call.i method(argc=2)
dup.v 0
pop.v.v global.___struct___480
call.i @@NewGMLObject@@(argc=1)
pop.v.v self.data
pushi.e -15
pushi.e 0
push.v [array]self.argument
pop.v.v self.nodes
exit.i

:[45]
push.i [function]gml_Script____struct___479@gml_Object_oOnlineGameSettings_Create_0
conv.i.v
call.i @@NullObject@@(argc=0)
call.i method(argc=2)
dup.v 0
pop.v.v global.___struct___479
call.i @@NewGMLObject@@(argc=2)
push.v builtin.arrayElements
pushi.e -9
push.v [stacktop]self.radioPublic
push.v builtin.arrayElements
pushi.e -9
push.v [stacktop]self.radioFriend
call.i @@NewGMLArray@@(argc=2)
b [49]

> gml_Script____struct___477@gml_Object_oOnlineGameSettings_Create_0 (locals=0, argc=0)
:[46]
call.i @@SetStatic@@(argc=0)
push.s "row"@8881
pop.v.s self.flexDirection
b [48]

> gml_Script____struct___478@___struct___477@gml_Object_oOnlineGameSettings_Create_0 (locals=0, argc=0)
:[47]
call.i @@SetStatic@@(argc=0)
push.s "node"@8885
pop.v.s self.type
exit.i

:[48]
push.i [function]gml_Script____struct___478@___struct___477@gml_Object_oOnlineGameSettings_Create_0
conv.i.v
call.i @@NullObject@@(argc=0)
call.i method(argc=2)
dup.v 0
pop.v.v global.___struct___478
call.i @@NewGMLObject@@(argc=1)
pop.v.v self.data
pushi.e 0
pop.v.i self.gap
pushi.e -15
pushi.e 0
push.v [array]self.argument
pop.v.v self.nodes
exit.i

:[49]
push.i [function]gml_Script____struct___477@gml_Object_oOnlineGameSettings_Create_0
conv.i.v
call.i @@NullObject@@(argc=0)
call.i method(argc=2)
dup.v 0
pop.v.v global.___struct___477
call.i @@NewGMLObject@@(argc=2)
push.v builtin.arrayElements
pushi.e -9
push.v [stacktop]self.lobbyType
call.i @@NewGMLArray@@(argc=1)
b [53]

> gml_Script____struct___475@gml_Object_oOnlineGameSettings_Create_0 (locals=0, argc=0)
:[50]
call.i @@SetStatic@@(argc=0)
push.s "row"@8881
pop.v.s self.flexDirection
pushi.e 4
pop.v.i self.marginBottom
b [52]

> gml_Script____struct___476@___struct___475@gml_Object_oOnlineGameSettings_Create_0 (locals=0, argc=0)
:[51]
call.i @@SetStatic@@(argc=0)
push.s "node"@8885
pop.v.s self.type
exit.i

:[52]
push.i [function]gml_Script____struct___476@___struct___475@gml_Object_oOnlineGameSettings_Create_0
conv.i.v
call.i @@NullObject@@(argc=0)
call.i method(argc=2)
dup.v 0
pop.v.v global.___struct___476
call.i @@NewGMLObject@@(argc=1)
pop.v.v self.data
pushi.e -15
pushi.e 0
push.v [array]self.argument
pop.v.v self.nodes
exit.i

:[53]
push.i [function]gml_Script____struct___475@gml_Object_oOnlineGameSettings_Create_0
conv.i.v
call.i @@NullObject@@(argc=0)
call.i method(argc=2)
dup.v 0
pop.v.v global.___struct___475
call.i @@NewGMLObject@@(argc=2)
push.v builtin.arrayElements
pushi.e -9
push.v [stacktop]self.lobbyNameInput
call.i @@NewGMLArray@@(argc=1)
b [57]

> gml_Script____struct___473@gml_Object_oOnlineGameSettings_Create_0 (locals=0, argc=0)
:[54]
call.i @@SetStatic@@(argc=0)
push.s "row"@8881
pop.v.s self.flexDirection
pushi.e 16
pop.v.i self.marginBottom
b [56]

> gml_Script____struct___474@___struct___473@gml_Object_oOnlineGameSettings_Create_0 (locals=0, argc=0)
:[55]
call.i @@SetStatic@@(argc=0)
push.s "node"@8885
pop.v.s self.type
exit.i

:[56]
push.i [function]gml_Script____struct___474@___struct___473@gml_Object_oOnlineGameSettings_Create_0
conv.i.v
call.i @@NullObject@@(argc=0)
call.i method(argc=2)
dup.v 0
pop.v.v global.___struct___474
call.i @@NewGMLObject@@(argc=1)
pop.v.v self.data
pushi.e -15
pushi.e 0
push.v [array]self.argument
pop.v.v self.nodes
exit.i

:[57]
push.i [function]gml_Script____struct___473@gml_Object_oOnlineGameSettings_Create_0
conv.i.v
call.i @@NullObject@@(argc=0)
call.i method(argc=2)
dup.v 0
pop.v.v global.___struct___473
call.i @@NewGMLObject@@(argc=2)
push.v builtin.arrayElements
pushi.e -9
push.v [stacktop]self.lobbyName
call.i @@NewGMLArray@@(argc=1)
b [61]

> gml_Script____struct___471@gml_Object_oOnlineGameSettings_Create_0 (locals=0, argc=0)
:[58]
call.i @@SetStatic@@(argc=0)
push.s "row"@8881
pop.v.s self.flexDirection
pushi.e 4
pop.v.i self.marginBottom
b [60]

> gml_Script____struct___472@___struct___471@gml_Object_oOnlineGameSettings_Create_0 (locals=0, argc=0)
:[59]
call.i @@SetStatic@@(argc=0)
push.s "node"@8885
pop.v.s self.type
exit.i

:[60]
push.i [function]gml_Script____struct___472@___struct___471@gml_Object_oOnlineGameSettings_Create_0
conv.i.v
call.i @@NullObject@@(argc=0)
call.i method(argc=2)
dup.v 0
pop.v.v global.___struct___472
call.i @@NewGMLObject@@(argc=1)
pop.v.v self.data
pushi.e -15
pushi.e 0
push.v [array]self.argument
pop.v.v self.nodes
exit.i

:[61]
push.i [function]gml_Script____struct___471@gml_Object_oOnlineGameSettings_Create_0
conv.i.v
call.i @@NullObject@@(argc=0)
call.i method(argc=2)
dup.v 0
pop.v.v global.___struct___471
call.i @@NewGMLObject@@(argc=2)
push.v builtin.arrayElements
pushi.e -9
push.v [stacktop]self.modalTitle
call.i @@NewGMLArray@@(argc=1)
b [65]

> gml_Script____struct___469@gml_Object_oOnlineGameSettings_Create_0 (locals=0, argc=0)
:[62]
call.i @@SetStatic@@(argc=0)
push.s "center"@8883
pop.v.s self.justifyContent
push.s "row"@8881
pop.v.s self.flexDirection
pushi.e 24
pop.v.i self.marginBottom
b [64]

> gml_Script____struct___470@___struct___469@gml_Object_oOnlineGameSettings_Create_0 (locals=0, argc=0)
:[63]
call.i @@SetStatic@@(argc=0)
push.s "node"@8885
pop.v.s self.type
exit.i

:[64]
push.i [function]gml_Script____struct___470@___struct___469@gml_Object_oOnlineGameSettings_Create_0
conv.i.v
call.i @@NullObject@@(argc=0)
call.i method(argc=2)
dup.v 0
pop.v.v global.___struct___470
call.i @@NewGMLObject@@(argc=1)
pop.v.v self.data
pushi.e -15
pushi.e 0
push.v [array]self.argument
pop.v.v self.nodes
exit.i

:[65]
push.i [function]gml_Script____struct___469@gml_Object_oOnlineGameSettings_Create_0
conv.i.v
call.i @@NullObject@@(argc=0)
call.i method(argc=2)
dup.v 0
pop.v.v global.___struct___469
call.i @@NewGMLObject@@(argc=2)
call.i @@NewGMLArray@@(argc=8)
push.l 7
conv.l.v
b [69]

> gml_Script____struct___467@gml_Object_oOnlineGameSettings_Create_0 (locals=0, argc=0)
:[66]
call.i @@SetStatic@@(argc=0)
push.s "mainBlock"@8916
pop.v.s self.name
push.s "column"@8917
pop.v.s self.flexDirection
pushi.e -15
pushi.e 0
push.v [array]self.argument
b [68]

> gml_Script____struct___468@___struct___467@gml_Object_oOnlineGameSettings_Create_0 (locals=0, argc=0)
:[67]
call.i @@SetStatic@@(argc=0)
pushi.e -15
pushi.e 0
push.v [array]self.argument
pop.v.v self.type
pushref.i 16777258
pop.v.v self.element
exit.i

:[68]
push.i [function]gml_Script____struct___468@___struct___467@gml_Object_oOnlineGameSettings_Create_0
conv.i.v
call.i @@NullObject@@(argc=0)
call.i method(argc=2)
dup.v 0
pop.v.v global.___struct___468
call.i @@NewGMLObject@@(argc=2)
pop.v.v self.data
pushi.e 24
pop.v.i self.paddingTop
pushi.e 24
pop.v.i self.paddingLeft
pushi.e 24
pop.v.i self.paddingRight
pushi.e 24
pop.v.i self.paddingBottom
pushi.e 0
pop.v.i self.gap
pushi.e -15
pushi.e 1
push.v [array]self.argument
pop.v.v self.nodes
exit.i

:[69]
push.i [function]gml_Script____struct___467@gml_Object_oOnlineGameSettings_Create_0
conv.i.v
call.i @@NullObject@@(argc=0)
call.i method(argc=2)
dup.v 0
pop.v.v global.___struct___467
call.i @@NewGMLObject@@(argc=3)
call.i @@NewGMLArray@@(argc=1)
b [73]

> gml_Script____struct___465@gml_Object_oOnlineGameSettings_Create_0 (locals=0, argc=0)
:[70]
call.i @@SetStatic@@(argc=0)
b [72]

> gml_Script____struct___466@___struct___465@gml_Object_oOnlineGameSettings_Create_0 (locals=0, argc=0)
:[71]
call.i @@SetStatic@@(argc=0)
push.s "node"@8885
pop.v.s self.type
exit.i

:[72]
push.i [function]gml_Script____struct___466@___struct___465@gml_Object_oOnlineGameSettings_Create_0
conv.i.v
call.i @@NullObject@@(argc=0)
call.i method(argc=2)
dup.v 0
pop.v.v global.___struct___466
call.i @@NewGMLObject@@(argc=1)
pop.v.v self.data
push.s "ltr"@10887
pop.v.s self.direction
push.s "center"@8883
pop.v.s self.alignItems
push.s "center"@8883
pop.v.s self.alignContent
push.s "center"@8883
pop.v.s self.justifyContent
push.s "column"@8917
pop.v.s self.flexDirection
pushi.e -15
pushi.e 0
push.v [array]self.argument
pop.v.v self.nodes
exit.i

:[73]
push.i [function]gml_Script____struct___465@gml_Object_oOnlineGameSettings_Create_0
conv.i.v
call.i @@NullObject@@(argc=0)
call.i method(argc=2)
dup.v 0
pop.v.v global.___struct___465
call.i @@NewGMLObject@@(argc=2)
call.i flexpanel_create_node(argc=1)
pop.v.v builtin.n_root
pushi.e 0
conv.i.v
pushbltn.v builtin.room_height
pushbltn.v builtin.room_width
push.v builtin.n_root
call.i flexpanel_calculate_layout(argc=4)
popz.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
push.v builtin.n_root
call.i gml_Script_ik_flex_panel_generate_instance(argc=3)
popz.v

:[end]