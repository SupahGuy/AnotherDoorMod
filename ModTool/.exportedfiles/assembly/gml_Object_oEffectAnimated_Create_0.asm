:[0]
push.s "linkedTo"@9218
conv.s.v
push.v builtin.id
call.i variable_instance_exists(argc=2)
conv.v.b
not.b
bf [2]

:[1]
pushi.e -4
pop.v.i builtin.linkedTo

:[2]
push.s "appearDelay"@9219
conv.s.v
push.v builtin.id
call.i variable_instance_exists(argc=2)
conv.v.b
not.b
bf [4]

:[3]
pushi.e 0
pop.v.i builtin.appearDelay

:[4]
push.s "ease-in-out"@8753
conv.s.v
pushbltn.v builtin.undefined
push.v builtin.appearDelay
pushglb.v global.vfxEffectSpeed
div.v.v
push.d 0.5
pushglb.v global.vfxEffectSpeed
div.v.d
push.v builtin.id
push.i [function]gml_Script_myTimer
conv.i.v
call.i @@NewGMLObject@@(argc=6)
pop.v.v builtin.timerAppear
push.s "ease-out"@8749
conv.s.v
pushbltn.v builtin.undefined
pushbltn.v builtin.undefined
push.d 0.5
pushglb.v global.vfxEffectSpeed
div.v.d
push.v builtin.id
push.i [function]gml_Script_myTimer
conv.i.v
call.i @@NewGMLObject@@(argc=6)
pop.v.v builtin.animationExecute
pushi.e 1
pop.v.i builtin.executeScale
pushi.e 1
pop.v.i builtin.executeScaleInit
pushi.e 3
pop.v.i builtin.executeScaleMax
pushi.e 1
pop.v.i builtin.executeAlpha
push.s "ease-in-out"@8753
conv.s.v
pushbltn.v builtin.undefined
push.v builtin.appearDelay
pushglb.v global.vfxEffectSpeed
div.v.v
push.d 0.75
pushglb.v global.vfxEffectSpeed
div.v.d
push.v builtin.id
push.i [function]gml_Script_myTimer
conv.i.v
call.i @@NewGMLObject@@(argc=6)
pop.v.v builtin.timerDecrease
push.v builtin.y
pop.v.v builtin.decreaseYInit
push.v builtin.y
pushi.e 12
add.i.v
pop.v.v builtin.decreaseYTo
pushi.e 1
pop.v.i builtin.decreaseAlpha
push.v builtin.x
pop.v.v builtin.xInit
push.v builtin.y
pop.v.v builtin.yInit
push.v builtin.xInit
push.v builtin.xTo
add.v.v
pushi.e 2
conv.i.d
div.d.v
pushi.e 128
sub.i.v
pop.v.v builtin.x3
push.v builtin.yInit
push.v builtin.yTo
add.v.v
pushi.e 2
conv.i.d
div.d.v
pushi.e 128
sub.i.v
pop.v.v builtin.y3
pushi.e 0
pop.v.b builtin.delayActionPlayed
pushglb.v global.waitingList
push.v builtin.id
dup.v 1 8
dup.v 0
push.v stacktop.set
callv.v 1
popz.v
pushi.e 0
pop.v.i builtin.image_alpha
pushbltn.v builtin.undefined
pop.v.v builtin.state
pushbltn.v builtin.undefined
pop.v.v builtin.statePrev
push.s "stateNext"@4982
conv.s.v
push.v builtin.id
call.i variable_instance_exists(argc=2)
conv.v.b
not.b
bf [end]

:[5]
push.l 0
pop.v.l builtin.stateNext

:[end]