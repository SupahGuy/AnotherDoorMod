:[0]
b [7]

> gml_Script___InputVibrateClassConstant (locals=0, argc=4)
:[1]
call.i @@SetStatic@@(argc=0)
isstaticok.e
bt [6]

:[2]
setstatic.e
b [5]

> gml_Script___Update@anon@414@__InputVibrateClassConstant@__InputVibrateClassConstant (locals=0, argc=0)
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
cmp.v.v LT
conv.b.v
ret.v

:[4]
exit.i

:[5]
push.i [function]gml_Script___Update@anon@414@__InputVibrateClassConstant@__InputVibrateClassConstant
conv.i.v
pushi.e -16
conv.i.v
call.i method(argc=2)
pop.v.v static.__Update

:[6]
push.v arg.argument3
pop.v.v builtin.__force
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
pop.v.v builtin.__outputLeft
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
pop.v.v builtin.__outputRight
pushi.e 0
pop.v.i builtin.__time
push.v arg.argument2
pop.v.v builtin.__duration
exit.i

:[7]
push.i [function]gml_Script___InputVibrateClassConstant
conv.i.v
call.i @@NullObject@@(argc=0)
call.i method(argc=2)
dup.v 0
pop.v.v self.__InputVibrateClassConstant
popz.v

:[end]