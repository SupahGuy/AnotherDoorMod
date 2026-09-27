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
push.s "owner"@8981
conv.s.v
push.v builtin.id
call.i variable_instance_exists(argc=2)
conv.v.b
not.b
bf [4]

:[3]
pushbltn.v builtin.undefined
pop.v.v builtin.owner

:[4]
pushi.e 1
pop.v.i builtin.offsetMaskX
pushi.e 1
pop.v.i builtin.offsetMaskY
pushi.e 7
pop.v.i builtin.theSpeedMax
push.d 0.7
pop.v.d builtin.theSpeedDecOrigin
push.v builtin.theSpeedDecOrigin
pop.v.v builtin.theSpeedDec
pushi.e 7
pop.v.i builtin.theSpeed
pushi.e 0
pop.v.i builtin.xVel
pushi.e 0
pop.v.i builtin.yVel
push.v builtin.x
pop.v.v builtin.prevX
push.v builtin.y
pop.v.v builtin.prevY
pushi.e 0
pop.v.b builtin.hasMovedThisStep
pushglb.v global.depthManager
push.s "cursor"@4987
conv.s.v
dup.v 1 8
dup.v 0
push.v stacktop.get_depth
callv.v 1
pop.v.v builtin.depth
push.v builtin.number
pushi.e 1
add.i.v
push.s "txtCursor{0}"@8991
conv.s.v
call.i @@string@@(argc=2)
push.v builtin.number
pushi.e 1
add.i.v
push.v builtin.number
push.s "[p{0}]player._p[/c]#{1}"@8992
conv.s.v
call.i @@string@@(argc=3)
call.i gml_Script_scribble(argc=2)
dup.v 0
pushi.e -9
push.v [stacktop]self.align
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
dup.e 2 16
callv.v 2
pop.v.v builtin.txtPlayer
b [6]

> gml_Script_anon@642@gml_Object_oCursor_Create_0 (locals=0, argc=0)
:[5]
push.v builtin.number
pushi.e 1
add.i.v
push.s "txtCursor{0}"@8991
conv.s.v
call.i @@string@@(argc=2)
push.v builtin.number
pushi.e 1
add.i.v
push.v builtin.number
push.s "[p{0}]player._p[/c]#{1}"@8992
conv.s.v
call.i @@string@@(argc=3)
call.i gml_Script_scribble(argc=2)
dup.v 0
pushi.e -9
push.v [stacktop]self.align
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
dup.e 2 16
callv.v 2
pop.v.v builtin.txtPlayer
exit.i

:[6]
push.i [function]gml_Script_anon@642@gml_Object_oCursor_Create_0
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
pop.v.v builtin.update_text
pushi.e 0
pop.v.b builtin.chatBoxCreatedThisStep
b [8]

> gml_Script_anon@902@gml_Object_oCursor_Create_0 (locals=0, argc=0)
:[7]
push.v builtin.number
pushi.e 90
mul.i.v
pop.v.v builtin.angleFunfair
push.v builtin.angleFunfair
pop.v.v builtin.angleFunfairNext
pushi.e 0
pop.v.i builtin.angleFunfairSound
pushi.e 1
pop.v.i builtin.alphaFunfair
exit.i

:[8]
push.i [function]gml_Script_anon@902@gml_Object_oCursor_Create_0
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
pop.v.v builtin.funfair_init
b [30]

> gml_Script_anon@1061@gml_Object_oCursor_Create_0 (locals=1, argc=0)
:[9]
push.v builtin.angleFunfairNext
pop.v.v local._modAngle
pushloc.v local._modAngle
call.i sign(argc=1)
pushi.e 1
cmp.i.v EQ
bf [11]

:[10]
pushloc.v local._modAngle
pushi.e 360
mod.i.v
pop.v.v local._modAngle
b [13]

:[11]
pushloc.v local._modAngle
call.i sign(argc=1)
pushi.e -1
cmp.i.v EQ
bf [13]

:[12]
pushi.e 360
pushloc.v local._modAngle
pushi.e 360
mod.i.v
call.i abs(argc=1)
sub.v.i
pop.v.v local._modAngle

:[13]
pushloc.v local._modAngle
pushi.e 45
cmp.i.v GT
bf [15]

:[14]
pushloc.v local._modAngle
pushi.e 135
cmp.i.v LTE
b [16]

:[15]
push.e 0

:[16]
bf [18]

:[17]
pushglb.v global.playersManager
push.l 3
conv.l.v
push.v builtin.number
dup.v 2 8
dup.v 0
push.v stacktop.apply_action
callv.v 2
popz.v
b [29]

:[18]
pushloc.v local._modAngle
pushi.e 135
cmp.i.v GT
bf [20]

:[19]
pushloc.v local._modAngle
pushi.e 225
cmp.i.v LTE
b [21]

:[20]
push.e 0

:[21]
bf [23]

:[22]
pushglb.v global.playersManager
push.l 4
conv.l.v
push.v builtin.number
dup.v 2 8
dup.v 0
push.v stacktop.apply_action
callv.v 2
popz.v
b [29]

:[23]
pushloc.v local._modAngle
pushi.e 225
cmp.i.v GT
bf [25]

:[24]
pushloc.v local._modAngle
pushi.e 315
cmp.i.v LTE
b [26]

:[25]
push.e 0

:[26]
bf [28]

:[27]
pushglb.v global.playersManager
push.l 6
conv.l.v
push.v builtin.number
dup.v 2 8
dup.v 0
push.v stacktop.apply_action
callv.v 2
popz.v
b [29]

:[28]
pushglb.v global.playersManager
push.l 5
conv.l.v
push.v builtin.number
dup.v 2 8
dup.v 0
push.v stacktop.apply_action
callv.v 2
popz.v

:[29]
exit.i

:[30]
push.i [function]gml_Script_anon@1061@gml_Object_oCursor_Create_0
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
pop.v.v builtin.funfair_define_action
push.v builtin.number
pushi.e 90
mul.i.v
pop.v.v builtin.angleFunfair
push.v builtin.angleFunfair
pop.v.v builtin.angleFunfairNext
pushi.e 0
pop.v.i builtin.angleFunfairSound
pushi.e 1
pop.v.i builtin.alphaFunfair
b [34]

> gml_Script_anon@1859@gml_Object_oCursor_Create_0 (locals=0, argc=1)
:[31]
pushglb.v global.networkingManager
pushi.e -9
push.v [stacktop]self.isNetworkGame
conv.v.b
bf [33]

:[32]
pushglb.v global.networkingManager
push.v arg.argument0
push.v builtin.number
dup.v 2 8
dup.v 0
push.v stacktop.funfair_send_angle
callv.v 2
popz.v

:[33]
push.v arg.argument0
call.i @@This@@(argc=0)
push.v builtin.funfair_apply_angle
callv.v 1
popz.v
exit.i

:[34]
push.i [function]gml_Script_anon@1859@gml_Object_oCursor_Create_0
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
pop.v.v builtin.funfair_send_angle
b [36]

> gml_Script_anon@2058@gml_Object_oCursor_Create_0 (locals=0, argc=1)
:[35]
push.v arg.argument0
pop.v.v builtin.angleFunfairNext
exit.i

:[36]
push.i [function]gml_Script_anon@2058@gml_Object_oCursor_Create_0
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
pop.v.v builtin.funfair_apply_angle
b [40]

> gml_Script_anon@2136@gml_Object_oCursor_Create_0 (locals=1, argc=0)
:[37]
push.v builtin.angleFunfair
push.v builtin.angleFunfairNext
call.i angle_difference(argc=2)
pop.v.v local._diff
push.v builtin.angleFunfair
pushloc.v local._diff
push.d 0.1
mul.d.v
add.v.v
pop.v.v builtin.angleFunfair
push.v builtin.angleFunfairSound
pushloc.v local._diff
push.d 0.1
mul.d.v
call.i abs(argc=1)
add.v.v
pop.v.v builtin.angleFunfairSound
push.v builtin.angleFunfair
pushi.e 360
mod.i.v
pushi.e 360
add.i.v
pushi.e 360
mod.i.v
pop.v.v builtin.angleFunfair
push.v builtin.angleFunfairSound
pushi.e 15
cmp.i.v GTE
bf [39]

:[38]
push.d 1.1
conv.d.v
push.d 0.9
conv.d.v
call.i random_range(argc=2)
pushbltn.v builtin.undefined
pushbltn.v builtin.undefined
pushi.e 0
conv.b.v
pushi.e 10
conv.i.v
pushref.i 33554471
pushref.i 33554470
pushref.i 33554469
pushref.i 33554468
call.i choose(argc=4)
call.i audio_play_sound(argc=6)
popz.v
pushi.e 0
pop.v.i builtin.angleFunfairSound

:[39]
exit.i

:[40]
push.i [function]gml_Script_anon@2136@gml_Object_oCursor_Create_0
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
pop.v.v builtin.funfair_move_arrow
b [46]

> gml_Script_anon@2694@gml_Object_oCursor_Create_0 (locals=1, argc=0)
:[41]
push.v builtin.angleFunfair
push.v builtin.angleFunfairNext
call.i angle_difference(argc=2)
pop.v.v local._diff
pushloc.v local._diff
call.i abs(argc=1)
push.d 0.1
cmp.d.v LT
bf [44]

:[42]
pushi.e 1
conv.b.v
ret.v

:[43]
b [45]

:[44]
pushi.e 0
conv.b.v
ret.v

:[45]
exit.i

:[46]
push.i [function]gml_Script_anon@2694@gml_Object_oCursor_Create_0
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
pop.v.v builtin.funfair_movement_finished
pushbltn.v builtin.undefined
pop.v.v builtin.statePrev
push.l 0
pop.v.l builtin.state
push.v builtin.state
pop.v.v builtin.stateNext
b [80]

> gml_Script_anon@3243@gml_Object_oCursor_Create_0 (locals=6, argc=0)
:[47]
push.v builtin.number
call.i gml_Script_InputPlayerGetGhost(argc=1)
conv.v.b
bf [49]

:[48]
exit.i

:[49]
pushglb.v global.__ElementController
pushi.e -9
push.v builtin.number
conv.v.i
push.v [array]self.element_in_hover
pushbltn.v builtin.undefined
cmp.v.v NEQ
bf [54]

:[50]
pushglb.v global.__ElementController
pushi.e -9
push.v builtin.number
conv.v.i
push.v [array]self.element_in_hover
call.i instance_exists(argc=1)
conv.v.b
not.b
bf [52]

:[51]
pushbltn.v builtin.undefined
pushglb.v global.__ElementController
pushi.e -9
push.v builtin.number
conv.v.i
pop.v.v [array]self.element_in_hover
b [54]

:[52]
pushglb.v global.__ElementController
pushi.e -9
push.v builtin.number
conv.v.i
push.v [array]self.element_in_hover
dup.v 0 8
dup.v 0
push.v stacktop.is_disabled
callv.v 0
conv.v.b
bf [54]

:[53]
pushglb.v global.__ElementController
pushi.e -9
push.v builtin.number
conv.v.i
push.v [array]self.element_in_hover
push.v builtin.number
dup.v 1 8
dup.v 0
push.v stacktop.cursor_leave
callv.v 1
popz.v

:[54]
pushglb.v global.__ElementController
pushi.e -9
push.v builtin.number
conv.v.i
push.v [array]self.can_hover
conv.v.b
bf [79]

:[55]
pushref.i 35
push.v builtin.y
push.v builtin.offsetMaskY
add.v.v
push.v builtin.x
push.v builtin.offsetMaskX
add.v.v
call.i position_meeting(argc=3)
conv.v.b
bf [77]

:[56]
call.i ds_list_create(argc=0)
pop.v.v local._listOfInstances
pushi.e 0
conv.b.v
pushloc.v local._listOfInstances
pushref.i 35
push.v builtin.y
push.v builtin.offsetMaskY
add.v.v
push.v builtin.x
push.v builtin.offsetMaskX
add.v.v
call.i instance_position_list(argc=5)
popz.v
call.i @@NewGMLArray@@(argc=0)
pop.v.v local._arrayOfDepths
pushi.e 0
pop.v.i local._j

:[57]
pushloc.v local._j
pushloc.v local._listOfInstances
call.i ds_list_size(argc=1)
cmp.v.v LT
bf [61]

:[58]
pushloc.v local._j
pushloc.v local._listOfInstances
call.i ds_list_find_value(argc=2)
pushi.e -9
push.v [stacktop]self.depth
pushloc.v local._j
pushloc.v local._listOfInstances
call.i ds_list_find_value(argc=2)
b [60]

> gml_Script____struct___344@anon@3243@gml_Object_oCursor_Create_0 (locals=0, argc=0)
:[59]
call.i @@SetStatic@@(argc=0)
pushi.e -15
pushi.e 0
push.v [array]self.argument
pop.v.v self.id
pushi.e -15
pushi.e 1
push.v [array]self.argument
pop.v.v self.depth
exit.i

:[60]
push.i [function]gml_Script____struct___344@anon@3243@gml_Object_oCursor_Create_0
conv.i.v
call.i @@NullObject@@(argc=0)
call.i method(argc=2)
dup.v 0
pop.v.v global.___struct___344
call.i @@NewGMLObject@@(argc=3)
pop.v.v local._struct
pushloc.v local._struct
pushloc.v local._arrayOfDepths
call.i array_push(argc=2)
popz.v
push.v local._j
push.e 1
add.i.v
pop.v.v local._j
b [57]

:[61]
b [64]

> gml_Script_anon@4577@anon@3243@gml_Object_oCursor_Create_0 (locals=0, argc=2)
:[62]
push.v arg.argument0
pushi.e -9
push.v [stacktop]self.depth
push.v arg.argument1
pushi.e -9
push.v [stacktop]self.depth
sub.v.v
ret.v

:[63]
exit.i

:[64]
push.i [function]gml_Script_anon@4577@anon@3243@gml_Object_oCursor_Create_0
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
pushloc.v local._arrayOfDepths
call.i array_sort(argc=2)
popz.v
pushloc.v local._listOfInstances
call.i ds_list_destroy(argc=1)
popz.v
pushi.e 0
pop.v.i local._k

:[65]
pushloc.v local._k
pushloc.v local._arrayOfDepths
call.i array_length(argc=1)
cmp.v.v LT
bf [76]

:[66]
pushi.e -7
pushloc.v local._k
conv.v.i
push.v [array]self._arrayOfDepths
pushi.e -9
push.v [stacktop]self.id
pop.v.v local._inst
pushloc.v local._inst
push.v builtin.number
dup.v 1 8
dup.v 0
push.v stacktop.check_interaction_allowed_by
callv.v 1
conv.v.b
bf [68]

:[67]
pushloc.v local._inst
dup.v 0 8
dup.v 0
push.v stacktop.is_disabled
callv.v 0
conv.v.b
not.b
b [69]

:[68]
push.e 0

:[69]
bf [75]

:[70]
pushglb.v global.__ElementController
pushi.e -9
push.v builtin.number
conv.v.i
push.v [array]self.element_in_hover
pushloc.v local._inst
pushi.e -9
push.v [stacktop]self.id
cmp.v.v NEQ
bf [74]

:[71]
pushglb.v global.__ElementController
pushi.e -9
push.v builtin.number
conv.v.i
push.v [array]self.element_in_hover
pushbltn.v builtin.undefined
cmp.v.v NEQ
bf [73]

:[72]
pushglb.v global.__ElementController
pushi.e -9
push.v builtin.number
conv.v.i
push.v [array]self.element_in_hover
push.v builtin.number
dup.v 1 8
dup.v 0
push.v stacktop.cursor_leave
callv.v 1
popz.v

:[73]
pushi.e 0
conv.b.v
pushglb.v global.__ElementController
pushi.e -9
push.v builtin.number
conv.v.i
pop.v.v [array]self.can_hover
pushloc.v local._inst
push.v builtin.number
dup.v 1 8
dup.v 0
push.v stacktop.cursor_enter
callv.v 1
popz.v

:[74]
b [76]

:[75]
push.v local._k
push.e 1
add.i.v
pop.v.v local._k
b [65]

:[76]
b [79]

:[77]
pushglb.v global.__ElementController
pushi.e -9
push.v builtin.number
conv.v.i
push.v [array]self.element_in_hover
pushbltn.v builtin.undefined
cmp.v.v NEQ
bf [79]

:[78]
pushglb.v global.__ElementController
pushi.e -9
push.v builtin.number
conv.v.i
push.v [array]self.element_in_hover
push.v builtin.number
dup.v 1 8
dup.v 0
push.v stacktop.cursor_leave
callv.v 1
popz.v

:[79]
exit.i

:[80]
push.i [function]gml_Script_anon@3243@gml_Object_oCursor_Create_0
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
pop.v.v builtin.check_hover
push.l 0
pop.v.l builtin.cursorType
push.v builtin.number
pushi.e 1
add.i.v
push.s "sprCursor{0}"@9032
conv.s.v
call.i @@string@@(argc=2)
call.i asset_get_index(argc=1)
pop.v.v builtin.spriteCursor
push.v builtin.number
pushi.e 1
add.i.v
push.s "sprCursor{0}Click"@9034
conv.s.v
call.i @@string@@(argc=2)
call.i asset_get_index(argc=1)
pop.v.v builtin.spriteCursorClick
push.v builtin.number
pushi.e 1
add.i.v
push.s "sprCursorStamp{0}"@9036
conv.s.v
call.i @@string@@(argc=2)
call.i asset_get_index(argc=1)
pop.v.v builtin.spriteStamp
push.v builtin.number
pushi.e 1
add.i.v
push.s "sprCursorStamp{0}"@9036
conv.s.v
call.i @@string@@(argc=2)
call.i asset_get_index(argc=1)
pop.v.v builtin.spriteStampClick
push.s "sprCursorInvisible"@9039
conv.s.v
call.i asset_get_index(argc=1)
pop.v.v builtin.spriteInvisible
push.s "sprCursorInvisible"@9039
conv.s.v
call.i asset_get_index(argc=1)
pop.v.v builtin.spriteInvisibleClick
push.s "sprCursorDisabled"@9042
conv.s.v
call.i asset_get_index(argc=1)
pop.v.v builtin.spriteDisabled
push.s "sprCursorDisabledClick"@9044
conv.s.v
call.i asset_get_index(argc=1)
pop.v.v builtin.spriteDisabledClick
push.v builtin.number
pushi.e 1
add.i.v
push.s "sprCursorHand{0}"@9046
conv.s.v
call.i @@string@@(argc=2)
call.i asset_get_index(argc=1)
pop.v.v builtin.sprHand
push.v builtin.number
pushi.e 1
add.i.v
push.s "sprCursorHand{0}"@9046
conv.s.v
call.i @@string@@(argc=2)
call.i asset_get_index(argc=1)
pop.v.v builtin.sprHandClick
push.v builtin.spriteCursor
pop.v.v builtin.spriteDefault
push.v builtin.spriteCursorClick
pop.v.v builtin.spriteActive
push.v builtin.spriteDefault
pop.v.v builtin.sprite_index
b [88]

> gml_Script_anon@6538@gml_Object_oCursor_Create_0 (locals=2, argc=1)
:[81]
pushbltn.v builtin.argument0
pushbltn.v builtin.undefined
cmp.v.v EQ
bf [83]

:[82]
push.l 0
pop.v.l builtin.argument0

:[83]
push.v builtin.number
pushi.e 1
add.i.v
push.s "sprCursor{0}"@9032
conv.s.v
call.i @@string@@(argc=2)
call.i asset_get_index(argc=1)
pop.v.v builtin.spriteCursor
push.v builtin.number
pushi.e 1
add.i.v
push.s "sprCursor{0}Click"@9034
conv.s.v
call.i @@string@@(argc=2)
call.i asset_get_index(argc=1)
pop.v.v builtin.spriteCursorClick
push.v builtin.number
pushi.e 1
add.i.v
push.s "sprCursorStamp{0}"@9036
conv.s.v
call.i @@string@@(argc=2)
call.i asset_get_index(argc=1)
pop.v.v builtin.spriteStamp
push.v builtin.number
pushi.e 1
add.i.v
push.s "sprCursorStamp{0}"@9036
conv.s.v
call.i @@string@@(argc=2)
call.i asset_get_index(argc=1)
pop.v.v builtin.spriteStampClick
push.s "sprCursorInvisible"@9039
conv.s.v
call.i asset_get_index(argc=1)
pop.v.v builtin.spriteInvisible
push.s "sprCursorInvisible"@9039
conv.s.v
call.i asset_get_index(argc=1)
pop.v.v builtin.spriteInvisibleClick
push.s "sprCursorDisabled"@9042
conv.s.v
call.i asset_get_index(argc=1)
pop.v.v builtin.spriteDisabled
push.s "sprCursorDisabledClick"@9044
conv.s.v
call.i asset_get_index(argc=1)
pop.v.v builtin.spriteDisabledClick
push.v builtin.number
pushi.e 1
add.i.v
push.s "sprCursorHand{0}"@9046
conv.s.v
call.i @@string@@(argc=2)
call.i asset_get_index(argc=1)
pop.v.v builtin.sprHand
push.v builtin.number
pushi.e 1
add.i.v
push.s "sprCursorHand{0}"@9046
conv.s.v
call.i @@string@@(argc=2)
call.i asset_get_index(argc=1)
pop.v.v builtin.sprHandClick
pushi.e 1
pop.v.i builtin.image_alpha
push.v arg.argument0
pop.v.v builtin.cursorType
push.v builtin.spriteCursor
pop.v.v local._newSprite
push.v builtin.spriteCursorClick
pop.v.v local._newSpriteClick
push.v arg.argument0
push.l 0
cmp.l.v EQ
bf [85]

:[84]
push.v builtin.spriteCursor
pop.v.v local._newSprite
push.v builtin.spriteCursorClick
pop.v.v local._newSpriteClick
pushref.i 16777368
pop.v.v builtin.mask_index
b [87]

:[85]
push.v arg.argument0
push.l 1
cmp.l.v EQ
bf [87]

:[86]
push.v builtin.spriteStamp
pop.v.v local._newSprite
push.v builtin.spriteStampClick
pop.v.v local._newSpriteClick
pushref.i 16777369
pop.v.v builtin.mask_index

:[87]
pushloc.v local._newSprite
pop.v.v builtin.spriteDefault
pushloc.v local._newSpriteClick
pop.v.v builtin.spriteActive
push.v builtin.spriteDefault
pop.v.v builtin.sprite_index
exit.i

:[88]
push.i [function]gml_Script_anon@6538@gml_Object_oCursor_Create_0
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
pop.v.v builtin.set_sprite
call.i @@This@@(argc=0)
push.v builtin.set_sprite
callv.v 0
popz.v
pushglb.v global.color
pushi.e -9
push.v [stacktop]self.blue1
pop.v.v local._colorCursorShow
push.v builtin.number
dup.v 0
pushi.e 0
cmp.i.v EQ
bt [94]

:[89]
dup.v 0
pushi.e 1
cmp.i.v EQ
bt [95]

:[90]
dup.v 0
pushi.e 2
cmp.i.v EQ
bt [96]

:[91]
dup.v 0
pushi.e 3
cmp.i.v EQ
bt [97]

:[92]
b [98]

:[93]
b [99]

:[94]
pushglb.v global.color
pushi.e -9
push.v [stacktop]self.blue1
pop.v.v local._colorCursorShow
b [99]

:[95]
pushglb.v global.color
pushi.e -9
push.v [stacktop]self.orange1
pop.v.v local._colorCursorShow
b [99]

:[96]
pushglb.v global.color
pushi.e -9
push.v [stacktop]self.green1
pop.v.v local._colorCursorShow
b [99]

:[97]
pushglb.v global.color
pushi.e -9
push.v [stacktop]self.purple1
pop.v.v local._colorCursorShow
b [99]

:[98]
pushglb.v global.color
pushi.e -9
push.v [stacktop]self.blue1
pop.v.v local._colorCursorShow
b [99]

:[99]
popz.v
pushloc.v local._colorCursorShow
call.i gml_Script_hex_to_vec3(argc=1)
pop.v.v builtin.outlineColorValue
pushi.e 0
conv.i.v
push.v builtin.sprite_index
call.i sprite_get_texture(argc=2)
pop.v.v builtin.textureSpr
push.v builtin.textureSpr
call.i texture_get_texel_width(argc=1)
pop.v.v builtin.textureW
push.v builtin.textureSpr
call.i texture_get_texel_height(argc=1)
pop.v.v builtin.textureH
push.s "u_pixel_w"@9060
conv.s.v
pushref.i 134217750
call.i shader_get_uniform(argc=2)
pop.v.v builtin.pixelW
push.s "u_pixel_h"@9062
conv.s.v
pushref.i 134217750
call.i shader_get_uniform(argc=2)
pop.v.v builtin.pixelH
push.s "u_outline_color"@9064
conv.s.v
pushref.i 134217750
call.i shader_get_uniform(argc=2)
pop.v.v builtin.outlineColor
pushi.e 0
pop.v.b builtin.isCursorVisible
b [111]

> gml_Script_anon@8639@gml_Object_oCursor_Create_0 (locals=0, argc=3)
:[100]
pushbltn.v builtin.argument1
pushbltn.v builtin.undefined
cmp.v.v EQ
bf [102]

:[101]
pushi.e -1
pop.v.i builtin.argument1

:[102]
pushbltn.v builtin.argument2
pushbltn.v builtin.undefined
cmp.v.v EQ
bf [104]

:[103]
pushi.e 0
pop.v.b builtin.argument2

:[104]
push.v arg.argument0
pop.v.v builtin.isCursorVisible
pushref.i 65
pushi.e -9
push.v [stacktop]self.btnCursor
call.i instance_exists(argc=1)
conv.v.b
bf [108]

:[105]
push.v builtin.isCursorVisible
conv.v.b
bf [107]

:[106]
pushref.i 65
pushi.e -9
push.v [stacktop]self.btnCursor
pushi.e -9
pushi.e 0
push.v [array]self.tooltip
push.s "global._topCursorHide"@9067
conv.s.v
pushbltn.v builtin.undefined
dup.v 2 8
dup.v 0
push.v stacktop.updateTxt
callv.v 2
popz.v
b [108]

:[107]
pushref.i 65
pushi.e -9
push.v [stacktop]self.btnCursor
pushi.e -9
pushi.e 0
push.v [array]self.tooltip
push.s "global._topCursorShow"@9068
conv.s.v
pushbltn.v builtin.undefined
dup.v 2 8
dup.v 0
push.v stacktop.updateTxt
callv.v 2
popz.v

:[108]
push.v arg.argument2
conv.v.b
bf [110]

:[109]
pushglb.v global.networkingManager
push.l 2
conv.l.v
push.v builtin.y
push.v builtin.x
push.v builtin.number
dup.v 4 8
dup.v 0
push.v stacktop.mouse_coordinate
callv.v 4
popz.v
pushglb.v global.networkingManager
push.v arg.argument1
push.v arg.argument0
dup.v 2 8
dup.v 0
push.v stacktop.show_cursor
callv.v 2
popz.v

:[110]
exit.i

:[111]
push.i [function]gml_Script_anon@8639@gml_Object_oCursor_Create_0
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
pop.v.v builtin.show_cursor
pushi.e 1
pop.v.b builtin.isCursorVisibilityForced
b [113]

> gml_Script_anon@9206@gml_Object_oCursor_Create_0 (locals=0, argc=1)
:[112]
push.v arg.argument0
pop.v.v builtin.isCursorVisibilityForced
exit.i

:[113]
push.i [function]gml_Script_anon@9206@gml_Object_oCursor_Create_0
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
pop.v.v builtin.set_cursor_visibility_forced
call.i @@NewGMLArray@@(argc=0)
pop.v.v builtin.verbsToSet
b [119]

> gml_Script_anon@9493@gml_Object_oCursor_Create_0 (locals=0, argc=3)
:[114]
pushbltn.v builtin.argument1
pushbltn.v builtin.undefined
cmp.v.v EQ
bf [116]

:[115]
pushi.e 1
pop.v.i builtin.argument1

:[116]
push.v arg.argument2
push.v arg.argument1
push.v arg.argument0
b [118]

> gml_Script____struct___345@anon@9493@gml_Object_oCursor_Create_0 (locals=0, argc=0)
:[117]
call.i @@SetStatic@@(argc=0)
pushi.e -15
pushi.e 0
push.v [array]self.argument
pop.v.v self.verb
pushi.e -15
pushi.e 1
push.v [array]self.argument
pop.v.v self.value
pushi.e -15
pushi.e 2
push.v [array]self.argument
pop.v.v self.type
exit.i

:[118]
push.i [function]gml_Script____struct___345@anon@9493@gml_Object_oCursor_Create_0
conv.i.v
call.i @@NullObject@@(argc=0)
call.i method(argc=2)
dup.v 0
pop.v.v global.___struct___345
call.i @@NewGMLObject@@(argc=4)
push.v builtin.verbsToSet
call.i array_push(argc=2)
popz.v
exit.i

:[119]
push.i [function]gml_Script_anon@9493@gml_Object_oCursor_Create_0
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
pop.v.v builtin.set_verbs
call.i @@NewGMLArray@@(argc=0)
pop.v.v builtin.verbActive
b [123]

> gml_Script_anon@9646@gml_Object_oCursor_Create_0 (locals=0, argc=3)
:[120]
push.v arg.argument2
push.v arg.argument1
push.v arg.argument0
b [122]

> gml_Script____struct___346@anon@9646@gml_Object_oCursor_Create_0 (locals=0, argc=0)
:[121]
call.i @@SetStatic@@(argc=0)
pushi.e -15
pushi.e 0
push.v [array]self.argument
pop.v.v self.verb
pushi.e -15
pushi.e 1
push.v [array]self.argument
pop.v.v self.value
pushi.e -15
pushi.e 2
push.v [array]self.argument
pop.v.v self.type
exit.i

:[122]
push.i [function]gml_Script____struct___346@anon@9646@gml_Object_oCursor_Create_0
conv.i.v
call.i @@NullObject@@(argc=0)
call.i method(argc=2)
dup.v 0
pop.v.v global.___struct___346
call.i @@NewGMLObject@@(argc=4)
push.v builtin.verbActive
call.i array_push(argc=2)
popz.v
exit.i

:[123]
push.i [function]gml_Script_anon@9646@gml_Object_oCursor_Create_0
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
pop.v.v builtin.add_verb_active
b [144]

> gml_Script_anon@10022@gml_Object_oCursor_Create_0 (locals=1, argc=2)
:[124]
push.v builtin.number
call.i gml_Script_InputPlayerGetGhost(argc=1)
conv.v.b
not.b
bf [134]

:[125]
push.v arg.argument1
push.l 1
cmp.l.v EQ
bf [128]

:[126]
push.v builtin.number
push.v arg.argument0
call.i gml_Script_InputPressed(argc=2)
ret.v

:[127]
b [133]

:[128]
push.v arg.argument1
push.l 0
cmp.l.v EQ
bf [131]

:[129]
push.v builtin.number
push.v arg.argument0
call.i gml_Script_InputReleased(argc=2)
ret.v

:[130]
b [133]

:[131]
push.v arg.argument1
push.l 2
cmp.l.v EQ
bf [133]

:[132]
push.v builtin.number
push.v arg.argument0
call.i gml_Script_InputCheck(argc=2)
ret.v

:[133]
b [142]

:[134]
pushi.e 0
pop.v.i local._i

:[135]
pushloc.v local._i
push.v builtin.verbActive
call.i array_length(argc=1)
cmp.v.v LT
bf [142]

:[136]
pushi.e -1
pushloc.v local._i
conv.v.i
push.v [array]self.verbActive
pushi.e -9
push.v [stacktop]self.verb
push.v arg.argument0
cmp.v.v EQ
bf [138]

:[137]
pushi.e -1
pushloc.v local._i
conv.v.i
push.v [array]self.verbActive
pushi.e -9
push.v [stacktop]self.type
push.v arg.argument1
cmp.v.v EQ
b [139]

:[138]
push.e 0

:[139]
bf [141]

:[140]
pushi.e 1
conv.b.v
ret.v

:[141]
push.v local._i
push.e 1
add.i.v
pop.v.v local._i
b [135]

:[142]
pushi.e 0
conv.b.v
ret.v

:[143]
exit.i

:[144]
push.i [function]gml_Script_anon@10022@gml_Object_oCursor_Create_0
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
pop.v.v builtin.is_verb_active
push.d 0.05
conv.d.v
push.v builtin.id
push.i [function]gml_Script_myTimer
conv.i.v
call.i @@NewGMLObject@@(argc=3)
pop.v.v builtin.buttonTimer
push.v builtin.buttonTimer
dup.v 0 8
dup.v 0
push.v stacktop.run
callv.v 0
popz.v
pushi.e 50
pop.v.i builtin.networkSendInterval
pushi.e 0
pop.v.i builtin.lastNetworkSend
push.v builtin.x
pop.v.v builtin.networkTargetX
push.v builtin.y
pop.v.v builtin.networkTargetY

:[end]