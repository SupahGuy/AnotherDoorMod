:[0]
push.s "goingTop"@9574
conv.s.v
push.v builtin.id
call.i variable_instance_exists(argc=2)
conv.v.b
not.b
bf [2]

:[1]
pushi.e 1
pop.v.b builtin.goingTop

:[2]
push.v builtin.x
pop.v.v builtin.xInit
push.v builtin.y
pop.v.v builtin.yInit
push.v builtin.label
call.i gml_Script_scribble(argc=1)
dup.v 0
pushi.e -9
push.v [stacktop]self.align
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
dup.e 2 16
callv.v 2
pop.v.v builtin.theText
push.s "ease-out"@8749
conv.s.v
pushbltn.v builtin.undefined
pushbltn.v builtin.undefined
push.d 0.75
conv.d.v
push.v builtin.id
push.i [function]gml_Script_myTimer
conv.i.v
call.i @@NewGMLObject@@(argc=6)
pop.v.v builtin.timerFloat
push.v builtin.timerFloat
dup.v 0 8
dup.v 0
push.v stacktop.run
callv.v 0
popz.v

:[end]