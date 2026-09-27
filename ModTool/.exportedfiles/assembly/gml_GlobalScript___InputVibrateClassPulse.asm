:[0]
b [7]

> gml_Script___InputVibrateClassPulse (locals=0, argc=5)
:[1]
call.i @@SetStatic@@(argc=0)
isstaticok.e
bt [6]

:[2]
setstatic.e
b [5]

> gml_Script___Update@anon@433@__InputVibrateClassPulse@__InputVibrateClassPulse (locals=2, argc=0)
:[3]
push.v builtin.__time
pushbltn.v builtin.delta_time
pushi.e 1000
conv.i.d
div.d.v
add.v.v
pop.v.v builtin.__time
push.v builtin.__time
push.v builtin.__duration
div.v.v
pop.v.v local._t
push.d 0.5
push.d 0.5
pushloc.v local._t
pushi.e 360
push.v builtin.__repeats
mul.v.i
pushi.e 180
sub.i.v
mul.v.v
call.i dsin(argc=1)
mul.v.d
add.v.d
pop.v.v local._output
pushloc.v local._output
push.v builtin.__strengthLeft
mul.v.v
pop.v.v builtin.__outputLeft
pushloc.v local._output
push.v builtin.__strengthRight
mul.v.v
pop.v.v builtin.__outputRight
push.v builtin.__time
push.v builtin.__duration
cmp.v.v LT
conv.b.v
ret.v

:[4]
exit.i

:[5]
push.i [function]gml_Script___Update@anon@433@__InputVibrateClassPulse@__InputVibrateClassPulse
conv.i.v
pushi.e -16
conv.i.v
call.i method(argc=2)
pop.v.v static.__Update

:[6]
push.v arg.argument4
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
push.v arg.argument1
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
push.v arg.argument1
add.v.i
call.i clamp(argc=3)
mul.v.v
pop.v.v builtin.__strengthRight
push.v arg.argument2
pop.v.v builtin.__repeats
pushi.e 0
pop.v.i builtin.__time
push.v arg.argument3
pop.v.v builtin.__duration
exit.i

:[7]
push.i [function]gml_Script___InputVibrateClassPulse
conv.i.v
call.i @@NullObject@@(argc=0)
call.i method(argc=2)
dup.v 0
pop.v.v self.__InputVibrateClassPulse
popz.v

:[end]