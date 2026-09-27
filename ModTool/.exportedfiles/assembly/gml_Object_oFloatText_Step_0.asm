; WARNING: Missing code locals, possibly due to unsupported bytecode version or a brand new code entry.

:[0]
push.v builtin.timerAll
dup.v 0 8
dup.v 0
push.v stacktop.get_cur_length_normalize
callv.v 0
pop.v.v local._normTimerAll
push.v builtin.yTo
push.v builtin.yInit
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
pushloc.v local._normTimerAll
call.i gml_Script_map_value(argc=5)
pop.v.v builtin.y
push.v builtin.xTo
push.v builtin.xInit
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
pushloc.v local._normTimerAll
call.i gml_Script_map_value(argc=5)
pop.v.v builtin.x
pushi.e 4
push.v builtin.theSprite
pushi.e -1
cmp.i.v NEQ
bf [2]

:[1]
push.v builtin.sprW
b [3]

:[2]
pushi.e 0
conv.i.v

:[3]
add.v.i
push.v builtin.labelDrawW
pushglb.v global.zoom
div.v.v
pushi.e 2
conv.i.d
div.d.v
add.v.v
pop.v.v local._xMin
pushbltn.v builtin.room_width
pushi.e 4
sub.i.v
push.v builtin.labelDrawW
pushglb.v global.zoom
div.v.v
pushi.e 2
conv.i.d
div.d.v
sub.v.v
pop.v.v local._xMax
pushloc.v local._xMax
pushloc.v local._xMin
push.v builtin.x
call.i clamp(argc=3)
pop.v.v builtin.x
push.d 0.1
conv.d.v
push.v builtin.yInitTo
push.v builtin.yInit
call.i lerp(argc=3)
pop.v.v builtin.yInit
push.v builtin.timerWaitinglist
dup.v 0 8
dup.v 0
push.v stacktop.is_finished
callv.v 0
conv.v.b
bf [5]

:[4]
pushglb.v global.waitingList
push.v builtin.id
dup.v 1 8
dup.v 0
push.v stacktop.remove
callv.v 1
popz.v

:[5]
push.v builtin.state
push.l 0
cmp.l.v EQ
bf [18]

:[6]
push.v builtin.statePrev
push.v builtin.state
cmp.v.v NEQ
bf [8]

:[7]
push.v builtin.timerAppear
dup.v 0 8
dup.v 0
push.v stacktop.run
callv.v 0
popz.v

:[8]
push.v builtin.category
push.l 1
cmp.l.v EQ
bf [10]

:[9]
push.v builtin.timerAppear
dup.v 0 8
dup.v 0
push.v stacktop.get_cur_length_normalize
callv.v 0
pop.v.v local._length
push.v builtin.scaleTo
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
pushloc.v local._length
call.i gml_Script_map_value(argc=5)
pop.v.v builtin.scaleCur
b [15]

:[10]
push.v builtin.category
push.l 2
cmp.l.v EQ
bt [12]

:[11]
push.v builtin.category
push.l 0
cmp.l.v EQ
b [13]

:[12]
push.e 1

:[13]
bf [15]

:[14]
push.v builtin.timerAppear
dup.v 0 8
dup.v 0
push.v stacktop.get_cur_length_normalize
callv.v 0
pop.v.v local._length
push.v builtin.scaleTo
push.v builtin.scaleInit
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
pushloc.v local._length
call.i gml_Script_map_value(argc=5)
pop.v.v builtin.scaleCur

:[15]
push.v builtin.timerAppear
dup.v 0 8
dup.v 0
push.v stacktop.is_finished
callv.v 0
conv.v.b
bf [17]

:[16]
push.l 1
pop.v.l builtin.stateNext

:[17]
b [38]

:[18]
push.v builtin.state
push.l 1
cmp.l.v EQ
bf [24]

:[19]
push.v builtin.statePrev
push.v builtin.state
cmp.v.v NEQ
bf [21]

:[20]
push.v builtin.timerWait
dup.v 0 8
dup.v 0
push.v stacktop.run
callv.v 0
popz.v

:[21]
push.v builtin.timerWait
dup.v 0 8
dup.v 0
push.v stacktop.is_finished
callv.v 0
conv.v.b
bf [23]

:[22]
push.l 2
pop.v.l builtin.stateNext

:[23]
b [38]

:[24]
push.v builtin.state
push.l 2
cmp.l.v EQ
bf [35]

:[25]
push.v builtin.statePrev
push.v builtin.state
cmp.v.v NEQ
bf [27]

:[26]
push.v builtin.timerDisappear
dup.v 0 8
dup.v 0
push.v stacktop.run
callv.v 0
popz.v

:[27]
push.v builtin.timerDisappear
dup.v 0 8
dup.v 0
push.v stacktop.is_running
callv.v 0
conv.v.b
bt [29]

:[28]
push.v builtin.timerDisappear
dup.v 0 8
dup.v 0
push.v stacktop.is_finished
callv.v 0
conv.v.b
b [30]

:[29]
push.e 1

:[30]
bf [32]

:[31]
push.v builtin.timerDisappear
dup.v 0 8
dup.v 0
push.v stacktop.get_cur_length_normalize
callv.v 0
pop.v.v local._norm
pushi.e 1
pushloc.v local._norm
sub.v.i
pop.v.v builtin.image_alpha

:[32]
push.v builtin.timerDisappear
dup.v 0 8
dup.v 0
push.v stacktop.is_finished
callv.v 0
conv.v.b
bf [34]

:[33]
push.l 3
pop.v.l builtin.stateNext

:[34]
b [38]

:[35]
push.v builtin.state
push.l 3
cmp.l.v EQ
bf [38]

:[36]
push.v builtin.statePrev
push.v builtin.state
cmp.v.v NEQ
bf [38]

:[37]
call.i instance_destroy(argc=0)
popz.v

:[38]
push.v builtin.state
pop.v.v builtin.statePrev
push.v builtin.stateNext
pop.v.v builtin.state

:[end]