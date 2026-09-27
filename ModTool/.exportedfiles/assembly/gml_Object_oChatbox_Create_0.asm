; WARNING: Missing code locals, possibly due to unsupported bytecode version or a brand new code entry.

:[0]
push.s "number"@5108
conv.s.v
push.v builtin.id
call.i variable_instance_exists(argc=2)
conv.v.b
not.b
bf [2]

:[1]
pushi.e 0
pop.v.i builtin.number

:[2]
pushi.e 160
pop.v.i builtin.inputWidth
push.v builtin.inputWidth
push.l 1
conv.l.v
b [4]

> gml_Script____struct___325@gml_Object_oChatbox_Create_0 (locals=0, argc=0)
:[3]
call.i @@SetStatic@@(argc=0)
pushref.i 16777295
pop.v.v self.sprite_index
pushi.e 64
pop.v.i self.charLimit
pushi.e -15
pushi.e 0
push.v [array]self.argument
pop.v.v self.inputType
pushi.e -15
pushi.e 1
push.v [array]self.argument
pop.v.v self.widthFixed
pushi.e 24
pop.v.i self.heightFixed
exit.i

:[4]
push.i [function]gml_Script____struct___325@gml_Object_oChatbox_Create_0
conv.i.v
call.i @@NullObject@@(argc=0)
call.i method(argc=2)
dup.v 0
pop.v.v global.___struct___325
call.i @@NewGMLObject@@(argc=3)
pushref.i 37
push.v builtin.depth
pushi.e 1
sub.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create_depth(argc=5)
pop.v.v builtin.theInput
push.v builtin.theInput
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
push.v builtin.theInput
push.v builtin.number
dup.v 1 8
dup.v 0
push.v stacktop.focus
callv.v 1
popz.v
push.v builtin.theInput
pushi.e 0
conv.b.v
dup.v 1 8
dup.v 0
push.v stacktop.set_paused
callv.v 1
popz.v
push.s "chatbox._title"@8846
conv.s.v
call.i gml_Script_scribble(argc=1)
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
dup.v 0
pushi.e -9
push.v [stacktop]self.scale
pushglb.v global.fontScaleTitle
dup.e 2 8
callv.v 1
dup.v 0
pushi.e -9
push.v [stacktop]self.align
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
dup.e 2 16
callv.v 2
pop.v.v builtin.chatboxTitle
push.s "chatbox._recipient"@8848
conv.s.v
call.i gml_Script_scribble(argc=1)
dup.v 0
pushi.e -9
push.v [stacktop]self.align
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
dup.e 2 16
callv.v 2
pop.v.v builtin.messageToTxt
push.s "chatbox._message"@8850
conv.s.v
call.i gml_Script_scribble(argc=1)
dup.v 0
pushi.e -9
push.v [stacktop]self.align
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
dup.e 2 16
callv.v 2
pop.v.v builtin.messageLabel
b [6]

> gml_Script____struct___326@gml_Object_oChatbox_Create_0 (locals=0, argc=0)
:[5]
call.i @@SetStatic@@(argc=0)
pushref.i 16777295
pop.v.v self.sprite_index
push.s "chatbox._send"@8852
pop.v.s self.label
pushi.e 24
pop.v.i self.heightFixed
exit.i

:[6]
push.i [function]gml_Script____struct___326@gml_Object_oChatbox_Create_0
conv.i.v
call.i @@NullObject@@(argc=0)
call.i method(argc=2)
dup.v 0
pop.v.v global.___struct___326
call.i @@NewGMLObject@@(argc=1)
pushref.i 33
push.v builtin.depth
pushi.e 1
sub.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create_depth(argc=5)
pop.v.v builtin.theButton
push.v builtin.theButton
pushi.e 0
conv.b.v
dup.v 1 8
dup.v 0
push.v stacktop.set_paused
callv.v 1
popz.v
b [15]

> gml_Script_anon@961@gml_Object_oChatbox_Create_0 (locals=5, argc=0)
:[7]
push.v builtin.theInput
dup.v 0 8
dup.v 0
push.v stacktop.get_value
callv.v 0
pop.v.v local._value
pushglb.v global.playersManager
push.v builtin.number
dup.v 1 8
dup.v 0
push.v stacktop.get_characters
callv.v 1
pop.v.v local._characterSpeaking
pushloc.v local._characterSpeaking
pushi.e -9
push.v [stacktop]self.xUi
pushi.e 19
add.i.v
pop.v.v local._xDestination
pushloc.v local._characterSpeaking
pushi.e -9
push.v [stacktop]self.yUi
pushi.e 16
sub.i.v
pop.v.v local._yDestination
pushloc.v local._value
call.i string_length(argc=1)
pushi.e 0
cmp.i.v NEQ
bf [14]

:[8]
pushi.e 0
pop.v.i local._i

:[9]
pushloc.v local._i
push.v builtin.buttonsPlayer
call.i array_length(argc=1)
cmp.v.v LT
bf [14]

:[10]
pushi.e -1
pushloc.v local._i
conv.v.i
push.v [array]self.buttonsPlayer
pushi.e -9
push.v [stacktop]self.isCheck
conv.v.b
not.b
bf [12]

:[11]
b [13]

:[12]
pushi.e 1
conv.b.v
pushi.e -1
pushloc.v local._i
conv.v.i
push.v [array]self.buttonsPlayer
pushi.e -9
push.v [stacktop]self.value
pushloc.v local._value
pushloc.v local._yDestination
pushloc.v local._xDestination
push.v builtin.number
call.i gml_Script_generate_chatbox_tooltip(argc=6)
popz.v

:[13]
push.v local._i
push.e 1
add.i.v
pop.v.v local._i
b [9]

:[14]
exit.i

:[15]
push.i [function]gml_Script_anon@961@gml_Object_oChatbox_Create_0
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
pop.v.v builtin.send_message
pushi.e 0
pop.v.i local._xBtn
call.i @@NewGMLArray@@(argc=0)
pop.v.v builtin.buttonsPlayer
call.i @@NewGMLArray@@(argc=0)
pop.v.v builtin.nodeBtnPlayer
pushglb.v global.playersCount
pop.v.v local._lengthBtn
pushi.e 0
pop.v.i local._p

:[16]
pushloc.v local._p
pushloc.v local._lengthBtn
cmp.v.v LT
bf [23]

:[17]
pushloc.v local._p
call.i gml_Script_InputPlayerGetGhost(argc=1)
conv.v.b
not.b
bf [19]

:[18]
b [22]

:[19]
pushloc.v local._p
pushi.e 1
add.i.v
push.s "player._p#{0}"@8869
conv.s.v
call.i @@string@@(argc=2)
call.i gml_Script_LocPreprocessor(argc=1)
pop.v.v local._pName
pushglb.v global.playersManager
pushloc.v local._p
dup.v 1 8
dup.v 0
push.v stacktop.get_name
callv.v 1
pop.v.v local._mercName
pushloc.v local._p
pushloc.v local._mercName
pushloc.v local._pName
pushloc.v local._p
push.s "[p{0}]{1} - {2}[/c]"@8872
conv.s.v
call.i @@string@@(argc=4)
b [21]

> gml_Script____struct___327@gml_Object_oChatbox_Create_0 (locals=0, argc=0)
:[20]
call.i @@SetStatic@@(argc=0)
pushref.i 16777295
pop.v.v self.sprite_index
pushi.e -15
pushi.e 0
push.v [array]self.argument
pop.v.v self.label
pushi.e 24
pop.v.i self.heightFixed
pushi.e 0
pop.v.i self.labelAlignH
pushi.e -15
pushi.e 1
push.v [array]self.argument
pop.v.v self.value
exit.i

:[21]
push.i [function]gml_Script____struct___327@gml_Object_oChatbox_Create_0
conv.i.v
call.i @@NullObject@@(argc=0)
call.i method(argc=2)
dup.v 0
pop.v.v global.___struct___327
call.i @@NewGMLObject@@(argc=3)
pushref.i 34
push.v builtin.depth
pushi.e 1
sub.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create_depth(argc=5)
pop.v.v local._btn
pushloc.v local._btn
pushi.e 22
conv.i.v
pushi.e 0
conv.i.v
pushi.e 8
conv.i.v
pushi.e 0
conv.i.v
dup.v 4 8
dup.v 0
push.v stacktop.set_padding
callv.v 4
popz.v
pushloc.v local._btn
pushi.e 0
conv.b.v
dup.v 1 8
dup.v 0
push.v stacktop.set_paused
callv.v 1
popz.v
push.v local._xBtn
pushloc.v local._btn
dup.v 0 8
dup.v 0
push.v stacktop.get_width
callv.v 0
add.v.v
pop.v.v local._xBtn
pushloc.v local._btn
push.v builtin.buttonsPlayer
call.i array_push(argc=2)
popz.v
pushloc.v local._btn
push.l 3
conv.l.v
pushloc.v local._p
push.s "btn{0}"@8877
conv.s.v
call.i @@string@@(argc=2)
push.i [function]gml_Script_cFlexStruct
conv.i.v
call.i @@NewGMLObject@@(argc=4)
push.v builtin.nodeBtnPlayer
call.i array_push(argc=2)
popz.v

:[22]
push.v local._p
push.e 1
add.i.v
pop.v.v local._p
b [16]

:[23]
push.s "title"@4900
conv.s.v
push.s "settings._textTitle"@8878
conv.s.v
call.i gml_Script_scribble(argc=2)
dup.v 0
pushi.e -9
push.v [stacktop]self.starting_format
pushglb.v global.color
pushi.e -9
push.v [stacktop]self.grey4
push.s "ftMonobitSh"@5421
conv.s.v
dup.e 2 16
callv.v 2
pop.v.v builtin.textTitle
push.v builtin.theButton
push.l 3
conv.l.v
push.s "btn"@8880
conv.s.v
push.i [function]gml_Script_cFlexStruct
conv.i.v
call.i @@NewGMLObject@@(argc=4)
call.i @@NewGMLArray@@(argc=1)
b [27]

> gml_Script____struct___342@gml_Object_oChatbox_Create_0 (locals=0, argc=0)
:[24]
call.i @@SetStatic@@(argc=0)
push.s "row"@8881
pop.v.s self.flexDirection
push.s "center"@8883
pop.v.s self.alignItems
b [26]

> gml_Script____struct___343@___struct___342@gml_Object_oChatbox_Create_0 (locals=0, argc=0)
:[25]
call.i @@SetStatic@@(argc=0)
push.s "node"@8885
pop.v.s self.type
exit.i

:[26]
push.i [function]gml_Script____struct___343@___struct___342@gml_Object_oChatbox_Create_0
conv.i.v
call.i @@NullObject@@(argc=0)
call.i method(argc=2)
dup.v 0
pop.v.v global.___struct___343
call.i @@NewGMLObject@@(argc=1)
pop.v.v self.data
pushi.e -15
pushi.e 0
push.v [array]self.argument
pop.v.v self.nodes
exit.i

:[27]
push.i [function]gml_Script____struct___342@gml_Object_oChatbox_Create_0
conv.i.v
call.i @@NullObject@@(argc=0)
call.i method(argc=2)
dup.v 0
pop.v.v global.___struct___342
call.i @@NewGMLObject@@(argc=2)
push.v builtin.theInput
push.l 3
conv.l.v
push.s "btn"@8880
conv.s.v
push.i [function]gml_Script_cFlexStruct
conv.i.v
call.i @@NewGMLObject@@(argc=4)
call.i @@NewGMLArray@@(argc=1)
b [31]

> gml_Script____struct___340@gml_Object_oChatbox_Create_0 (locals=0, argc=0)
:[28]
call.i @@SetStatic@@(argc=0)
push.s "row"@8881
pop.v.s self.flexDirection
push.s "center"@8883
pop.v.s self.alignItems
pushi.e 20
pop.v.i self.marginBottom
b [30]

> gml_Script____struct___341@___struct___340@gml_Object_oChatbox_Create_0 (locals=0, argc=0)
:[29]
call.i @@SetStatic@@(argc=0)
push.s "node"@8885
pop.v.s self.type
exit.i

:[30]
push.i [function]gml_Script____struct___341@___struct___340@gml_Object_oChatbox_Create_0
conv.i.v
call.i @@NullObject@@(argc=0)
call.i method(argc=2)
dup.v 0
pop.v.v global.___struct___341
call.i @@NewGMLObject@@(argc=1)
pop.v.v self.data
pushi.e -15
pushi.e 0
push.v [array]self.argument
pop.v.v self.nodes
exit.i

:[31]
push.i [function]gml_Script____struct___340@gml_Object_oChatbox_Create_0
conv.i.v
call.i @@NullObject@@(argc=0)
call.i method(argc=2)
dup.v 0
pop.v.v global.___struct___340
call.i @@NewGMLObject@@(argc=2)
push.v builtin.messageLabel
push.l 1
conv.l.v
push.s "textTitle"@8879
conv.s.v
push.i [function]gml_Script_cFlexStruct
conv.i.v
call.i @@NewGMLObject@@(argc=4)
call.i @@NewGMLArray@@(argc=1)
b [35]

> gml_Script____struct___338@gml_Object_oChatbox_Create_0 (locals=0, argc=0)
:[32]
call.i @@SetStatic@@(argc=0)
push.s "row"@8881
pop.v.s self.flexDirection
push.s "center"@8883
pop.v.s self.alignItems
pushi.e 2
pop.v.i self.paddingBottom
b [34]

> gml_Script____struct___339@___struct___338@gml_Object_oChatbox_Create_0 (locals=0, argc=0)
:[33]
call.i @@SetStatic@@(argc=0)
push.s "node"@8885
pop.v.s self.type
exit.i

:[34]
push.i [function]gml_Script____struct___339@___struct___338@gml_Object_oChatbox_Create_0
conv.i.v
call.i @@NullObject@@(argc=0)
call.i method(argc=2)
dup.v 0
pop.v.v global.___struct___339
call.i @@NewGMLObject@@(argc=1)
pop.v.v self.data
push.s "wrap"@2159
pop.v.s self.flexWrap
pushi.e -15
pushi.e 0
push.v [array]self.argument
pop.v.v self.nodes
exit.i

:[35]
push.i [function]gml_Script____struct___338@gml_Object_oChatbox_Create_0
conv.i.v
call.i @@NullObject@@(argc=0)
call.i method(argc=2)
dup.v 0
pop.v.v global.___struct___338
call.i @@NewGMLObject@@(argc=2)
push.v builtin.nodeBtnPlayer
b [39]

> gml_Script____struct___336@gml_Object_oChatbox_Create_0 (locals=0, argc=0)
:[36]
call.i @@SetStatic@@(argc=0)
push.s "row"@8881
pop.v.s self.flexDirection
push.s "center"@8883
pop.v.s self.alignItems
pushi.e 16
pop.v.i self.paddingBottom
pushi.e 4
pop.v.i self.gap
b [38]

> gml_Script____struct___337@___struct___336@gml_Object_oChatbox_Create_0 (locals=0, argc=0)
:[37]
call.i @@SetStatic@@(argc=0)
push.s "node"@8885
pop.v.s self.type
exit.i

:[38]
push.i [function]gml_Script____struct___337@___struct___336@gml_Object_oChatbox_Create_0
conv.i.v
call.i @@NullObject@@(argc=0)
call.i method(argc=2)
dup.v 0
pop.v.v global.___struct___337
call.i @@NewGMLObject@@(argc=1)
pop.v.v self.data
push.s "wrap"@2159
pop.v.s self.flexWrap
pushi.e -15
pushi.e 0
push.v [array]self.argument
pop.v.v self.nodes
exit.i

:[39]
push.i [function]gml_Script____struct___336@gml_Object_oChatbox_Create_0
conv.i.v
call.i @@NullObject@@(argc=0)
call.i method(argc=2)
dup.v 0
pop.v.v global.___struct___336
call.i @@NewGMLObject@@(argc=2)
push.v builtin.messageToTxt
push.l 1
conv.l.v
push.s "textTitle"@8879
conv.s.v
push.i [function]gml_Script_cFlexStruct
conv.i.v
call.i @@NewGMLObject@@(argc=4)
call.i @@NewGMLArray@@(argc=1)
b [43]

> gml_Script____struct___334@gml_Object_oChatbox_Create_0 (locals=0, argc=0)
:[40]
call.i @@SetStatic@@(argc=0)
push.s "row"@8881
pop.v.s self.flexDirection
push.s "center"@8883
pop.v.s self.alignItems
pushi.e 2
pop.v.i self.paddingBottom
b [42]

> gml_Script____struct___335@___struct___334@gml_Object_oChatbox_Create_0 (locals=0, argc=0)
:[41]
call.i @@SetStatic@@(argc=0)
push.s "node"@8885
pop.v.s self.type
exit.i

:[42]
push.i [function]gml_Script____struct___335@___struct___334@gml_Object_oChatbox_Create_0
conv.i.v
call.i @@NullObject@@(argc=0)
call.i method(argc=2)
dup.v 0
pop.v.v global.___struct___335
call.i @@NewGMLObject@@(argc=1)
pop.v.v self.data
push.s "wrap"@2159
pop.v.s self.flexWrap
pushi.e -15
pushi.e 0
push.v [array]self.argument
pop.v.v self.nodes
exit.i

:[43]
push.i [function]gml_Script____struct___334@gml_Object_oChatbox_Create_0
conv.i.v
call.i @@NullObject@@(argc=0)
call.i method(argc=2)
dup.v 0
pop.v.v global.___struct___334
call.i @@NewGMLObject@@(argc=2)
push.v builtin.chatboxTitle
push.l 1
conv.l.v
push.s "textTitle"@8879
conv.s.v
push.i [function]gml_Script_cFlexStruct
conv.i.v
call.i @@NewGMLObject@@(argc=4)
call.i @@NewGMLArray@@(argc=1)
b [47]

> gml_Script____struct___332@gml_Object_oChatbox_Create_0 (locals=0, argc=0)
:[44]
call.i @@SetStatic@@(argc=0)
push.s "row"@8881
pop.v.s self.flexDirection
push.s "center"@8883
pop.v.s self.alignItems
push.s "center"@8883
pop.v.s self.justifyContent
pushi.e 16
pop.v.i self.paddingBottom
b [46]

> gml_Script____struct___333@___struct___332@gml_Object_oChatbox_Create_0 (locals=0, argc=0)
:[45]
call.i @@SetStatic@@(argc=0)
push.s "node"@8885
pop.v.s self.type
exit.i

:[46]
push.i [function]gml_Script____struct___333@___struct___332@gml_Object_oChatbox_Create_0
conv.i.v
call.i @@NullObject@@(argc=0)
call.i method(argc=2)
dup.v 0
pop.v.v global.___struct___333
call.i @@NewGMLObject@@(argc=1)
pop.v.v self.data
push.s "wrap"@2159
pop.v.s self.flexWrap
pushi.e -15
pushi.e 0
push.v [array]self.argument
pop.v.v self.nodes
exit.i

:[47]
push.i [function]gml_Script____struct___332@gml_Object_oChatbox_Create_0
conv.i.v
call.i @@NullObject@@(argc=0)
call.i method(argc=2)
dup.v 0
pop.v.v global.___struct___332
call.i @@NewGMLObject@@(argc=2)
call.i @@NewGMLArray@@(argc=6)
push.l 7
conv.l.v
b [51]

> gml_Script____struct___330@gml_Object_oChatbox_Create_0 (locals=0, argc=0)
:[48]
call.i @@SetStatic@@(argc=0)
push.s "mainBlock"@8916
pop.v.s self.name
push.s "column"@8917
pop.v.s self.flexDirection
pushi.e -15
pushi.e 0
push.v [array]self.argument
b [50]

> gml_Script____struct___331@___struct___330@gml_Object_oChatbox_Create_0 (locals=0, argc=0)
:[49]
call.i @@SetStatic@@(argc=0)
pushi.e -15
pushi.e 0
push.v [array]self.argument
pop.v.v self.type
pushref.i 16777258
pop.v.v self.element
exit.i

:[50]
push.i [function]gml_Script____struct___331@___struct___330@gml_Object_oChatbox_Create_0
conv.i.v
call.i @@NullObject@@(argc=0)
call.i method(argc=2)
dup.v 0
pop.v.v global.___struct___331
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

:[51]
push.i [function]gml_Script____struct___330@gml_Object_oChatbox_Create_0
conv.i.v
call.i @@NullObject@@(argc=0)
call.i method(argc=2)
dup.v 0
pop.v.v global.___struct___330
call.i @@NewGMLObject@@(argc=3)
call.i @@NewGMLArray@@(argc=1)
pushglb.v global.gameHeight
b [55]

> gml_Script____struct___328@gml_Object_oChatbox_Create_0 (locals=0, argc=0)
:[52]
call.i @@SetStatic@@(argc=0)
b [54]

> gml_Script____struct___329@___struct___328@gml_Object_oChatbox_Create_0 (locals=0, argc=0)
:[53]
call.i @@SetStatic@@(argc=0)
push.s "node"@8885
pop.v.s self.type
exit.i

:[54]
push.i [function]gml_Script____struct___329@___struct___328@gml_Object_oChatbox_Create_0
conv.i.v
call.i @@NullObject@@(argc=0)
call.i method(argc=2)
dup.v 0
pop.v.v global.___struct___329
call.i @@NewGMLObject@@(argc=1)
pop.v.v self.data
push.s "100%"@2567
pop.v.s self.width
pushi.e -15
pushi.e 0
push.v [array]self.argument
pop.v.v self.height
push.s "center"@8883
pop.v.s self.alignItems
push.s "center"@8883
pop.v.s self.justifyContent
pushi.e -15
pushi.e 1
push.v [array]self.argument
pop.v.v self.nodes
exit.i

:[55]
push.i [function]gml_Script____struct___328@gml_Object_oChatbox_Create_0
conv.i.v
call.i @@NullObject@@(argc=0)
call.i method(argc=2)
dup.v 0
pop.v.v global.___struct___328
call.i @@NewGMLObject@@(argc=3)
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