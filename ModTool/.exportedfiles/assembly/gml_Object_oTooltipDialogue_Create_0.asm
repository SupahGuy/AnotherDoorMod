; WARNING: Missing code locals, possibly due to unsupported bytecode version or a brand new code entry.

:[0]
pushbltn.v builtin.undefined
pop.v.v builtin.clipMaskSurface
push.l 3
conv.l.v
push.v builtin.clipMaskSurface
call.i gml_Script_add_to_clean_up(argc=2)
popz.v
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
push.v builtin.id
push.i [function]gml_Script_WiggleEffect
conv.i.v
call.i @@NewGMLObject@@(argc=2)
pop.v.v builtin.wiggle
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
pop.v.i builtin.paddingY
pushref.i 16777257
pop.v.v builtin.bgDialogueSprite
pushi.e 113
pop.v.i builtin.maxWidth
push.v builtin.body
pop.v.v local._toto
pushglb.v global.fontOpenEnded
pushi.e 1
conv.b.v
push.s "\n"@4028
conv.s.v
push.v builtin.maxWidth
pushglb.v global.zoom
mul.v.v
pushloc.v local._toto
call.i gml_Script_string_wordwrap_width(argc=5)
pop.v.v builtin.body
push.v builtin.paddingX
pushi.e 2
mul.i.v
push.v builtin.body
call.i string_width(argc=1)
pushglb.v global.fontScaleOpenEnded
mul.v.v
pushglb.v global.zoom
div.v.v
add.v.v
call.i round(argc=1)
pop.v.v builtin.width
push.v builtin.width
pushi.e 25
conv.i.v
call.i max(argc=2)
pop.v.v builtin.width
push.v builtin.width
pushi.e 2
conv.i.d
div.d.v
call.i round(argc=1)
pop.v.v builtin.halfWidth
push.v builtin.paddingY
pushi.e 2
mul.i.v
push.v builtin.body
call.i string_height(argc=1)
pushglb.v global.fontScaleOpenEnded
mul.v.v
pushglb.v global.zoom
div.v.v
add.v.v
call.i round(argc=1)
pop.v.v builtin.height
push.v builtin.height
pushi.e 2
conv.i.d
div.d.v
call.i round(argc=1)
pop.v.v builtin.halfHeight
push.v builtin.x
pop.v.v builtin.xOrigin
push.v builtin.y
pop.v.v builtin.yOrigin
push.v builtin.y
push.v builtin.height
sub.v.v
pop.v.v builtin.y
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
pushi.e 4
add.i.v
pop.v.v builtin.yInit
push.v builtin.body
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
pushi.e 2
conv.i.v
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

:[end]