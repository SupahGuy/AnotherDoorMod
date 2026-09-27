:[0]
push.s "spritePaneTop"@10557
conv.s.v
push.v builtin.id
call.i variable_instance_exists(argc=2)
conv.v.b
not.b
bf [2]

:[1]
pushref.i 16777771
pop.v.v builtin.spritePaneTop

:[2]
push.s "spritePaneBottom"@10558
conv.s.v
push.v builtin.id
call.i variable_instance_exists(argc=2)
conv.v.b
not.b
bf [4]

:[3]
pushref.i 16777768
pop.v.v builtin.spritePaneBottom

:[4]
push.s "slotNumber"@10555
conv.s.v
push.v builtin.id
call.i variable_instance_exists(argc=2)
conv.v.b
not.b
bf [6]

:[5]
pushi.e 1
pop.v.i builtin.slotNumber

:[6]
push.s "itemsList"@10556
conv.s.v
push.v builtin.id
call.i variable_instance_exists(argc=2)
conv.v.b
not.b
bf [8]

:[7]
call.i @@NewGMLArray@@(argc=0)
pop.v.v builtin.itemsList

:[8]
push.s "nbrItemsVisible"@11263
conv.s.v
push.v builtin.id
call.i variable_instance_exists(argc=2)
conv.v.b
not.b
bf [10]

:[9]
pushi.e 2
pop.v.i builtin.nbrItemsVisible

:[10]
push.s "spriteBg"@11264
conv.s.v
push.v builtin.id
call.i variable_instance_exists(argc=2)
conv.v.b
not.b
bf [12]

:[11]
pushbltn.v builtin.undefined
pop.v.v builtin.spriteBg

:[12]
push.v builtin.spritePaneTop
call.i sprite_get_height(argc=1)
push.v builtin.spritePaneBottom
call.i sprite_get_height(argc=1)
add.v.v
pop.v.v builtin.slotHeight
push.v builtin.spritePaneTop
call.i sprite_get_width(argc=1)
pop.v.v builtin.slotWidth
pushi.e 0
pop.v.i builtin.paneTopY
push.v builtin.paneTopY
pop.v.v builtin.paneTopYTo
push.v builtin.paneTopYTo
pop.v.v builtin.paneTopYInit
push.v builtin.slotHeight
pushi.e 2
conv.i.d
div.d.v
pushglb.v global.zoom
mul.v.v
pop.v.v builtin.paneBottomY
push.v builtin.paneBottomY
pop.v.v builtin.paneBottomYTo
push.v builtin.paneBottomY
pop.v.v builtin.paneBottomYInit
push.v builtin.slotHeight
push.v builtin.nbrItemsVisible
div.v.v
pop.v.v builtin.heightItem
push.v builtin.heightItem
neg.v
pop.v.v builtin.yItemDrawMin
push.v builtin.slotHeight
pop.v.v builtin.yItemDrawMax
push.v builtin.itemsList
call.i array_length(argc=1)
push.v builtin.heightItem
mul.v.v
pop.v.v builtin.yModuloMax
pushi.e 0
pop.v.i builtin.bearingOffset
pushi.e 0
pop.v.b builtin.shouldBearingsStop
pushi.e 0
pop.v.b builtin.canBearingsStop
push.v builtin.itemsList
call.i array_length(argc=1)
push.v builtin.heightItem
mul.v.v
push.v builtin.slotNumber
pushi.e 1
add.i.v
mul.v.v
pop.v.v builtin.bearingStopTurnMax
pushi.e 0
pop.v.i builtin.bearingStopTurnCounter
pushi.e 0
pop.v.i builtin.bearingStopNbr
push.v builtin.slotHeight
push.v builtin.heightItem
sub.v.v
pushi.e 2
conv.i.d
div.d.v
push.v builtin.nbrItemsVisible
mul.v.v
push.v builtin.heightItem
pushi.e 2
conv.i.d
div.d.v
sub.v.v
pop.v.v builtin.bearingStopY
pushi.e 6
pop.v.i builtin.bearingSpeed
pushbltn.v builtin.undefined
pop.v.v builtin.bearingCallback
b [16]

> gml_Script_anon@1526@gml_Object_oSlotMachineBox_Create_0 (locals=0, argc=2)
:[13]
pushbltn.v builtin.argument1
pushbltn.v builtin.undefined
cmp.v.v EQ
bf [15]

:[14]
pushbltn.v builtin.undefined
pop.v.v builtin.argument1

:[15]
pushi.e 0
pop.v.b builtin.canBearingsStop
pushi.e 0
pop.v.i builtin.bearingStopTurnCounter
pushi.e 1
pop.v.b builtin.shouldBearingsStop
push.v arg.argument0
pop.v.v builtin.bearingStopNbr
push.v arg.argument1
pop.v.v builtin.bearingCallback
exit.i

:[16]
push.i [function]gml_Script_anon@1526@gml_Object_oSlotMachineBox_Create_0
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
pop.v.v builtin.stop_on_item_nbr
b [18]

> gml_Script_anon@1809@gml_Object_oSlotMachineBox_Create_0 (locals=0, argc=0)
:[17]
push.l 1
pop.v.l builtin.stateNext
exit.i

:[18]
push.i [function]gml_Script_anon@1809@gml_Object_oSlotMachineBox_Create_0
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
pop.v.v builtin.closePane
b [20]

> gml_Script_anon@1886@gml_Object_oSlotMachineBox_Create_0 (locals=0, argc=0)
:[19]
push.l 0
pop.v.l builtin.stateNext
exit.i

:[20]
push.i [function]gml_Script_anon@1886@gml_Object_oSlotMachineBox_Create_0
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
pop.v.v builtin.openPane
pushbltn.v builtin.undefined
pop.v.v builtin.openPaneCallback
pushi.e 0
pop.v.b builtin.openPaneCallbackPlayed
push.d 0.125
push.v builtin.slotNumber
mul.v.d
pop.v.v builtin.timerDelayDefault
push.s "bounce-ease-out"@11294
conv.s.v
pushi.e 1
conv.i.v
push.v builtin.timerDelayDefault
push.d 0.3
conv.d.v
push.v builtin.id
push.i [function]gml_Script_myTimer
conv.i.v
call.i @@NewGMLObject@@(argc=6)
pop.v.v builtin.timerClosePane
push.s "ease-in"@9546
conv.s.v
pushi.e 1
conv.i.v
push.v builtin.timerDelayDefault
push.d 0.25
conv.d.v
push.v builtin.id
push.i [function]gml_Script_myTimer
conv.i.v
call.i @@NewGMLObject@@(argc=6)
pop.v.v builtin.timerOpenPane
pushi.e -1
pop.v.i builtin.clipMaskSurface
pushi.e 1
pop.v.b builtin.canVfxSmoke
pushglb.v global.particlesSys
call.i part_emitter_create(argc=1)
pop.v.v builtin.pePane
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
push.v builtin.y
push.v builtin.slotHeight
pushi.e 2
conv.i.d
div.d.v
add.v.v
pushi.e 2
add.i.v
push.v builtin.y
push.v builtin.slotHeight
pushi.e 2
conv.i.d
div.d.v
add.v.v
pushi.e 2
sub.i.v
push.v builtin.x
push.v builtin.slotWidth
add.v.v
push.v builtin.x
push.v builtin.pePane
pushglb.v global.particlesSys
call.i part_emitter_region(argc=8)
popz.v
pushglb.v global.particlesSys
call.i part_emitter_create(argc=1)
pop.v.v builtin.pePaneSmoke
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
push.v builtin.y
push.v builtin.slotHeight
pushi.e 2
conv.i.d
div.d.v
add.v.v
pushi.e 8
add.i.v
push.v builtin.y
push.v builtin.slotHeight
pushi.e 2
conv.i.d
div.d.v
add.v.v
pushi.e 8
sub.i.v
push.v builtin.x
push.v builtin.slotWidth
add.v.v
push.v builtin.x
push.v builtin.pePaneSmoke
pushglb.v global.particlesSys
call.i part_emitter_region(argc=8)
popz.v
pushi.e 0
pop.v.b builtin.checkForShock
push.l 1
pop.v.l builtin.stateBearings
push.l 1
pop.v.l builtin.stateBearingsNext
push.l 1
pop.v.l builtin.stateBearingsPrev
push.l 1
pop.v.l builtin.state
push.l 1
pop.v.l builtin.stateNext
push.l 1
pop.v.l builtin.statePrev

:[end]