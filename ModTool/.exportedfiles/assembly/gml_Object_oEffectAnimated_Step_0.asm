; WARNING: Missing code locals, possibly due to unsupported bytecode version or a brand new code entry.

:[0]
push.v builtin.state
push.l 0
cmp.l.v EQ
bf [18]

:[1]
push.v builtin.statePrev
push.v builtin.state
cmp.v.v NEQ
bf [3]

:[2]
push.v builtin.timerAppear
dup.v 0 8
dup.v 0
push.v stacktop.run
callv.v 0
popz.v

:[3]
push.v builtin.timerAppear
dup.v 0 8
dup.v 0
push.v stacktop.is_running
callv.v 0
conv.v.b
bt [5]

:[4]
push.v builtin.timerAppear
dup.v 0 8
dup.v 0
push.v stacktop.is_finished
callv.v 0
conv.v.b
b [6]

:[5]
push.e 1

:[6]
bf [8]

:[7]
push.v builtin.timerAppear
dup.v 0 8
dup.v 0
push.v stacktop.is_delay_running
callv.v 0
conv.v.b
not.b
b [9]

:[8]
push.e 0

:[9]
bf [11]

:[10]
push.v builtin.timerAppear
dup.v 0 8
dup.v 0
push.v stacktop.get_cur_length_normalize
callv.v 0
pop.v.v local._norm
pushi.e 1
pop.v.i builtin.image_alpha
push.v builtin.xTo
push.v builtin.xInit
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
pushloc.v local._norm
call.i gml_Script_map_value(argc=5)
pop.v.v builtin.x
pushi.e 2
conv.i.v
pushi.e 1
pushloc.v local._norm
sub.v.i
call.i power(argc=2)
push.v builtin.yInit
mul.v.v
pushi.e 2
pushi.e 1
pushloc.v local._norm
sub.v.i
mul.v.i
pushloc.v local._norm
mul.v.v
push.v builtin.y3
mul.v.v
add.v.v
pushi.e 2
conv.i.v
pushloc.v local._norm
call.i power(argc=2)
push.v builtin.yTo
mul.v.v
add.v.v
pop.v.v builtin.y

:[11]
push.v builtin.timerAppear
dup.v 0 8
dup.v 0
push.v stacktop.is_finished
callv.v 0
conv.v.b
bf [17]

:[12]
push.v builtin.timerAppear
dup.v 0 8
dup.v 0
push.v stacktop.reset
callv.v 0
popz.v
push.l 1
pop.v.l builtin.stateNext
pushglb.v global.waitingList
push.v builtin.id
dup.v 1 8
dup.v 0
push.v stacktop.remove
callv.v 1
popz.v
push.v builtin.linkedTo
pushi.e -9
pushenv [16]

:[13]
pushi.e 0
pop.v.b builtin.firstCreationVisual
push.v builtin.stackVisual
push.e 1
add.i.v
pop.v.v builtin.stackVisual
pushglb.v global.playersManager
push.v builtin.number
dup.v 1 8
dup.v 0
push.v stacktop.get_characters
callv.v 1
pop.v.v local._char
pushloc.v local._char
pushi.e -4
cmp.i.v NEQ
bf [16]

:[14]
push.l 0
conv.l.v
push.v builtin.theStruct
push.v builtin.id
push.l 35
conv.l.v
pushloc.v local._char
call.i gml_Script_execute_effect(argc=5)
popz.v
call.i @@This@@(argc=0)
push.v builtin.update_txt
callv.v 0
popz.v
push.v builtin.theStruct
pushi.e -9
push.v [stacktop]self.structName
push.s "hallucinogenicVision"@4837
cmp.s.v EQ
bf [16]

:[15]
pushloc.v local._char
pushi.e -9
push.v [stacktop]self.spriteProfileMushroom
pushloc.v local._char
pushi.e -9
pop.v.v [stacktop]self.spriteProfile
pushloc.v local._char
pushi.e -9
push.v [stacktop]self.spriteProfileHpHiddenMushroom
pushloc.v local._char
pushi.e -9
pop.v.v [stacktop]self.spriteProfileHpHidden
pushloc.v local._char
pushi.e -9
push.v [stacktop]self.spriteProfileBoxGemMushroom
pushloc.v local._char
pushi.e -9
pop.v.v [stacktop]self.spriteProfileBoxGem

:[16]
popenv [13]

:[17]
b [50]

:[18]
push.v builtin.state
push.l 1
cmp.l.v EQ
bf [29]

:[19]
push.v builtin.statePrev
push.v builtin.state
cmp.v.v NEQ
bf [21]

:[20]
push.v builtin.animationExecute
dup.v 0 8
dup.v 0
push.v stacktop.run
callv.v 0
popz.v

:[21]
push.v builtin.animationExecute
dup.v 0 8
dup.v 0
push.v stacktop.is_running
callv.v 0
conv.v.b
bt [23]

:[22]
push.v builtin.animationExecute
dup.v 0 8
dup.v 0
push.v stacktop.is_finished
callv.v 0
conv.v.b
b [24]

:[23]
push.e 1

:[24]
bf [26]

:[25]
push.v builtin.executeScaleMax
push.v builtin.executeScaleInit
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
push.v builtin.animationExecute
dup.v 0 8
dup.v 0
push.v stacktop.get_cur_length_normalize
callv.v 0
call.i gml_Script_map_value(argc=5)
pop.v.v builtin.executeScale
pushi.e 1
push.v builtin.animationExecute
dup.v 0 8
dup.v 0
push.v stacktop.get_cur_length_normalize
callv.v 0
sub.v.i
pop.v.v builtin.executeAlpha

:[26]
push.v builtin.animationExecute
dup.v 0 8
dup.v 0
push.v stacktop.is_finished
callv.v 0
conv.v.b
bf [28]

:[27]
push.v builtin.animationExecute
dup.v 0 8
dup.v 0
push.v stacktop.reset
callv.v 0
popz.v
call.i instance_destroy(argc=0)
popz.v

:[28]
b [50]

:[29]
push.v builtin.state
push.l 2
cmp.l.v EQ
bf [50]

:[30]
push.v builtin.statePrev
push.v builtin.state
cmp.v.v NEQ
bf [32]

:[31]
push.v builtin.timerDecrease
dup.v 0 8
dup.v 0
push.v stacktop.run
callv.v 0
popz.v
pushi.e 1
pop.v.i builtin.image_alpha

:[32]
push.v builtin.timerDecrease
dup.v 0 8
dup.v 0
push.v stacktop.is_running
callv.v 0
conv.v.b
bf [34]

:[33]
push.v builtin.timerDecrease
dup.v 0 8
dup.v 0
push.v stacktop.is_delay_running
callv.v 0
conv.v.b
not.b
b [35]

:[34]
push.e 0

:[35]
bf [40]

:[36]
push.v builtin.delayActionPlayed
conv.v.b
not.b
bf [39]

:[37]
pushi.e 1
pop.v.b builtin.delayActionPlayed
push.v builtin.linkedTo
call.i instance_exists(argc=1)
conv.v.b
bf [39]

:[38]
push.v builtin.linkedTo
pushi.e -9
dup.i 4
push.v [stacktop]self.stackVisual
push.e 1
sub.i.v
pop.i.v [stacktop]self.stackVisual
push.v builtin.linkedTo
dup.v 0 8
dup.v 0
push.v stacktop.update_txt
callv.v 0
popz.v

:[39]
push.v builtin.timerDecrease
dup.v 0 8
dup.v 0
push.v stacktop.get_cur_length_normalize
callv.v 0
pop.v.v local._norm
push.v builtin.decreaseYTo
push.v builtin.decreaseYInit
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
pushloc.v local._norm
call.i gml_Script_map_value(argc=5)
pop.v.v builtin.y
pushi.e 1
pushloc.v local._norm
sub.v.i
pop.v.v builtin.decreaseAlpha

:[40]
push.v builtin.timerDecrease
dup.v 0 8
dup.v 0
push.v stacktop.is_finished
callv.v 0
conv.v.b
bf [50]

:[41]
push.v builtin.linkedTo
pushi.e -9
pushenv [49]

:[42]
push.v builtin.stackVisual
pushi.e 0
cmp.i.v LTE
bf [49]

:[43]
pushglb.v global.playersManager
push.v builtin.number
dup.v 1 8
dup.v 0
push.v stacktop.get_characters
callv.v 1
pop.v.v local._char
pushloc.v local._char
pushi.e -4
cmp.i.v NEQ
bf [45]

:[44]
pushloc.v local._char
call.i instance_exists(argc=1)
conv.v.b
b [46]

:[45]
push.e 0

:[46]
bf [49]

:[47]
push.l 0
conv.l.v
push.v builtin.theStruct
push.v builtin.id
push.l 36
conv.l.v
pushloc.v local._char
call.i gml_Script_execute_effect(argc=5)
popz.v
pushloc.v local._char
push.v builtin.theStruct
dup.v 1 8
dup.v 0
push.v stacktop.effect_index
callv.v 1
pop.v.v local._index
pushloc.v local._index
pushi.e -1
cmp.i.v NEQ
bf [49]

:[48]
pushloc.v local._char
pushloc.v local._index
pushi.e 1
conv.b.v
pushbltn.v builtin.undefined
dup.v 3 8
dup.v 0
push.v stacktop.delete_effect
callv.v 3
popz.v

:[49]
popenv [42]
pushglb.v global.waitingList
push.v builtin.id
dup.v 1 8
dup.v 0
push.v stacktop.remove
callv.v 1
popz.v
call.i instance_destroy(argc=0)
popz.v

:[50]
push.v builtin.state
pop.v.v builtin.statePrev
push.v builtin.stateNext
pop.v.v builtin.state

:[end]