; WARNING: Missing code locals, possibly due to unsupported bytecode version or a brand new code entry.

:[0]
push.v builtin.callBackStart
call.i is_array(argc=1)
conv.v.b
not.b
bf [2]

:[1]
push.v builtin.callBackStart
call.i @@NewGMLArray@@(argc=1)
pop.v.v builtin.callBackStart

:[2]
push.v builtin.callBackStart
call.i array_length(argc=1)
pop.v.v local._callBackStartLength
pushloc.v local._callBackStartLength
pushi.e 0
cmp.i.v GT
bf [6]

:[3]
pushi.e 0
pop.v.i local._c

:[4]
pushloc.v local._c
pushloc.v local._callBackStartLength
cmp.v.v LT
bf [6]

:[5]
call.i @@This@@(argc=0)
pushi.e -6
pushloc.v local._c
conv.v.i
push.v [array]self.callBackStart
callv.v 0
popz.v
push.v local._c
push.e 1
add.i.v
pop.v.v local._c
b [4]

:[6]
push.v builtin.callBackTextEnd
call.i is_array(argc=1)
conv.v.b
not.b
bf [8]

:[7]
push.v builtin.callBackTextEnd
call.i @@NewGMLArray@@(argc=1)
pop.v.v builtin.callBackTextEnd

:[8]
push.v builtin.callBackDestroy
call.i is_array(argc=1)
conv.v.b
not.b
bf [10]

:[9]
push.v builtin.callBackDestroy
call.i @@NewGMLArray@@(argc=1)
pop.v.v builtin.callBackDestroy

:[10]
pushi.e 0
pop.v.b builtin.callBackTextActivated
pushi.e 0
pop.v.i builtin.image_alpha
push.s "ease-out"@8749
conv.s.v
pushbltn.v builtin.undefined
pushbltn.v builtin.undefined
push.d 0.2
conv.d.v
push.v builtin.id
push.i [function]gml_Script_myTimer
conv.i.v
call.i @@NewGMLObject@@(argc=6)
pop.v.v builtin.timerShow
push.v builtin.timerShow
dup.v 0 8
dup.v 0
push.v stacktop.run
callv.v 0
popz.v
push.v builtin.id
push.i [function]gml_Script_WiggleEffect
conv.i.v
call.i @@NewGMLObject@@(argc=2)
pop.v.v builtin.wiggle
push.v builtin.wiggle
dup.v 0 8
dup.v 0
push.v stacktop.run
callv.v 0
popz.v
push.v builtin.x
pop.v.v builtin.xOrigin
push.v builtin.y
pop.v.v builtin.yOrigin
pushglb.v global.depthManager
push.s "dialogue"@4994
conv.s.v
dup.v 1 8
dup.v 0
push.v stacktop.get_depth
callv.v 1
pop.v.v builtin.depth
pushref.i 16777257
pop.v.v builtin.bgDialogueSprite
pushi.e 0
pop.v.i builtin.textBgWidth
pushi.e 204
pop.v.i builtin.textBgMaxWidth
pushi.e 0
pop.v.i builtin.width
pushi.e 0
pop.v.i builtin.height
pushi.e 0
pop.v.i builtin.halfHeight
pushi.e 0
pop.v.i builtin.halfWidth
pushi.e 12
pop.v.i builtin.paddingLeft
pushi.e 12
pop.v.i builtin.paddingRight
pushi.e 10
pop.v.i builtin.paddingTop
pushi.e 10
pop.v.i builtin.paddingBottom
pushref.i 16777335
pop.v.v builtin.caretSprite
push.v builtin.closeType
push.l 1
cmp.l.v EQ
bf [12]

:[11]
push.v builtin.caretSprite
call.i sprite_get_width(argc=1)
b [13]

:[12]
pushi.e 0
conv.i.v

:[13]
pop.v.v builtin.caretW
push.v builtin.closeType
push.l 1
cmp.l.v EQ
bf [15]

:[14]
push.v builtin.caretSprite
call.i sprite_get_height(argc=1)
b [16]

:[15]
pushi.e 0
conv.i.v

:[16]
pop.v.v builtin.caretH
push.v builtin.closeType
push.l 1
cmp.l.v EQ
bf [18]

:[17]
pushi.e 8
conv.i.v
b [19]

:[18]
pushi.e 0
conv.i.v

:[19]
pop.v.v builtin.caretSpace
pushref.i 16777347
call.i sprite_get_width(argc=1)
pop.v.v builtin.checkWidth
pushi.e 0
pop.v.i builtin.xCheck
pushi.e 0
pop.v.i builtin.yCheck
push.v builtin.x
pop.v.v builtin.xTo
push.v builtin.y
pop.v.v builtin.yTo
push.v builtin.x
pop.v.v builtin.xInit
push.v builtin.y
pushi.e 8
add.i.v
pop.v.v builtin.yInit
b [43]

> gml_Script_anon@1498@gml_Object_oDialogue_Create_0 (locals=0, argc=4)
:[20]
pushbltn.v builtin.argument0
pushbltn.v builtin.undefined
cmp.v.v EQ
bf [22]

:[21]
push.v builtin.xOrigin
pop.v.v builtin.argument0

:[22]
pushbltn.v builtin.argument1
pushbltn.v builtin.undefined
cmp.v.v EQ
bf [24]

:[23]
push.v builtin.yOrigin
pop.v.v builtin.argument1

:[24]
pushbltn.v builtin.argument2
pushbltn.v builtin.undefined
cmp.v.v EQ
bf [26]

:[25]
push.v builtin.alignX
pop.v.v builtin.argument2

:[26]
pushbltn.v builtin.argument3
pushbltn.v builtin.undefined
cmp.v.v EQ
bf [28]

:[27]
push.v builtin.alignY
pop.v.v builtin.argument3

:[28]
push.v arg.argument0
pop.v.v builtin.xOrigin
push.v arg.argument1
pop.v.v builtin.yOrigin
push.v arg.argument2
pop.v.v builtin.alignX
push.v arg.argument3
pop.v.v builtin.alignY
push.v builtin.xOrigin
pop.v.v builtin.x
push.v builtin.yOrigin
pop.v.v builtin.y
push.v builtin.alignX
dup.v 0
push.l 0
cmp.l.v EQ
bt [32]

:[29]
dup.v 0
push.l 1
cmp.l.v EQ
bt [33]

:[30]
dup.v 0
push.l 2
cmp.l.v EQ
bt [34]

:[31]
b [35]

:[32]
push.v builtin.x
push.v builtin.width
sub.v.v
pop.v.v builtin.x
b [35]

:[33]
b [35]

:[34]
push.v builtin.x
push.v builtin.width
call.i round(argc=1)
pushi.e 2
conv.i.d
div.d.v
sub.v.v
pop.v.v builtin.x
b [35]

:[35]
popz.v
push.v builtin.alignY
dup.v 0
push.l 0
cmp.l.v EQ
bt [39]

:[36]
dup.v 0
push.l 1
cmp.l.v EQ
bt [40]

:[37]
dup.v 0
push.l 2
cmp.l.v EQ
bt [41]

:[38]
b [42]

:[39]
push.v builtin.y
push.v builtin.height
sub.v.v
pop.v.v builtin.y
b [42]

:[40]
b [42]

:[41]
push.v builtin.y
push.v builtin.height
call.i round(argc=1)
pushi.e 2
conv.i.d
div.d.v
sub.v.v
pop.v.v builtin.y
b [42]

:[42]
popz.v
pushbltn.v builtin.room_width
push.v builtin.width
sub.v.v
pushi.e 0
conv.i.v
push.v builtin.x
call.i clamp(argc=3)
pop.v.v builtin.x
pushbltn.v builtin.room_height
push.v builtin.height
sub.v.v
pushi.e 0
conv.i.v
push.v builtin.y
call.i clamp(argc=3)
pop.v.v builtin.y
push.v builtin.x
pop.v.v builtin.xTo
push.v builtin.y
pop.v.v builtin.yTo
push.v builtin.x
pop.v.v builtin.xInit
push.v builtin.y
pushi.e 8
add.i.v
pop.v.v builtin.yInit
exit.i

:[43]
push.i [function]gml_Script_anon@1498@gml_Object_oDialogue_Create_0
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
pop.v.v builtin.reposition
pushbltn.v builtin.undefined
pop.v.v builtin.textBody
b [49]

> gml_Script_anon@2426@gml_Object_oDialogue_Create_0 (locals=1, argc=1)
:[44]
pushbltn.v builtin.argument0
pushbltn.v builtin.undefined
cmp.v.v EQ
bf [46]

:[45]
push.v builtin.body
pop.v.v builtin.argument0

:[46]
push.v builtin.textBody
call.i gml_Script_scribble_is_text_element(argc=1)
conv.v.b
bf [48]

:[47]
push.v builtin.textBody
dup.v 0 8
dup.v 0
push.v stacktop.flush
callv.v 0
popz.v

:[48]
push.v arg.argument0
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
dup.v 0
pushi.e -9
push.v [stacktop]self.padding
push.v builtin.paddingBottom
pushglb.v global.zoom
mul.v.v
push.v builtin.paddingRight
push.v builtin.caretW
add.v.v
push.v builtin.caretSpace
add.v.v
pushglb.v global.zoom
mul.v.v
push.v builtin.paddingTop
pushglb.v global.zoom
mul.v.v
push.v builtin.paddingLeft
pushglb.v global.zoom
mul.v.v
dup.e 2 32
callv.v 4
dup.v 0
pushi.e -9
push.v [stacktop]self.wrap
push.v builtin.textBgMaxWidth
pushglb.v global.zoom
mul.v.v
dup.e 2 8
callv.v 1
pop.v.v builtin.textBody
push.v builtin.textBody
dup.v 0 8
dup.v 0
push.v stacktop.get_width
callv.v 0
pop.v.v builtin.textBodyW
push.v builtin.textBody
dup.v 0 8
dup.v 0
push.v stacktop.get_height
callv.v 0
pop.v.v builtin.textBodyH
push.v builtin.textBgMaxWidth
push.v builtin.textBodyW
pushglb.v global.zoom
div.v.v
call.i min(argc=2)
pop.v.v local._dialBgWidth
pushloc.v local._dialBgWidth
pop.v.v builtin.textBgWidth
push.v builtin.textBgWidth
call.i round(argc=1)
pop.v.v builtin.width
push.v builtin.textBodyH
pushglb.v global.zoom
div.v.v
call.i round(argc=1)
pop.v.v builtin.height
push.v builtin.width
push.v builtin.checkWidth
pushglb.v global.playersCount
mul.v.v
sub.v.v
pushi.e 1
sub.i.v
pop.v.v builtin.xCheck
push.v builtin.height
pushi.e 2
add.i.v
pop.v.v builtin.yCheck
call.i @@This@@(argc=0)
push.v builtin.reposition
callv.v 0
popz.v
exit.i

:[49]
push.i [function]gml_Script_anon@2426@gml_Object_oDialogue_Create_0
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
pop.v.v builtin.updateTxt
push.v builtin.body
call.i @@This@@(argc=0)
push.v builtin.updateTxt
callv.v 1
popz.v
push.v builtin.closeType
push.l 2
cmp.l.v EQ
bf [54]

:[50]
push.v builtin.closeTimer
pushi.e -1
cmp.i.v EQ
bf [52]

:[51]
push.v builtin.body
call.i gml_Script_LocPreprocessor(argc=1)
pop.v.v local._string
pushloc.v local._string
push.s " "@3157
conv.s.v
call.i string_count(argc=2)
pushi.e 1
add.i.v
pop.v.v local._wordCount
pushloc.v local._wordCount
push.d 0.75
mul.d.v
pop.v.v local._length
pushloc.v local._length
push.d 1.75
conv.d.v
call.i max(argc=2)
pop.v.v local._length
b [53]

:[52]
push.v builtin.closeTimer
pop.v.v local._length

:[53]
pushloc.v local._length
push.v builtin.id
push.i [function]gml_Script_myTimer
conv.i.v
call.i @@NewGMLObject@@(argc=3)
pop.v.v builtin.timerClose
push.v builtin.timerClose
dup.v 0 8
dup.v 0
push.v stacktop.run
callv.v 0
popz.v
b [56]

:[54]
push.v builtin.closeType
push.l 1
cmp.l.v EQ
bf [56]

:[55]
push.v builtin.caretSprite
pushbltn.v builtin.undefined
pushbltn.v builtin.undefined
pushi.e -1
conv.i.v
pushbltn.v builtin.undefined
pushbltn.v builtin.undefined
push.v builtin.id
push.i [function]gml_Script_myTimer
conv.i.v
call.i @@NewGMLObject@@(argc=8)
pop.v.v builtin.animBtn
push.v builtin.animBtn
dup.v 0 8
dup.v 0
push.v stacktop.run
callv.v 0
popz.v
pushref.i 16777343
pushbltn.v builtin.undefined
pushbltn.v builtin.undefined
pushi.e 1
conv.i.v
pushbltn.v builtin.undefined
pushbltn.v builtin.undefined
push.v builtin.id
push.i [function]gml_Script_myTimer
conv.i.v
call.i @@NewGMLObject@@(argc=8)
pop.v.v local._animCheck0
pushref.i 16777344
pushbltn.v builtin.undefined
pushbltn.v builtin.undefined
pushi.e 1
conv.i.v
pushbltn.v builtin.undefined
pushbltn.v builtin.undefined
push.v builtin.id
push.i [function]gml_Script_myTimer
conv.i.v
call.i @@NewGMLObject@@(argc=8)
pop.v.v local._animCheck1
pushref.i 16777345
pushbltn.v builtin.undefined
pushbltn.v builtin.undefined
pushi.e 1
conv.i.v
pushbltn.v builtin.undefined
pushbltn.v builtin.undefined
push.v builtin.id
push.i [function]gml_Script_myTimer
conv.i.v
call.i @@NewGMLObject@@(argc=8)
pop.v.v local._animCheck2
pushref.i 16777346
pushbltn.v builtin.undefined
pushbltn.v builtin.undefined
pushi.e 1
conv.i.v
pushbltn.v builtin.undefined
pushbltn.v builtin.undefined
push.v builtin.id
push.i [function]gml_Script_myTimer
conv.i.v
call.i @@NewGMLObject@@(argc=8)
pop.v.v local._animCheck3
pushloc.v local._animCheck3
pushloc.v local._animCheck2
pushloc.v local._animCheck1
pushloc.v local._animCheck0
call.i @@NewGMLArray@@(argc=4)
pop.v.v builtin.animCheckArray
pushi.e 0
conv.i.v
pushi.e 4
conv.i.v
call.i array_create(argc=2)
pop.v.v builtin.animCheckCounter
pushglb.v global.waitingList
push.v builtin.id
dup.v 1 8
dup.v 0
push.v stacktop.set
callv.v 1
popz.v

:[56]
call.i gml_Script_scribble_typist(argc=0)
pop.v.v builtin.typist
push.v builtin.typist
pushi.e 0
conv.i.v
pushi.e 1
pushglb.v global.dialogueTextSpeed
mul.v.i
dup.v 2 8
dup.v 0
push.v stacktop.in
callv.v 2
popz.v
push.v builtin.whoIsSpeaking
dup.v 0
push.l 5
cmp.l.v EQ
bt [64]

:[57]
dup.v 0
push.l 0
cmp.l.v EQ
bt [65]

:[58]
dup.v 0
push.l 1
cmp.l.v EQ
bt [66]

:[59]
dup.v 0
push.l 3
cmp.l.v EQ
bt [67]

:[60]
dup.v 0
push.l 2
cmp.l.v EQ
bt [68]

:[61]
dup.v 0
push.l 4
cmp.l.v EQ
bt [69]

:[62]
b [64]

:[63]
b [70]

:[64]
b [70]

:[65]
push.v builtin.typist
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
pushref.i 33554466
pushref.i 33554465
pushref.i 33554464
pushref.i 33554463
call.i @@NewGMLArray@@(argc=4)
dup.v 5 8
dup.v 0
push.v stacktop.sound
callv.v 5
popz.v
b [70]

:[66]
push.v builtin.typist
pushi.e 1
conv.i.v
push.d 0.8
conv.d.v
push.d 0.6
conv.d.v
pushi.e 1
conv.i.v
pushref.i 33554493
pushref.i 33554492
pushref.i 33554491
pushref.i 33554490
call.i @@NewGMLArray@@(argc=4)
dup.v 5 8
dup.v 0
push.v stacktop.sound
callv.v 5
popz.v
b [70]

:[67]
push.v builtin.typist
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
pushref.i 33554462
pushref.i 33554461
pushref.i 33554460
pushref.i 33554459
call.i @@NewGMLArray@@(argc=4)
dup.v 5 8
dup.v 0
push.v stacktop.sound
callv.v 5
popz.v
b [70]

:[68]
push.v builtin.typist
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
pushref.i 33554498
pushref.i 33554497
pushref.i 33554496
pushref.i 33554495
call.i @@NewGMLArray@@(argc=4)
dup.v 5 8
dup.v 0
push.v stacktop.sound
callv.v 5
popz.v
b [70]

:[69]
push.v builtin.typist
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
pushref.i 33554504
pushref.i 33554503
pushref.i 33554502
pushref.i 33554501
call.i @@NewGMLArray@@(argc=4)
dup.v 5 8
dup.v 0
push.v stacktop.sound
callv.v 5
popz.v
b [70]

:[70]
popz.v
pushi.e 0
conv.b.v
pushi.e 4
conv.i.v
call.i array_create(argc=2)
pop.v.v global.dialogueValidated
push.v global.dialogueCounter
push.e 1
add.i.v
pop.v.v global.dialogueCounter
call.i part_system_create(argc=0)
pop.v.v builtin.partSysDial
push.v builtin.depth
push.v builtin.partSysDial
call.i part_system_depth(argc=2)
popz.v
push.v builtin.partSysDial
call.i part_emitter_create(argc=1)
pop.v.v builtin.partEmitDial
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
push.v builtin.partEmitDial
push.v builtin.partSysDial
call.i part_emitter_region(argc=8)
popz.v
pushi.e 0
conv.b.v
push.v builtin.partSysDial
call.i part_system_automatic_draw(argc=2)
popz.v
push.l 6
conv.l.v
push.v builtin.partSysDial
call.i gml_Script_add_to_clean_up(argc=2)
popz.v
push.v builtin.partSysDial
push.l 5
conv.l.v
push.v builtin.partEmitDial
call.i gml_Script_add_to_clean_up(argc=3)
popz.v
b [90]

> gml_Script_anon@5660@gml_Object_oDialogue_Create_0 (locals=3, argc=0)
:[71]
pushi.e 1
pop.v.b local._canDestroy
pushi.e 0
pop.v.i local._j

:[72]
pushloc.v local._j
pushglb.v global.playersCount
cmp.v.v LT
bf [86]

:[73]
pushglb.v global.playersManager
pushloc.v local._j
dup.v 1 8
dup.v 0
push.v stacktop.get_characters
callv.v 1
pop.v.v local._char
pushloc.v local._char
pushi.e -4
cmp.i.v NEQ
bf [75]

:[74]
pushbltn.v builtin.room
pushref.i 50331655
cmp.v.v EQ
b [76]

:[75]
push.e 0

:[76]
bf [83]

:[77]
pushloc.v local._char
dup.v 0 8
dup.v 0
push.v stacktop.is_in_fight
callv.v 0
conv.v.b
bf [79]

:[78]
call.i @@Global@@(argc=0)
pushi.e -9
pushloc.v local._j
conv.v.i
push.v [array]self.dialogueValidated
pushi.e 0
cmp.b.v EQ
b [80]

:[79]
push.e 0

:[80]
bf [82]

:[81]
pushi.e 0
pop.v.b local._canDestroy
b [86]

:[82]
b [85]

:[83]
call.i @@Global@@(argc=0)
pushi.e -9
pushloc.v local._j
conv.v.i
push.v [array]self.dialogueValidated
pushi.e 0
cmp.b.v EQ
bf [85]

:[84]
pushi.e 0
pop.v.b local._canDestroy
b [86]

:[85]
push.v local._j
push.e 1
add.i.v
pop.v.v local._j
b [72]

:[86]
pushloc.v local._canDestroy
conv.v.b
bf [89]

:[87]
call.i instance_destroy(argc=0)
popz.v
pushglb.v global.networkingManager
pushi.e -9
push.v [stacktop]self.isNetworkGame
conv.v.b
bf [89]

:[88]
pushglb.v global.networkingManager
dup.v 0 8
dup.v 0
push.v stacktop.destroy_dialogue
callv.v 0
popz.v

:[89]
exit.i

:[90]
push.i [function]gml_Script_anon@5660@gml_Object_oDialogue_Create_0
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
pop.v.v builtin.check_if_destroyable
b [110]

> gml_Script_anon@6370@gml_Object_oDialogue_Create_0 (locals=4, argc=1)
:[91]
push.v builtin.partSysDial
call.i part_system_exists(argc=1)
conv.v.b
not.b
bt [93]

:[92]
push.v builtin.partEmitDial
push.v builtin.partSysDial
call.i part_emitter_exists(argc=2)
conv.v.b
not.b
b [94]

:[93]
push.e 1

:[94]
bf [96]

:[95]
exit.i

:[96]
pushi.e -6
push.v arg.argument0
conv.v.i
push.v [array]self.animCheckCounter
pushi.e 0
cmp.i.v EQ
bf [98]

:[97]
pushi.e -1
push.v arg.argument0
conv.v.i
push.v [array]self.animCheckArray
dup.v 0 8
dup.v 0
push.v stacktop.reset
callv.v 0
popz.v
pushi.e -1
push.v arg.argument0
conv.v.i
push.v [array]self.animCheckArray
dup.v 0 8
dup.v 0
push.v stacktop.run
callv.v 0
popz.v

:[98]
pushi.e -6
push.v arg.argument0
conv.v.i
dup.i 1
push.v [array]self.animCheckCounter
push.e 1
add.i.v
pop.i.v [array]self.animCheckCounter
pushi.e -6
push.v arg.argument0
conv.v.i
push.v [array]self.animCheckCounter
pushi.e 1
cmp.i.v GT
bf [109]

:[99]
pushi.e 100
conv.i.v
pushi.e 16
conv.i.v
pushi.e 1
conv.i.v
pushi.e 100
conv.i.v
pushi.e 2
conv.i.v
pushi.e -6
push.v arg.argument0
conv.v.i
push.v [array]self.animCheckCounter
call.i gml_Script_map_value(argc=5)
call.i min(argc=2)
pop.v.v local._nbrPart
push.v builtin.x
push.v builtin.xCheck
add.v.v
push.v arg.argument0
pushi.e 8
mul.i.v
add.v.v
pushi.e 4
add.i.v
pop.v.v local._x
push.v builtin.y
push.v builtin.yCheck
add.v.v
pushi.e 3
add.i.v
pop.v.v local._y
push.v arg.argument0
dup.v 0
pushi.e 0
cmp.i.v EQ
bt [104]

:[100]
dup.v 0
pushi.e 1
cmp.i.v EQ
bt [105]

:[101]
dup.v 0
pushi.e 2
cmp.i.v EQ
bt [106]

:[102]
dup.v 0
pushi.e 3
cmp.i.v EQ
bt [107]

:[103]
b [108]

:[104]
pushglb.v global.particles
pushi.e -9
push.v [stacktop]self.partTypeDial0
pop.v.v local._partType
b [108]

:[105]
pushglb.v global.particles
pushi.e -9
push.v [stacktop]self.partTypeDial1
pop.v.v local._partType
b [108]

:[106]
pushglb.v global.particles
pushi.e -9
push.v [stacktop]self.partTypeDial2
pop.v.v local._partType
b [108]

:[107]
pushglb.v global.particles
pushi.e -9
push.v [stacktop]self.partTypeDial3
pop.v.v local._partType
b [108]

:[108]
popz.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushloc.v local._y
pushloc.v local._y
pushloc.v local._x
pushloc.v local._x
push.v builtin.partEmitDial
push.v builtin.partSysDial
call.i part_emitter_region(argc=8)
popz.v
pushloc.v local._nbrPart
pushloc.v local._partType
push.v builtin.partEmitDial
push.v builtin.partSysDial
call.i part_emitter_burst(argc=4)
popz.v

:[109]
exit.i

:[110]
push.i [function]gml_Script_anon@6370@gml_Object_oDialogue_Create_0
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
pop.v.v builtin.generate_particle
b [129]

> gml_Script_anon@7414@gml_Object_oDialogue_Create_0 (locals=1, argc=3)
:[111]
pushbltn.v builtin.argument2
pushbltn.v builtin.undefined
cmp.v.v EQ
bf [113]

:[112]
pushi.e 0
pop.v.b builtin.argument2

:[113]
call.i @@Global@@(argc=0)
pushi.e -9
push.v arg.argument0
conv.v.i
push.v [array]self.dialogueValidated
push.v arg.argument1
cmp.v.v NEQ
bf [115]

:[114]
push.l 0
pop.v.l local._channel
b [116]

:[115]
push.l 1
pop.v.l local._channel

:[116]
push.v arg.argument1
call.i @@Global@@(argc=0)
pushi.e -9
push.v arg.argument0
conv.v.i
pop.v.v [array]self.dialogueValidated
push.v arg.argument1
conv.v.b
bf [118]

:[117]
push.v arg.argument0
call.i @@This@@(argc=0)
push.v builtin.generate_particle
callv.v 1
popz.v

:[118]
push.v arg.argument2
conv.v.b
bf [120]

:[119]
pushglb.v global.networkingManager
pushi.e -9
push.v [stacktop]self.isNetworkGame
conv.v.b
b [121]

:[120]
push.e 0

:[121]
bf [123]

:[122]
pushglb.v global.networkingManager
pushloc.v local._channel
pushbltn.v builtin.undefined
push.v arg.argument1
push.v arg.argument0
dup.v 4 8
dup.v 0
push.v stacktop.update_counter_dialogue
callv.v 4
popz.v

:[123]
call.i @@Global@@(argc=0)
pushi.e -9
push.v arg.argument0
conv.v.i
push.v [array]self.dialogueValidated
conv.v.b
bf [125]

:[124]
pushglb.v global.isHost
conv.v.b
b [126]

:[125]
push.e 0

:[126]
bf [128]

:[127]
call.i @@This@@(argc=0)
push.v builtin.check_if_destroyable
callv.v 0
popz.v

:[128]
exit.i

:[129]
push.i [function]gml_Script_anon@7414@gml_Object_oDialogue_Create_0
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
pop.v.v builtin.update_counter_dialogue
pushglb.v global.networkingManager
pushi.e -9
push.v [stacktop]self.isNetworkGame
conv.v.b
bf [end]

:[130]
pushglb.v global.networkingManager
pushglb.v global.dialogueCounter
dup.v 1 8
dup.v 0
push.v stacktop.ask_dialogue_status
callv.v 1
popz.v

:[end]