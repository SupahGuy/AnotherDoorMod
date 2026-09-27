; WARNING: Missing code locals, possibly due to unsupported bytecode version or a brand new code entry.

:[0]
push.s "idParent"@4907
conv.s.v
push.v builtin.id
call.i variable_instance_exists(argc=2)
conv.v.b
not.b
bf [2]

:[1]
pushi.e -4
pop.v.i builtin.idParent

:[2]
pushi.e -4
pop.v.i builtin.idChild
push.v builtin.idParent
pushi.e -4
cmp.i.v NEQ
bf [6]

:[3]
push.v builtin.idParent
pushi.e -9
pushenv [5]

:[4]
push.v other.id
pop.v.v builtin.idChild

:[5]
popenv [4]

:[6]
pushi.e 144
pop.v.i builtin.maxWidth
pushbltn.v builtin.undefined
pop.v.v builtin.clipMaskSurface
pushi.e 16
pop.v.i builtin.minWidth
pushi.e 0
pop.v.b builtin.isVisible
push.s "ease-out"@8749
conv.s.v
pushbltn.v builtin.undefined
pushbltn.v builtin.undefined
push.d 0.15
conv.d.v
push.v builtin.id
push.i [function]gml_Script_myTimer
conv.i.v
call.i @@NewGMLObject@@(argc=6)
pop.v.v builtin.timerShow
pushi.e 0
pop.v.i builtin.image_alpha
b [10]

> gml_Script_anon@394@gml_Object_oTooltip_Create_0 (locals=0, argc=0)
:[7]
push.v builtin.isVisible
conv.v.b
not.b
bf [9]

:[8]
pushi.e 1
pop.v.b builtin.isVisible
push.v builtin.timerShow
dup.v 0 8
dup.v 0
push.v stacktop.run
callv.v 0
popz.v
push.v builtin.wiggle
dup.v 0 8
dup.v 0
push.v stacktop.run
callv.v 0
popz.v

:[9]
exit.i

:[10]
push.i [function]gml_Script_anon@394@gml_Object_oTooltip_Create_0
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
pop.v.v builtin.show
b [14]

> gml_Script_anon@530@gml_Object_oTooltip_Create_0 (locals=0, argc=0)
:[11]
push.v builtin.isVisible
conv.v.b
bf [13]

:[12]
pushi.e 0
pop.v.i builtin.image_alpha
push.v builtin.yInit
pop.v.v builtin.y
pushi.e 0
pop.v.b builtin.isVisible
push.v builtin.timerShow
dup.v 0 8
dup.v 0
push.v stacktop.reset
callv.v 0
popz.v
push.v builtin.timerShow
dup.v 0 8
dup.v 0
push.v stacktop.stop
callv.v 0
popz.v

:[13]
exit.i

:[14]
push.i [function]gml_Script_anon@530@gml_Object_oTooltip_Create_0
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
pop.v.v builtin.hide
push.v builtin.id
push.i [function]gml_Script_WiggleEffect
conv.i.v
call.i @@NewGMLObject@@(argc=2)
pop.v.v builtin.wiggle
push.v builtin.x
pop.v.v builtin.xOrigin
push.v builtin.y
pop.v.v builtin.yOrigin
push.v builtin.x
pop.v.v builtin.xTo
push.v builtin.y
pop.v.v builtin.yTo
push.v builtin.x
pop.v.v builtin.xInit
push.v builtin.y
pushi.e 4
add.i.v
pop.v.v builtin.yInit
pushi.e 0
pop.v.i builtin.width
pushi.e 0
pop.v.i builtin.height
pushi.e 0
pop.v.i builtin.halfWidth
pushi.e 0
pop.v.i builtin.halfHeight
pushglb.v global.depthManager
push.s "tooltip"@4995
conv.s.v
dup.v 1 8
dup.v 0
push.v stacktop.get_depth
callv.v 1
pop.v.v builtin.depth
pushi.e 10
pop.v.i builtin.paddingX
pushi.e 8
pop.v.i builtin.paddingTop
pushi.e 8
pop.v.i builtin.paddingBottom
pushi.e 2
pop.v.i builtin.titlePaddingBottom
pushref.i 16777257
pop.v.v builtin.bgDialogueSprite
push.v builtin.img
pushi.e -1
cmp.i.v EQ
bf [16]

:[15]
pushi.e 0
conv.i.v
b [17]

:[16]
push.v builtin.img
call.i sprite_get_width(argc=1)

:[17]
pop.v.v builtin.imgW
push.v builtin.img
pushi.e -1
cmp.i.v EQ
bf [19]

:[18]
pushi.e 0
conv.i.v
b [20]

:[19]
push.v builtin.img
call.i sprite_get_height(argc=1)

:[20]
pop.v.v builtin.imgH
push.v builtin.img
pushi.e -1
cmp.i.v EQ
bf [22]

:[21]
pushi.e 0
conv.i.v
b [23]

:[22]
push.v builtin.img
call.i sprite_get_xoffset(argc=1)

:[23]
pop.v.v builtin.imgOffsetX
push.v builtin.img
pushi.e -1
cmp.i.v EQ
bf [25]

:[24]
pushi.e 0
conv.i.v
b [26]

:[25]
push.v builtin.img
call.i sprite_get_yoffset(argc=1)

:[26]
pop.v.v builtin.imgOffsetY
push.v builtin.img
pushi.e -1
cmp.i.v EQ
bf [28]

:[27]
pushi.e 0
conv.i.v
b [29]

:[28]
pushi.e 2
conv.i.v

:[29]
pop.v.v builtin.imgSpacing
b [35]

> gml_Script_anon@1378@gml_Object_oTooltip_Create_0 (locals=1, argc=0)
:[30]
push.v builtin.idParent
pushi.e -4
cmp.i.v NEQ
bf [34]

:[31]
push.v builtin.idParent
pop.v.v local._oldParent
push.v builtin.idParent
pushi.e -9
pushenv [33]

:[32]
push.v other.id
pop.v.v builtin.idParent
pushi.e -4
pop.v.i builtin.idChild

:[33]
popenv [32]
pushi.e -4
pop.v.i builtin.idParent
pushloc.v local._oldParent
pop.v.v builtin.idChild
call.i @@This@@(argc=0)
push.v builtin.reposition
callv.v 0
popz.v

:[34]
exit.i

:[35]
push.i [function]gml_Script_anon@1378@gml_Object_oTooltip_Create_0
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
pop.v.v builtin.inverse_order_parent
b [45]

> gml_Script_anon@1634@gml_Object_oTooltip_Create_0 (locals=0, argc=0)
:[36]
push.v builtin.title
pushi.e -1
cmp.i.v NEQ
bf [40]

:[37]
push.v builtin.textTitle
dup.v 0 8
dup.v 0
push.v stacktop.get_width
callv.v 0
pushglb.v global.zoom
div.v.v
pop.v.v builtin.textTitleW
push.v builtin.textTitle
dup.v 0 8
dup.v 0
push.v stacktop.get_height
callv.v 0
pushglb.v global.zoom
div.v.v
pop.v.v builtin.textTitleH
push.v builtin.img
pushi.e -1
cmp.i.v NEQ
bf [39]

:[38]
push.v builtin.textTitleH
pushi.e 2
conv.i.d
div.d.v
call.i round(argc=1)
push.v builtin.titlePaddingBottom
sub.v.v
pop.v.v builtin.imgOffsetY

:[39]
b [41]

:[40]
pushi.e 0
pop.v.i builtin.textTitleW
pushi.e 0
pop.v.i builtin.textTitleH

:[41]
push.v builtin.textBody
dup.v 0 8
dup.v 0
push.v stacktop.get_width
callv.v 0
pushglb.v global.zoom
div.v.v
pop.v.v builtin.textBodyW
push.v builtin.textBody
dup.v 0 8
dup.v 0
push.v stacktop.get_height
callv.v 0
pushglb.v global.zoom
div.v.v
pop.v.v builtin.textBodyH
push.v builtin.effect
pushi.e -1
cmp.i.v NEQ
bf [43]

:[42]
push.v builtin.maxWidth
pop.v.v builtin.width
push.v builtin.width
pushi.e 2
conv.i.d
div.d.v
call.i round(argc=1)
pop.v.v builtin.halfWidth
b [44]

:[43]
push.v builtin.maxWidth
push.v builtin.minWidth
push.v builtin.textBodyW
push.v builtin.textTitleW
push.v builtin.imgW
add.v.v
call.i max(argc=2)
call.i clamp(argc=3)
call.i round(argc=1)
pop.v.v builtin.width
push.v builtin.width
pushi.e 2
conv.i.d
div.d.v
call.i round(argc=1)
pop.v.v builtin.halfWidth

:[44]
push.v builtin.paddingTop
push.v builtin.textTitleH
push.v builtin.textBodyH
add.v.v
add.v.v
push.v builtin.paddingBottom
add.v.v
call.i round(argc=1)
pop.v.v builtin.height
push.v builtin.height
pushi.e 2
conv.i.d
div.d.v
call.i round(argc=1)
pop.v.v builtin.halfHeight
exit.i

:[45]
push.i [function]gml_Script_anon@1634@gml_Object_oTooltip_Create_0
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
pop.v.v builtin.calculate_size
b [100]

> gml_Script_anon@2364@gml_Object_oTooltip_Create_0 (locals=1, argc=5)
:[46]
pushbltn.v builtin.argument0
pushbltn.v builtin.undefined
cmp.v.v EQ
bf [48]

:[47]
push.v builtin.xOrigin
pop.v.v builtin.argument0

:[48]
pushbltn.v builtin.argument1
pushbltn.v builtin.undefined
cmp.v.v EQ
bf [50]

:[49]
push.v builtin.yOrigin
pop.v.v builtin.argument1

:[50]
pushbltn.v builtin.argument2
pushbltn.v builtin.undefined
cmp.v.v EQ
bf [52]

:[51]
push.v builtin.alignX
pop.v.v builtin.argument2

:[52]
pushbltn.v builtin.argument3
pushbltn.v builtin.undefined
cmp.v.v EQ
bf [54]

:[53]
push.v builtin.alignY
pop.v.v builtin.argument3

:[54]
pushbltn.v builtin.argument4
pushbltn.v builtin.undefined
cmp.v.v EQ
bf [56]

:[55]
pushi.e 0
pop.v.b builtin.argument4

:[56]
push.v builtin.idParent
pushi.e -4
cmp.i.v NEQ
bf [58]

:[57]
push.v arg.argument4
conv.v.b
not.b
b [59]

:[58]
push.e 0

:[59]
bf [61]

:[60]
exit.i

:[61]
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
bt [65]

:[62]
dup.v 0
push.l 1
cmp.l.v EQ
bt [69]

:[63]
dup.v 0
push.l 2
cmp.l.v EQ
bt [70]

:[64]
b [74]

:[65]
push.v builtin.idParent
pushi.e -4
cmp.i.v NEQ
bf [67]

:[66]
b [68]

:[67]
push.v builtin.x
push.v builtin.width
sub.v.v
pop.v.v builtin.x

:[68]
b [74]

:[69]
b [74]

:[70]
push.v builtin.idParent
pushi.e -4
cmp.i.v NEQ
bf [72]

:[71]
b [73]

:[72]
push.v builtin.x
push.v builtin.halfWidth
sub.v.v
pop.v.v builtin.x

:[73]
b [74]

:[74]
popz.v
push.v builtin.alignY
dup.v 0
push.l 0
cmp.l.v EQ
bt [78]

:[75]
dup.v 0
push.l 1
cmp.l.v EQ
bt [79]

:[76]
dup.v 0
push.l 2
cmp.l.v EQ
bt [82]

:[77]
b [88]

:[78]
push.v builtin.y
push.v builtin.height
sub.v.v
pop.v.v builtin.y
b [88]

:[79]
push.v builtin.idParent
pushi.e -4
cmp.i.v NEQ
bf [81]

:[80]
push.v builtin.y
push.v builtin.idParent
pushi.e -9
push.v [stacktop]self.height
add.v.v
pop.v.v builtin.y

:[81]
b [88]

:[82]
push.v builtin.idParent
pushi.e -4
cmp.i.v NEQ
bf [84]

:[83]
push.v builtin.y
push.v builtin.height
sub.v.v
pop.v.v builtin.y
b [87]

:[84]
push.v builtin.idChild
pushi.e -4
cmp.i.v NEQ
bf [86]

:[85]
push.v builtin.y
push.v builtin.height
sub.v.v
pop.v.v builtin.y
push.v builtin.y
push.v builtin.height
push.v builtin.idChild
pushi.e -9
push.v [stacktop]self.height
add.v.v
pushi.e 2
conv.i.d
div.d.v
add.v.v
pop.v.v builtin.y
b [87]

:[86]
push.v builtin.y
push.v builtin.halfHeight
sub.v.v
pop.v.v builtin.y

:[87]
b [88]

:[88]
popz.v
pushbltn.v builtin.room_width
push.v builtin.width
sub.v.v
pushi.e 0
conv.i.v
push.v builtin.x
call.i clamp(argc=3)
pop.v.v builtin.x
push.v builtin.x
pop.v.v builtin.xTo
push.v builtin.x
pop.v.v builtin.xInit
pushi.e 0
pop.v.i local._clampY
push.v builtin.y
pushi.e 0
cmp.i.v LT
bf [90]

:[89]
push.v builtin.y
neg.v
pop.v.v local._clampY
b [92]

:[90]
push.v builtin.y
pushbltn.v builtin.room_height
push.v builtin.height
sub.v.v
cmp.v.v GT
bf [92]

:[91]
pushbltn.v builtin.room_height
push.v builtin.height
sub.v.v
push.v builtin.y
sub.v.v
pop.v.v local._clampY

:[92]
push.v builtin.y
pushloc.v local._clampY
add.v.v
pop.v.v builtin.y
push.v builtin.y
pop.v.v builtin.yTo
push.v builtin.y
pushi.e 4
add.i.v
pop.v.v builtin.yInit
push.v builtin.idParent
pushi.e -4
cmp.i.v NEQ
bf [94]

:[93]
push.v builtin.idParent
pushi.e -9
dup.i 4
push.v [stacktop]self.y
pushloc.v local._clampY
add.v.v
pop.i.v [stacktop]self.y
push.v builtin.idParent
pushi.e -9
dup.i 4
push.v [stacktop]self.yTo
pushloc.v local._clampY
add.v.v
pop.i.v [stacktop]self.yTo
push.v builtin.idParent
pushi.e -9
dup.i 4
push.v [stacktop]self.yInit
pushloc.v local._clampY
add.v.v
pop.i.v [stacktop]self.yInit

:[94]
push.v builtin.idChild
pushi.e -4
cmp.i.v NEQ
bf [99]

:[95]
push.v builtin.idChild
pushi.e -9
pushenv [97]

:[96]
pushi.e 1
conv.b.v
push.v arg.argument3
push.v arg.argument2
push.v other.y
push.v other.x
call.i @@This@@(argc=0)
push.v builtin.reposition
callv.v 5
popz.v
b [98]

:[97]
popenv [96]
b [99]

:[98]
popenv <drop>

:[99]
exit.i

:[100]
push.i [function]gml_Script_anon@2364@gml_Object_oTooltip_Create_0
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
pop.v.v builtin.reposition
pushbltn.v builtin.undefined
pop.v.v builtin.textTitle
pushbltn.v builtin.undefined
pop.v.v builtin.textBody
b [112]

> gml_Script_anon@4281@gml_Object_oTooltip_Create_0 (locals=0, argc=2)
:[101]
pushbltn.v builtin.argument0
pushbltn.v builtin.undefined
cmp.v.v EQ
bf [103]

:[102]
push.v builtin.title
pop.v.v builtin.argument0

:[103]
pushbltn.v builtin.argument1
pushbltn.v builtin.undefined
cmp.v.v EQ
bf [105]

:[104]
push.v builtin.body
pop.v.v builtin.argument1

:[105]
push.v arg.argument0
pushi.e -1
cmp.i.v NEQ
bf [109]

:[106]
push.v builtin.textTitle
call.i gml_Script_scribble_is_text_element(argc=1)
conv.v.b
bf [108]

:[107]
push.v builtin.textTitle
dup.v 0 8
dup.v 0
push.v stacktop.flush
callv.v 0
popz.v

:[108]
push.v builtin.id
push.s "{0}title"@11424
conv.s.v
call.i @@string@@(argc=2)
push.v arg.argument0
push.s "[yellow1]{0}[/c]"@10239
conv.s.v
call.i @@string@@(argc=2)
call.i gml_Script_scribble(argc=2)
dup.v 0
pushi.e -9
push.v [stacktop]self.padding
push.v builtin.titlePaddingBottom
pushglb.v global.zoom
mul.v.v
push.v builtin.paddingX
pushglb.v global.zoom
mul.v.v
pushi.e 0
conv.i.v
push.v builtin.paddingX
pushglb.v global.zoom
mul.v.v
dup.e 2 32
callv.v 4
dup.v 0
pushi.e -9
push.v [stacktop]self.wrap
push.v builtin.maxWidth
push.v builtin.imgW
sub.v.v
push.v builtin.imgSpacing
sub.v.v
push.v builtin.paddingX
sub.v.v
pushglb.v global.zoom
mul.v.v
dup.e 2 8
callv.v 1
pop.v.v builtin.textTitle

:[109]
push.v builtin.textBody
call.i gml_Script_scribble_is_text_element(argc=1)
conv.v.b
bf [111]

:[110]
push.v builtin.textBody
dup.v 0 8
dup.v 0
push.v stacktop.flush
callv.v 0
popz.v

:[111]
push.v builtin.id
push.s "{0}tooltip"@11425
conv.s.v
call.i @@string@@(argc=2)
push.v arg.argument1
call.i gml_Script_scribble(argc=2)
dup.v 0
pushi.e -9
push.v [stacktop]self.padding
pushi.e 0
conv.i.v
push.v builtin.paddingX
pushglb.v global.zoom
mul.v.v
pushi.e 0
conv.i.v
push.v builtin.paddingX
pushglb.v global.zoom
mul.v.v
dup.e 2 32
callv.v 4
dup.v 0
pushi.e -9
push.v [stacktop]self.wrap
push.v builtin.maxWidth
pushglb.v global.zoom
mul.v.v
dup.e 2 8
callv.v 1
pop.v.v builtin.textBody
call.i @@This@@(argc=0)
push.v builtin.calculate_size
callv.v 0
popz.v
call.i @@This@@(argc=0)
push.v builtin.reposition
callv.v 0
popz.v
exit.i

:[112]
push.i [function]gml_Script_anon@4281@gml_Object_oTooltip_Create_0
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
pop.v.v builtin.updateTxt
push.v builtin.body
push.v builtin.title
call.i @@This@@(argc=0)
push.v builtin.updateTxt
callv.v 2
popz.v
push.v builtin.isDialbox
conv.v.b
bf [114]

:[113]
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
push.v builtin.typist
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
pushi.e 10
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

:[114]
push.v builtin.idParent
pushi.e -4
cmp.i.v NEQ
bf [end]

:[115]
push.v builtin.idParent
pushi.e -9
pushenv [117]

:[116]
call.i @@This@@(argc=0)
push.v builtin.reposition
callv.v 0
popz.v

:[117]
popenv [116]

:[end]