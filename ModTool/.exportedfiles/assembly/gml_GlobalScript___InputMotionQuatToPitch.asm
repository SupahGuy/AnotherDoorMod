:[0]
b [3]

> gml_Script___InputMotionQuatToPitch (locals=0, argc=4)
:[1]
pushi.e 1
conv.i.v
pushi.e -1
conv.i.v
pushi.e 2
push.v arg.argument3
push.v arg.argument1
mul.v.v
push.v arg.argument2
push.v arg.argument0
mul.v.v
sub.v.v
mul.v.i
call.i clamp(argc=3)
call.i darcsin(argc=1)
ret.v

:[2]
exit.i

:[3]
push.i [function]gml_Script___InputMotionQuatToPitch
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pop.v.v self.__InputMotionQuatToPitch
popz.v

:[end]