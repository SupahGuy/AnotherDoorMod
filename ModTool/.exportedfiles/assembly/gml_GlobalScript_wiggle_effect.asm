:[0]
b [22]

> gml_Script_WiggleEffect (locals=0, argc=2)
:[1]
pushbltn.v builtin.argument1
pushbltn.v builtin.undefined
cmp.v.v EQ
bf [3]

:[2]
push.l 0
pop.v.l builtin.argument1

:[3]
call.i @@SetStatic@@(argc=0)
push.v arg.argument1
pop.v.v builtin.offsetAngleType
pushi.e 0
pop.v.i builtin.offsetAngleMax
pushi.e 0
pop.v.i builtin.offsetAngleMin
push.v builtin.offsetAngleType
push.l 0
cmp.l.v EQ
bf [5]

:[4]
pushi.e 6
pop.v.i builtin.offsetAngleMax
pushi.e 3
pop.v.i builtin.offsetAngleMin
b [7]

:[5]
push.v builtin.offsetAngleType
push.l 1
cmp.l.v EQ
bf [7]

:[6]
pushi.e 20
pop.v.i builtin.offsetAngleMax
pushi.e 16
pop.v.i builtin.offsetAngleMin

:[7]
push.v builtin.offsetAngleMax
push.v builtin.offsetAngleMin
call.i random_range(argc=2)
pushi.e -1
conv.i.v
pushi.e 1
conv.i.v
call.i choose(argc=2)
mul.v.v
pop.v.v builtin.offsetWiggleAngleMax
pushi.e 0
pop.v.i builtin.offsetWiggleAngle
push.s "curve1"@8565
conv.s.v
pushbltn.v builtin.undefined
pushbltn.v builtin.undefined
push.d 0.2
conv.d.v
push.v arg.argument0
push.i [function]gml_Script_myTimer
conv.i.v
call.i @@NewGMLObject@@(argc=6)
pop.v.v builtin.animWiggle
b [9]

> gml_Script_anon@730@WiggleEffect@wiggle_effect (locals=0, argc=0)
:[8]
push.v builtin.animWiggle
dup.v 0 8
dup.v 0
push.v stacktop.reset
callv.v 0
popz.v
push.v builtin.animWiggle
dup.v 0 8
dup.v 0
push.v stacktop.run
callv.v 0
popz.v
exit.i

:[9]
push.i [function]gml_Script_anon@730@WiggleEffect@wiggle_effect
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
pop.v.v builtin.run
b [18]

> gml_Script_anon@806@WiggleEffect@wiggle_effect (locals=0, argc=0)
:[10]
push.v builtin.animWiggle
dup.v 0 8
dup.v 0
push.v stacktop.is_running
callv.v 0
conv.v.b
bt [12]

:[11]
push.v builtin.animWiggle
dup.v 0 8
dup.v 0
push.v stacktop.is_finished
callv.v 0
conv.v.b
b [13]

:[12]
push.e 1

:[13]
bf [15]

:[14]
push.v builtin.offsetWiggleAngleMax
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
push.v builtin.animWiggle
dup.v 0 8
dup.v 0
push.v stacktop.get_cur_length_normalize
callv.v 0
call.i gml_Script_map_value(argc=5)
pop.v.v builtin.offsetWiggleAngle

:[15]
push.v builtin.animWiggle
dup.v 0 8
dup.v 0
push.v stacktop.is_finished
callv.v 0
conv.v.b
bf [17]

:[16]
push.v builtin.animWiggle
dup.v 0 8
dup.v 0
push.v stacktop.reset
callv.v 0
popz.v
push.v builtin.offsetAngleMax
push.v builtin.offsetAngleMin
call.i random_range(argc=2)
pushi.e -1
conv.i.v
pushi.e 1
conv.i.v
call.i choose(argc=2)
mul.v.v
pop.v.v builtin.offsetWiggleAngleMax

:[17]
exit.i

:[18]
push.i [function]gml_Script_anon@806@WiggleEffect@wiggle_effect
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
pop.v.v builtin.step
b [21]

> gml_Script_anon@1205@WiggleEffect@wiggle_effect (locals=0, argc=0)
:[19]
push.v builtin.offsetWiggleAngle
ret.v

:[20]
exit.i

:[21]
push.i [function]gml_Script_anon@1205@WiggleEffect@wiggle_effect
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
pop.v.v builtin.get_angle
exit.i

:[22]
push.i [function]gml_Script_WiggleEffect
conv.i.v
call.i @@NullObject@@(argc=0)
call.i method(argc=2)
dup.v 0
pop.v.v self.WiggleEffect
popz.v

:[end]