:[0]
b [18]

> gml_Script___InputVibrateClassADSR (locals=0, argc=8)
:[1]
call.i @@SetStatic@@(argc=0)
isstaticok.e
bt [17]

:[2]
setstatic.e
b [16]

> gml_Script___Update@anon@619@__InputVibrateClassADSR@__InputVibrateClassADSR (locals=5, argc=0)
:[3]
pushbltn.v builtin.delta_time
pushi.e 1000
conv.i.d
div.d.v
pop.v.v local._timeStep
push.v builtin.__timeInPhase
pushloc.v local._timeStep
add.v.v
pop.v.v builtin.__timeInPhase
pushi.e 0
pop.v.i local._min
pushi.e 0
pop.v.i local._max
pushbltn.v builtin.infinity
pop.v.v local._phase_time
push.v builtin.__phase
dup.v 0
pushi.e 0
cmp.i.v EQ
bt [8]

:[4]
dup.v 0
pushi.e 1
cmp.i.v EQ
bt [9]

:[5]
dup.v 0
pushi.e 2
cmp.i.v EQ
bt [10]

:[6]
dup.v 0
pushi.e 3
cmp.i.v EQ
bt [11]

:[7]
b [12]

:[8]
pushi.e 0
pop.v.i local._min
pushi.e 1
pop.v.i local._max
push.v builtin.__attack
pop.v.v local._phase_time
b [12]

:[9]
pushi.e 1
pop.v.i local._min
push.v builtin.__sustainLevel
pop.v.v local._max
push.v builtin.__decay
pop.v.v local._phase_time
b [12]

:[10]
push.v builtin.__sustainLevel
pop.v.v local._min
push.v builtin.__sustainLevel
pop.v.v local._max
push.v builtin.__sustain
pop.v.v local._phase_time
b [12]

:[11]
push.v builtin.__sustainLevel
pop.v.v local._min
pushi.e 0
pop.v.i local._max
push.v builtin.__release
pop.v.v local._phase_time
b [12]

:[12]
popz.v
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
push.v builtin.__timeInPhase
pushloc.v local._phase_time
div.v.v
call.i clamp(argc=3)
pushloc.v local._max
pushloc.v local._min
call.i lerp(argc=3)
pop.v.v local._output
pushloc.v local._output
push.v builtin.__strengthLeft
mul.v.v
pop.v.v builtin.__outputLeft
pushloc.v local._output
push.v builtin.__strengthRight
mul.v.v
pop.v.v builtin.__outputRight
push.v builtin.__timeInPhase
pushloc.v local._timeStep
add.v.v
pop.v.v builtin.__timeInPhase
push.v builtin.__timeInPhase
pushloc.v local._phase_time
cmp.v.v GT
bf [14]

:[13]
push.v builtin.__timeInPhase
pushloc.v local._phase_time
sub.v.v
pop.v.v builtin.__timeInPhase
push.v builtin.__phase
push.e 1
add.i.v
pop.v.v builtin.__phase

:[14]
push.v builtin.__phase
pushi.e 3
cmp.i.v LTE
conv.b.v
ret.v

:[15]
exit.i

:[16]
push.i [function]gml_Script___Update@anon@619@__InputVibrateClassADSR@__InputVibrateClassADSR
conv.i.v
pushi.e -16
conv.i.v
call.i method(argc=2)
pop.v.v static.__Update

:[17]
push.v arg.argument7
pop.v.v builtin.__force
pushi.e 0
pop.v.i builtin.__outputLeft
pushi.e 0
pop.v.i builtin.__outputRight
push.v arg.argument0
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1
push.v arg.argument2
sub.v.i
call.i clamp(argc=3)
mul.v.v
pop.v.v builtin.__strengthLeft
push.v arg.argument0
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1
push.v arg.argument2
add.v.i
call.i clamp(argc=3)
mul.v.v
pop.v.v builtin.__strengthRight
push.v arg.argument1
pop.v.v builtin.__sustainLevel
push.v arg.argument2
pop.v.v builtin.__pan
push.v arg.argument3
pop.v.v builtin.__attack
push.v arg.argument4
pop.v.v builtin.__decay
push.v arg.argument5
pop.v.v builtin.__sustain
push.v arg.argument6
pop.v.v builtin.__release
pushi.e 0
pop.v.i builtin.__phase
pushi.e 0
pop.v.i builtin.__timeInPhase
exit.i

:[18]
push.i [function]gml_Script___InputVibrateClassADSR
conv.i.v
call.i @@NullObject@@(argc=0)
call.i method(argc=2)
dup.v 0
pop.v.v self.__InputVibrateClassADSR
popz.v

:[end]