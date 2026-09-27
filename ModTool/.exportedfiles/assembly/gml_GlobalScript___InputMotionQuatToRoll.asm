:[0]
b [3]

> gml_Script___InputMotionQuatToRoll (locals=0, argc=4)
:[1]
pushi.e 1
pushi.e 2
push.v arg.argument0
push.v arg.argument0
mul.v.v
push.v arg.argument1
push.v arg.argument1
mul.v.v
add.v.v
mul.v.i
sub.v.i
pushi.e 2
push.v arg.argument3
push.v arg.argument0
mul.v.v
push.v arg.argument1
push.v arg.argument2
mul.v.v
add.v.v
mul.v.i
call.i darctan2(argc=2)
ret.v

:[2]
exit.i

:[3]
push.i [function]gml_Script___InputMotionQuatToRoll
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pop.v.v self.__InputMotionQuatToRoll
popz.v

:[end]