:[0]
b [13]

> gml_Script___InputVibrateClassCurve (locals=0, argc=5)
:[1]
call.i @@SetStatic@@(argc=0)
isstaticok.e
bt [12]

:[2]
setstatic.e
b [11]

> gml_Script___Update@anon@431@__InputVibrateClassCurve@__InputVibrateClassCurve (locals=4, argc=0)
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
push.v builtin.__curve
pushi.e -9
push.v [stacktop]self.channels
call.i array_length(argc=1)
pop.v.v local._count
pushloc.v local._count
pushi.e 1
cmp.i.v EQ
bf [5]

:[4]
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
pushloc.v local._t
pushi.e 0
conv.i.v
push.v builtin.__curve
call.i animcurve_get_channel(argc=2)
call.i animcurve_channel_evaluate(argc=2)
call.i clamp(argc=3)
pop.v.v builtin.__outputLeft
push.v builtin.__outputLeft
pop.v.v builtin.__outputRight
b [9]

:[5]
pushi.e 0
conv.i.v
push.v builtin.__curve
call.i animcurve_get_channel(argc=2)
push.v builtin.__curve
call.i animcurve_get_channel(argc=2)
pop.v.v local._left
pushi.e 1
conv.i.v
push.v builtin.__curve
call.i animcurve_get_channel(argc=2)
push.v builtin.__curve
call.i animcurve_get_channel(argc=2)
pop.v.v local._right
pushloc.v local._left
pushi.e -1
cmp.i.v NEQ
bf [7]

:[6]
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
pushloc.v local._t
pushloc.v local._left
call.i animcurve_channel_evaluate(argc=2)
call.i clamp(argc=3)
pop.v.v builtin.__outputLeft

:[7]
pushloc.v local._right
pushi.e -1
cmp.i.v NEQ
bf [9]

:[8]
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
pushloc.v local._t
pushloc.v local._right
call.i animcurve_channel_evaluate(argc=2)
call.i clamp(argc=3)
pop.v.v builtin.__outputRight

:[9]
push.v builtin.__outputLeft
push.v builtin.__strengthLeft
mul.v.v
pop.v.v builtin.__outputLeft
push.v builtin.__outputRight
push.v builtin.__strengthRight
mul.v.v
pop.v.v builtin.__outputRight
push.v builtin.__time
push.v builtin.__duration
cmp.v.v LT
conv.b.v
ret.v

:[10]
exit.i

:[11]
push.i [function]gml_Script___Update@anon@431@__InputVibrateClassCurve@__InputVibrateClassCurve
conv.i.v
pushi.e -16
conv.i.v
call.i method(argc=2)
pop.v.v static.__Update

:[12]
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
pop.v.v builtin.__curve
pushi.e 0
pop.v.i builtin.__time
push.v arg.argument3
pop.v.v builtin.__duration
exit.i

:[13]
push.i [function]gml_Script___InputVibrateClassCurve
conv.i.v
call.i @@NullObject@@(argc=0)
call.i method(argc=2)
dup.v 0
pop.v.v self.__InputVibrateClassCurve
popz.v

:[end]