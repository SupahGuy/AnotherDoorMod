; WARNING: Missing code locals, possibly due to unsupported bytecode version or a brand new code entry.

:[0]
push.v builtin.numberMax
pushi.e 100
conv.i.d
div.d.v
pushi.e 1
conv.i.v
call.i min(argc=2)
pop.v.v local._multiCalc
push.s "ease-in-out"@8753
conv.s.v
pushbltn.v builtin.undefined
pushbltn.v builtin.undefined
push.d 1.5
pushglb.v global.vfxEffectSpeed
div.v.d
push.v builtin.id
push.i [function]gml_Script_myTimer
conv.i.v
call.i @@NewGMLObject@@(argc=6)
pop.v.v builtin.timerAppear
push.v builtin.timerAppear
dup.v 0 8
dup.v 0
push.v stacktop.run
callv.v 0
popz.v
push.v builtin.x
pop.v.v builtin.xInit
push.v builtin.y
pop.v.v builtin.yInit
pushi.e 64
pop.v.i local._rangeMaxOffset
pushloc.v local._rangeMaxOffset
pushloc.v local._multiCalc
mul.v.v
pushloc.v local._rangeMaxOffset
neg.v
pushloc.v local._multiCalc
mul.v.v
call.i irandom_range(argc=2)
pop.v.v local._xOffset
pushloc.v local._rangeMaxOffset
pushloc.v local._multiCalc
mul.v.v
pushloc.v local._rangeMaxOffset
neg.v
pushloc.v local._multiCalc
mul.v.v
call.i irandom_range(argc=2)
pop.v.v local._yOffset
push.v builtin.xInit
push.v builtin.xTo
add.v.v
pushi.e 2
conv.i.d
div.d.v
pushloc.v local._xOffset
add.v.v
pop.v.v builtin.x3
push.v builtin.yInit
push.v builtin.yTo
add.v.v
pushi.e 2
conv.i.d
div.d.v
pushloc.v local._yOffset
add.v.v
pop.v.v builtin.y3
push.v builtin.idSender
pushi.e -1
cmp.i.v NEQ
bf [3]

:[1]
push.v builtin.idSender
call.i instance_exists(argc=1)
conv.v.b
bf [3]

:[2]
push.v builtin.idSender
dup.v 0 8
dup.v 0
push.v stacktop.delete_gem_callback
callv.v 0
popz.v

:[3]
pushglb.v global.particlesSys
call.i part_emitter_create(argc=1)
pop.v.v builtin.peGemAdd
pushglb.v global.particlesSys
push.l 5
conv.l.v
push.v builtin.peGemAdd
call.i gml_Script_add_to_clean_up(argc=3)
popz.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
push.v builtin.y
pushi.e 1
add.i.v
push.v builtin.y
pushi.e 1
sub.i.v
push.v builtin.x
pushi.e 1
add.i.v
push.v builtin.x
pushi.e 1
sub.i.v
push.v builtin.peGemAdd
pushglb.v global.particlesSys
call.i part_emitter_region(argc=8)
popz.v
pushi.e -2
conv.i.v
pushglb.v global.particles
pushi.e -9
push.v [stacktop]self.ptGemAdd
push.v builtin.peGemAdd
pushglb.v global.particlesSys
call.i part_emitter_stream(argc=4)
popz.v

:[end]