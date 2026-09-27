; WARNING: Missing code locals, possibly due to unsupported bytecode version or a brand new code entry.

:[0]
push.v builtin.state
push.l 0
cmp.l.v EQ
bf [17]

:[1]
push.v builtin.statePrev
push.v builtin.state
cmp.v.v NEQ
bf [3]

:[2]
push.v builtin.slotHeight
neg.v
pushi.e 2
conv.i.d
div.d.v
pushglb.v global.zoom
mul.v.v
pop.v.v builtin.paneTopYTo
push.v builtin.paneTopY
pop.v.v builtin.paneTopYInit
push.v builtin.slotHeight
pushglb.v global.zoom
mul.v.v
pop.v.v builtin.paneBottomYTo
push.v builtin.paneBottomY
pop.v.v builtin.paneBottomYInit
push.v builtin.timerOpenPane
dup.v 0 8
dup.v 0
push.v stacktop.reset
callv.v 0
popz.v
push.v builtin.timerOpenPane
dup.v 0 8
dup.v 0
push.v stacktop.run
callv.v 0
popz.v
pushi.e 1
pop.v.b builtin.canVfxSmoke
pushi.e 1
pop.v.b builtin.openPaneCallbackPlayed

:[3]
push.v builtin.canVfxSmoke
conv.v.b
bf [5]

:[4]
push.v builtin.timerOpenPane
dup.v 0 8
dup.v 0
push.v stacktop.is_delay_running
callv.v 0
conv.v.b
not.b
b [6]

:[5]
push.e 0

:[6]
bf [8]

:[7]
pushi.e 0
pop.v.b builtin.canVfxSmoke
pushi.e 3
conv.i.v
pushi.e 0
conv.i.v
call.i irandom_range(argc=2)
pushglb.v global.particles
pushi.e -9
push.v [stacktop]self.ptSmokeBottom
push.v builtin.pePaneSmoke
pushglb.v global.particlesSys
call.i part_emitter_burst(argc=4)
popz.v
pushi.e 3
conv.i.v
pushi.e 0
conv.i.v
call.i irandom_range(argc=2)
pushglb.v global.particles
pushi.e -9
push.v [stacktop]self.ptSmokeTop
push.v builtin.pePaneSmoke
pushglb.v global.particlesSys
call.i part_emitter_burst(argc=4)
popz.v

:[8]
push.v builtin.timerOpenPane
dup.v 0 8
dup.v 0
push.v stacktop.is_running
callv.v 0
conv.v.b
bf [10]

:[9]
push.v builtin.timerOpenPane
dup.v 0 8
dup.v 0
push.v stacktop.get_cur_length_normalize
callv.v 0
pop.v.v local._norm
push.v builtin.paneTopYTo
push.v builtin.paneTopYInit
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
pushloc.v local._norm
call.i gml_Script_map_value(argc=5)
pop.v.v builtin.paneTopY
push.v builtin.paneBottomYTo
push.v builtin.paneBottomYInit
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
pushloc.v local._norm
call.i gml_Script_map_value(argc=5)
pop.v.v builtin.paneBottomY
b [16]

:[10]
push.v builtin.timerOpenPane
dup.v 0 8
dup.v 0
push.v stacktop.is_finished
callv.v 0
conv.v.b
bf [16]

:[11]
push.v builtin.paneTopYTo
pop.v.v builtin.paneTopY
push.v builtin.paneBottomYTo
pop.v.v builtin.paneBottomY
push.v builtin.openPaneCallback
pushbltn.v builtin.undefined
cmp.v.v NEQ
bf [13]

:[12]
push.v builtin.openPaneCallbackPlayed
conv.v.b
b [14]

:[13]
push.e 0

:[14]
bf [16]

:[15]
call.i @@This@@(argc=0)
push.v builtin.openPaneCallback
callv.v 0
popz.v
pushi.e 0
pop.v.b builtin.openPaneCallbackPlayed

:[16]
b [29]

:[17]
push.v builtin.state
push.l 1
cmp.l.v EQ
bf [29]

:[18]
push.v builtin.statePrev
push.v builtin.state
cmp.v.v NEQ
bf [20]

:[19]
pushi.e 0
pop.v.i builtin.paneTopYTo
push.v builtin.paneTopY
pop.v.v builtin.paneTopYInit
push.v builtin.slotHeight
pushi.e 2
conv.i.d
div.d.v
pushglb.v global.zoom
mul.v.v
pop.v.v builtin.paneBottomYTo
push.v builtin.paneBottomY
pop.v.v builtin.paneBottomYInit
push.v builtin.timerClosePane
dup.v 0 8
dup.v 0
push.v stacktop.reset
callv.v 0
popz.v
push.v builtin.timerClosePane
dup.v 0 8
dup.v 0
push.v stacktop.run
callv.v 0
popz.v
pushi.e 1
pop.v.b builtin.checkForShock

:[20]
push.v builtin.timerClosePane
dup.v 0 8
dup.v 0
push.v stacktop.is_running
callv.v 0
conv.v.b
bf [27]

:[21]
push.v builtin.timerClosePane
dup.v 0 8
dup.v 0
push.v stacktop.get_cur_length_normalize
callv.v 0
pop.v.v local._norm
push.v builtin.paneTopY
pop.v.v local._prevTopY
push.v builtin.paneTopYTo
push.v builtin.paneTopYInit
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
pushloc.v local._norm
call.i gml_Script_map_value(argc=5)
pop.v.v builtin.paneTopY
push.v builtin.paneBottomYTo
push.v builtin.paneBottomYInit
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
pushloc.v local._norm
call.i gml_Script_map_value(argc=5)
pop.v.v builtin.paneBottomY
pushloc.v local._prevTopY
push.v builtin.paneTopY
sub.v.v
call.i sign(argc=1)
conv.v.b
bf [23]

:[22]
push.v builtin.checkForShock
conv.v.b
b [24]

:[23]
push.e 0

:[24]
bf [26]

:[25]
pushi.e 3
conv.i.v
pushi.e 1
conv.i.v
call.i irandom_range(argc=2)
pushglb.v global.particles
pushi.e -9
push.v [stacktop]self.ptSparkBig
push.v builtin.pePane
pushglb.v global.particlesSys
call.i part_emitter_burst(argc=4)
popz.v
pushi.e 12
conv.i.v
pushi.e 4
conv.i.v
call.i choose(argc=2)
pushglb.v global.particles
pushi.e -9
push.v [stacktop]self.ptPaneBottom
push.v builtin.pePane
pushglb.v global.particlesSys
call.i part_emitter_burst(argc=4)
popz.v
pushi.e 12
conv.i.v
pushi.e 4
conv.i.v
call.i choose(argc=2)
pushglb.v global.particles
pushi.e -9
push.v [stacktop]self.ptPaneTop
push.v builtin.pePane
pushglb.v global.particlesSys
call.i part_emitter_burst(argc=4)
popz.v
pushi.e 0
pop.v.b builtin.checkForShock

:[26]
b [29]

:[27]
push.v builtin.timerClosePane
dup.v 0 8
dup.v 0
push.v stacktop.is_finished
callv.v 0
conv.v.b
bf [29]

:[28]
push.v builtin.paneTopYTo
pop.v.v builtin.paneTopY
push.v builtin.paneBottomYTo
pop.v.v builtin.paneBottomY

:[29]
push.v builtin.state
pop.v.v builtin.statePrev
push.v builtin.stateNext
pop.v.v builtin.state
push.v builtin.stateBearings
push.l 0
cmp.l.v EQ
bf [43]

:[30]
push.v builtin.stateBearingsPrev
push.v builtin.stateBearings
cmp.v.v NEQ
bf [31]

:[31]
pushi.e 0
pop.v.i local._step

:[32]
pushloc.v local._step
push.v builtin.bearingSpeed
cmp.v.v LT
bf [42]

:[33]
push.v builtin.bearingOffset
pushi.e 1
add.i.v
pop.v.v builtin.bearingOffset
push.v builtin.shouldBearingsStop
conv.v.b
bf [36]

:[34]
push.v builtin.bearingStopTurnCounter
pushi.e 1
add.i.v
pop.v.v builtin.bearingStopTurnCounter
push.v builtin.bearingStopTurnCounter
push.v builtin.bearingStopTurnMax
cmp.v.v GTE
bf [36]

:[35]
pushi.e 1
pop.v.b builtin.canBearingsStop

:[36]
push.v builtin.canBearingsStop
conv.v.b
bf [41]

:[37]
push.v builtin.bearingOffset
push.v builtin.heightItem
push.v builtin.bearingStopNbr
mul.v.v
add.v.v
push.v builtin.yModuloMax
mod.v.v
push.v builtin.yItemDrawMin
add.v.v
pop.v.v local._limit
pushloc.v local._limit
push.v builtin.bearingStopY
cmp.v.v EQ
bf [41]

:[38]
push.v builtin.bearingCallback
pushbltn.v builtin.undefined
cmp.v.v NEQ
bf [40]

:[39]
call.i @@This@@(argc=0)
push.v builtin.bearingCallback
callv.v 0
popz.v

:[40]
push.l 1
pop.v.l builtin.stateBearingsNext
b [42]

:[41]
push.v local._step
push.e 1
add.i.v
pop.v.v local._step
b [32]

:[42]
b [46]

:[43]
push.v builtin.stateBearings
push.l 1
cmp.l.v EQ
bf [46]

:[44]
push.v builtin.stateBearingsPrev
push.v builtin.stateBearings
cmp.v.v NEQ
bf [46]

:[45]
pushi.e 0
pop.v.b builtin.canBearingsStop
pushi.e 0
pop.v.b builtin.shouldBearingsStop
pushi.e 0
pop.v.i builtin.bearingStopTurnCounter

:[46]
pushi.e 83
conv.i.v
call.i keyboard_check_pressed(argc=1)
conv.v.b
bf [48]

:[47]
push.l 0
pop.v.l builtin.stateBearingsNext
push.v builtin.itemsList
call.i array_length(argc=1)
pushi.e 1
sub.i.v
pushi.e 0
conv.i.v
call.i random_range(argc=2)
call.i @@This@@(argc=0)
push.v builtin.stop_on_item_nbr
callv.v 1
popz.v

:[48]
push.v builtin.stateBearings
pop.v.v builtin.stateBearingsPrev
push.v builtin.stateBearingsNext
pop.v.v builtin.stateBearings

:[end]